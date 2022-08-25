class AddTiresToCycles < ActiveRecord::Migration[7.0]
  def change
    change_column :cycles, :tires_state, :string
  end
end
