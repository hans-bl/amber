class AddBirthdateToUsers < ActiveRecord::Migration[7.0]
  def change
    change_column :users, :birth_date, :datetime
  end
end
