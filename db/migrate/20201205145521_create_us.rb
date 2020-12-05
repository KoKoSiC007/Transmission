class CreateUs < ActiveRecord::Migration[6.0]
  def change
    create_table :us do |t|
      t.float :value, null: false

      t.timestamps
    end

    remove_column :whvs, :u
    remove_column :sigma_hs, :u
    add_reference :whvs, :u, foreign_key: {to_table: :us}, index: true
    add_reference :sigma_hs, :u, foreign_key: {to_table: :us}, index: true
  end
end
