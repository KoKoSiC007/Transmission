class RenameToothAngleToB < ActiveRecord::Migration[6.0]
  def change
    rename_table :tooth_angles, :bs
    rename_column :zhs, :tooth_angle_id, :b_id
    # add_belongs_to :zhs, :b, foreign_key: {to_table: :bs}, index: true
    add_foreign_key :zhs, :bs, index: true
  end
end
