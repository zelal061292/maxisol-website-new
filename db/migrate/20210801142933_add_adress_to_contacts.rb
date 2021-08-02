class AddAdressToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :adress, :string
  end
end
