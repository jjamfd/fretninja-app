class AddKeyToGuitarStudies < ActiveRecord::Migration[6.1]
  def change
    add_column :guitar_studies, :key, :int
  end
end
