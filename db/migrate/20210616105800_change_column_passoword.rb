class ChangeColumnPassoword < ActiveRecord::Migration[6.1]
  def change
    rename_column :maxisols, :passoword, :password
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
