class CreateContactVoltages < ActiveRecord::Migration[6.0]
  def change
    create_table :contact_voltages do |t|
      t.float :value, null: false

      t.timestamps
    end
  end
end
