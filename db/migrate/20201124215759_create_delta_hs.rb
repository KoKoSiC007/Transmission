class CreateDeltaHs < ActiveRecord::Migration[6.0]
  def change
    create_table :delta_hs do |t|
      t.belongs_to :teeth_hardness, foreign_key: true, type: :integer
      t.belongs_to :tooth_type, foreign_key: true, type: :integer
      t.float :value, null: false

      t.timestamps
    end
  end
end
