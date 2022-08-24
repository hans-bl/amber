class CreateLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :licenses do |t|
      t.string :title
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
