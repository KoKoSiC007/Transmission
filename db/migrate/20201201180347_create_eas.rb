class CreateEas < ActiveRecord::Migration[6.0]
  def change
    create_table :eas do |t|
      t.float :value, null: false
      t.float :b, null: false

      t.integer :z1, null: false
      t.integer :z2, null: false

      t.timestamps
    end
  end
end
