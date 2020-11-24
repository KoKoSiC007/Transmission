class CreateTeethHardnesses < ActiveRecord::Migration[6.0]
  def change
    create_table :teeth_hardnesses do |t|
      t.string :value, null: false

      t.timestamps
    end
  end
end
