class AddRoleToUsers < ActiveRecord::Migration[7.0]
  def change
     add_column :users, :role, :integer
     add_column :users, :name, :string
  end
end