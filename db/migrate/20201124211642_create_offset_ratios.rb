class CreateOffsetRatios < ActiveRecord::Migration[6.0]
  def change
    create_table :offset_ratios do |t|
      t.float :value, null: false

      t.timestamps
    end
  end
end
