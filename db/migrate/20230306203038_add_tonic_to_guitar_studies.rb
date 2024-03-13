class AddTonicToGuitarStudies < ActiveRecord::Migration[6.1]
  def change
    add_column :guitar_studies, :tonic, :int
  end
end
