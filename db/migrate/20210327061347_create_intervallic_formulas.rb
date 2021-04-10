class CreateIntervallicFormulas < ActiveRecord::Migration[6.1]
  def change
    create_table :intervallic_formulas do |t|

      t.timestamps
    end
  end
end
