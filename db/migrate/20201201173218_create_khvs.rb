class CreateKhvs < ActiveRecord::Migration[6.0]
  def change
    create_table :khvs do |t|
      t.belongs_to :whv, foreign_key: true, type: :integer
      t.belongs_to :kha, foreign_key: true, type: :integer
      t.belongs_to :ft, foreign_key: true, type: :integer

      t.float :value, null: false

      t.float :bw, null: false
      t.float :khb, null: false

      t.timestamps
    end
  end
end
