class CreateToothAngles < ActiveRecord::Migration[6.0]
  def change
    create_table :tooth_angles do |t|
      t.float :value, null: false

      t.timestamps
    end
  end
end
