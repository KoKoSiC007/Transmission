class CreateBws < ActiveRecord::Migration[6.0]
  def change
    create_table :bws do |t|
      t.float :value, null: false

      t.timestamps
    end

    remove_column :ebs, :bw
    remove_column :whts, :bw
    remove_column :khvs,  :bw
    add_reference :ebs, :bw, foreign_key: {to_table: :bws}, index: true
    add_reference :whts, :bw, foreign_key: {to_table: :bws}, index: true
    add_reference :khvs, :bw, foreign_key: {to_table: :bws}, index: true
  end
end
