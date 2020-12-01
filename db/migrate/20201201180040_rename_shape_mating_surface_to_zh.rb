class RenameShapeMatingSurfaceToZh < ActiveRecord::Migration[6.0]
  def change
    rename_table :shape_mating_surfaces, :zhs
  end
end
