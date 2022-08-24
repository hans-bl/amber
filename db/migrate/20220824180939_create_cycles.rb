class CreateCycles < ActiveRecord::Migration[7.0]
  def change
    create_table :cycles do |t|
      t.string :title
      t.text :description
      t.string :color
      t.string :general_state
      t.string :location
      t.integer :price
      t.integer :release_price
      t.date :release_date
      t.integer :peak_power
      t.integer :continuous_power
      t.integer :motor_torque
      t.integer :wheel_torque
      t.integer :battery_capacity
      t.integer :useable_capacity
      t.integer :urban_range
      t.integer :combined_range
      t.integer :highway_range
      t.integer :user_combined_range
      t.integer :full_charging_time
      t.integer :partial_charging_time
      t.integer :charging_power
      t.integer :voltage
      t.integer :wheelbase
      t.integer :caster_angle
      t.integer :weight
      t.integer :kilometrage
      t.integer :tires_state
      t.integer :battery_soh
      t.integer :nb_of_owners
      t.string :motor_technology
      t.string :cell_technology
      t.string :maintenances
      t.string :admin_note

      t.references :user, null: false, foreign_key: true
      t.references :license, null: false, foreign_key: true
      t.references :brand, null: false, foreign_key: true
      t.references :model, null: false, foreign_key: true

      t.timestamps
    end
  end
end
