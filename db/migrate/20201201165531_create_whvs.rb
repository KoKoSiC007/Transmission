class CreateWhvs < ActiveRecord::Migration[6.0]
  def change
    create_table :whvs do |t|
      t.float :value, null: false

      t.belongs_to :delta_h, foreign_key: true, type: :integer
      t.belongs_to :g0, foreign_key: true, type: :integer
      t.belongs_to :v, foreign_key: true, type: :integer

      t.float :aw, null: false
      t.float :u, null: false

      t.timestamps
    end
  end
end
