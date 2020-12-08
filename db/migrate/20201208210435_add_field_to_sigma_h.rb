class AddFieldToSigmaH < ActiveRecord::Migration[6.0]
  def change
    add_column :sigma_hs, :delta, :float, null: false
    add_column :sigma_hs, :passed, :boolean, null: false, default: false
  end
end
