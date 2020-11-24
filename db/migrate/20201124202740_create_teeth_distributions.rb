class CreateTeethDistributions < ActiveRecord::Migration[6.0]
  def change
    create_table :teeth_distributions do |t|
      t.belongs_to :smoothness_norm, foreign_key: true, type: :integer
      t.float :v, null: false
      t.float :value, null: false

      t.timestamps
    end
  end
end
