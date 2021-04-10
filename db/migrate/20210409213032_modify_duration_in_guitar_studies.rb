class ModifyDurationInGuitarStudies < ActiveRecord::Migration[6.1]
  def change
    change_column :guitar_studies, :duration, :int, :default => 0
  end
end
