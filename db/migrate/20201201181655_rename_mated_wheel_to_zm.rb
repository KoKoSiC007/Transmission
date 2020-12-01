class RenameMatedWheelToZm < ActiveRecord::Migration[6.0]
  def change
    rename_table :mated_wheels, :zms
    add_column :zms, :vp, :float, null: false
    add_column :zms, :e1, :float, null: false
    add_column :zms, :e2, :float, null: false
  end
end
