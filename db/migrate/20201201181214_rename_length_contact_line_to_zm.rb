class RenameLengthContactLineToZm < ActiveRecord::Migration[6.0]
  def change
    rename_table :length_contact_lines, :zms
    add_reference :zms, :eb, foreign_key: {to_table: :ebs}, index: true
    add_reference :zms, :ea, foreign_key: {to_table: :eas}, index: true
  end
end
