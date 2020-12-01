class CreateVs < ActiveRecord::Migration[6.0]
  def change
    create_table :vs do |t|
      t.float :value, null:false

      t.timestamps
    end
  end
end
