class CreateModulus < ActiveRecord::Migration[6.0]
  def change
    create_table :modulus do |t|
      t.string :value, null: false

      t.timestamps
    end
  end
end
