class CreateContactForms < ActiveRecord::Migration[6.1]
  def change
    create_table :contact_forms do |t|
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber
      t.string :address
      t.string :email

      t.timestamps
    end
  end
end
