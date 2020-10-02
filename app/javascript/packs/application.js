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
const cardElement = document.querySelector("#card-element")

if (cardElement !== null) { setupStripe()}
function setupStripe(){
    const public_key = process.env.STRIPE_PUBLIC_KEY
    const stripe = Stripe(public_key)
    const elements = stripe.elements()
    const card = elements.create('card', { hidePostalCode: true})
    card.mount('#card-element')
    const displayError = document.getElementById("card-errors")

    card.addEventListener("change", (event) => {
        if (event.error){
            displayError.textContent = event.error.message
        } else {
            displayError.textContent = ""
        }
    })

    const form = document.querySelector("#subscription-payment-form")

    form.addEventListener("submit", (event) => {
        event.preventDefault()
        let name = form.querySelector("#name_on_card").value

        // for one time payment
        // let data = {
        //     payment_method: {
        //         card: card,
        //         billing_details: {
        //             name: name
        //         }
        //     }
        // }
        //
        // stripe.confirmCardPayment(form.dataset.paymentIntentId, data).then((result) => {
        //     if (result.error) {
        //         const errorElement = document.getElementById("card-errors")
        //         errorElement.textContent = result.error.message
        //     } else {
        //         form.submit()
        //     }
        // })

        stripe.createPaymentMethod(
            {
                type: 'card',
                card: card,
                billing_details: {
                    name: name,
                },
            }).then((result) => {
            if (result.error) {
                displayError.textContent = result.error.message
            } else {
                console.log(result)
                addHiddenField(form, "payment_method_id", result.paymentMethod.id)
                form.submit()
            }
        })

    })
}

function addHiddenField(form, name, value) {
    let hiddenInput = document.createElement("input")
    hiddenInput.setAttribute("type", "hidden")
    hiddenInput.setAttribute("name", name)
    hiddenInput.setAttribute("value", value)
    form.appendChild(hiddenInput)
}
