class CreateMatedWheels < ActiveRecord::Migration[6.0]
  def change
    create_table :mated_wheels do |t|
      t.float :value, null: false

      t.timestamps
    end
  end
end
