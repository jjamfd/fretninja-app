class AddFormulaToGuitarStudies < ActiveRecord::Migration[6.1]
  def change
    add_column :guitar_studies, :formula, :string
  end
end
