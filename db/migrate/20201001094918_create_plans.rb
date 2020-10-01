class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name, null: false
      t.string :amount, null: false
      t.string :interval, null: false
      t.string :stripe_id, null: false

      t.timestamps
    end
  end
end
