class AddRefToTeethDistributions < ActiveRecord::Migration[6.0]
  def change
    rename_column :teeth_distributions, :v, :v_id
    change_column :teeth_distributions, :v_id, :bigint
    add_foreign_key :teeth_distributions, :vs, column: :v_id, foreign_key: true
  end
end
