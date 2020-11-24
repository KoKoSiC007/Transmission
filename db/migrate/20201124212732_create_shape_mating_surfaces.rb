class CreateShapeMatingSurfaces < ActiveRecord::Migration[6.0]
  def change
    create_table :shape_mating_surfaces do |t|
      t.belongs_to :offset_ratio, foreign_key: true, type: :integer
      t.belongs_to :tooth_angles, foreign_key: true, type: :integer
      t.float :value, null: false

      t.timestamps
    end
  end
end
