class CreateG0s < ActiveRecord::Migration[6.0]
  def change
    create_table :g0s do |t|
      t.belongs_to :smoothness_norm, foreign_key: true, type: :integer
      t.belongs_to :modulus, foreign_key: true, type: :integer
      t.integer :value, null: false

      t.timestamps
    end
  end
end
