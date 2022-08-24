class AddDataToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone, :integer
    add_column :users, :bio, :string
    add_column :users, :payment_preferences, :string
    add_column :users, :birth_date, :date
    add_column :users, :pro, :boolean
  end
end
