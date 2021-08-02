class AddPhoneNumberToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :phone_number, :string
  end
end
