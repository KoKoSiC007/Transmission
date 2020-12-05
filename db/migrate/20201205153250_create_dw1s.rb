class CreateDw1s < ActiveRecord::Migration[6.0]
  def change
    create_table :dw1s do |t|
      t.float :value, null: false

      t.timestamps
    end

    remove_column :sigma_hs, :dw1
    remove_column :fts, :dw1
    add_reference :sigma_hs, :dw1, foreign_key: {to_table: :dw1s}, index: true
    add_reference :fts, :dw1, foreign_key: {to_table: :dw1s}, index: true
  end
end
