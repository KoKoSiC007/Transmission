class RenameKhvToKha < ActiveRecord::Migration[6.0]
  def change
    rename_table :khvs, :khas
  end
end
