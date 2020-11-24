class CreateToothTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :tooth_types do |t|
      t.string :value, null: false

      t.timestamps
    end
  end
end
