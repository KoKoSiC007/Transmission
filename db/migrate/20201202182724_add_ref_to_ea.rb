class AddRefToEa < ActiveRecord::Migration[6.0]
  def change
    remove_column :eas, :b
    add_reference :eas, :b, foreign_key: {to_table: :bs}, index: true

  end
end
