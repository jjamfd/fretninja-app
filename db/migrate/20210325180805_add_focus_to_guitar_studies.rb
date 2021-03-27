class AddFocusToGuitarStudies < ActiveRecord::Migration[6.1]
  def change
    add_column :guitar_studies, :focus, :string
  end
end
