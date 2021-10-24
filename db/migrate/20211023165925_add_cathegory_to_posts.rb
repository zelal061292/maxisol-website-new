class AddCathegoryToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :cathegory, :string
  end
end
