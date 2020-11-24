class CreateDeltaHs < ActiveRecord::Migration[6.0]
  def change
    create_table :delta_hs do |t|
      t.float :value, null: false

      t.timestamps
    end
  end
end
