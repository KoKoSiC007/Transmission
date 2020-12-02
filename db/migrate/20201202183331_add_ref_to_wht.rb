class AddRefToWht < ActiveRecord::Migration[6.0]
  def change
    add_column :whts, :khb, :float, null: false
    add_column :whts, :bw, :float, null: false

    remove_column :whts, :smoothness_norm_id
    remove_column :whts, :modulus_id

    add_reference :whts, :kha, foreign_key: {to_table: :khas}, index: true
    add_reference :whts, :khv, foreign_key: {to_table: :khvs}, index: true
    add_reference :whts, :ft, foreign_key: {to_table: :fts}, index: true
  end
end
