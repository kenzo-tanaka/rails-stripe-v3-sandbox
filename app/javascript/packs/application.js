// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require('dotenv').config()

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// for stripe
const form = document.querySelector("#payment-form")

if (form){
    const public_key = process.env.STRIPE_PUBLIC_KEY
    const stripe = Stripe(public_key)
    const elements = stripe.elements()
    const card = elements.create('card', { hidePostalCode: true})
    card.mount('#card-element')

    card.addEventListener("change", (event) => {
        const displayError = document.getElementById("card-errors")
        if (event.error){
            displayError.textContent = event.error.message
        } else {
            displayError.textContent = ""
        }
    })

    form.addEventListener("submit", (event) => {
        event.preventDefault()
        let data = {
            payment_method: {
                card: card,
                billing_details: {
                    name: form.querySelector("#name_on_card").value
                }
            }
        }

        // TODO 後で消す
        console.log(data)

        stripe.confirmCardPayment(form.dataset.paymentIntentId, data).then((result) => {
            if (result.error) {
                const errorElement = document.getElementById("card-errors")
                errorElement.textContent = result.error.message
            } else {
                form.submit()
            }
        })

    })

}
