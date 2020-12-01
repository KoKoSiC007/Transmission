class RenameZmToZe < ActiveRecord::Migration[6.0]
  def change
    rename_table :zms, :zes
  end
end
