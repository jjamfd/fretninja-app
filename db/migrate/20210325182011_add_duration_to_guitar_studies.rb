class AddDurationToGuitarStudies < ActiveRecord::Migration[6.1]
  def change
    add_column :guitar_studies, :duration, :int
  end
end
