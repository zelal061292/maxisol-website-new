class CreateMaxisols < ActiveRecord::Migration[6.1]
  def change
    create_table :maxisols do |t|
      t.string :email
      t.string :passoword

      t.timestamps
    end
  end
end
