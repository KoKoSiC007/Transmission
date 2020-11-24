class ChangeFieldNameOnShapeMatingSurfaces < ActiveRecord::Migration[6.0]
  def change
    rename_column :shape_mating_surfaces, :tooth_angles_id, :tooth_angle_id
  end
end
