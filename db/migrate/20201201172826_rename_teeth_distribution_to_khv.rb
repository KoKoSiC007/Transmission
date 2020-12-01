class RenameTeethDistributionToKhv < ActiveRecord::Migration[6.0]
  def change
    rename_table :teeth_distributions, :khvs
  end
end
