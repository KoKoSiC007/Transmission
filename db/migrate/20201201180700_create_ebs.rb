class CreateEbs < ActiveRecord::Migration[6.0]
  def change
    create_table :ebs do |t|
      t.belongs_to :modulus, foreign_key: true, type: :integer

      t.float :bw, null: false
      t.float :b, null: false

      t.timestamps
    end
  end
end
