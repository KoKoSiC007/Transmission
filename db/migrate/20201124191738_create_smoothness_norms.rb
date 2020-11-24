class CreateSmoothnessNorms < ActiveRecord::Migration[6.0]
  def change
    create_table :smoothness_norms do |t|
      t.integer :value, null: false

      t.timestamps
    end
  end
end
