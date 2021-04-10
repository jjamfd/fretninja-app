class AddNameToIntervallicFormulas < ActiveRecord::Migration[6.1]
  def change
    add_column :intervallic_formulas, :name, :string
  end
end
