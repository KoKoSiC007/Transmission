class CreateSigmaHs < ActiveRecord::Migration[6.0]
  def change
    create_table :sigma_hs do |t|
      t.belongs_to :zh, foreign_key: true, type: :integer
      t.belongs_to :zm, foreign_key: true, type: :integer
      t.belongs_to :ze, foreign_key: true, type: :integer
      t.belongs_to :wht, foreign_key: true, type: :integer

      t.float :value, null: false
      t.float :u, null: false
      t.float :dw1, null: false

      t.timestamps
    end
  end
end
