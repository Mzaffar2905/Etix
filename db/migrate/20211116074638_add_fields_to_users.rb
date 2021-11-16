class AddFieldsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :nic_number, :string
    add_column :users, :license_number, :string
    add_column :users, :is_analyst, :boolean
  end
end
