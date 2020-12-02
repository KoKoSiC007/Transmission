class AddRefToEb < ActiveRecord::Migration[6.0]
  def change
    remove_column :ebs, :b
    add_reference :ebs, :b, foreign_key: {to_table: :bs}, index: true
  end
end
