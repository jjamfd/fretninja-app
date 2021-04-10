class AddFormulasToIntervallicFormulas < ActiveRecord::Migration[6.1]
  def change
    add_column :intervallic_formulas, :formula, :string
  end
end
