class CreateGuitarStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :guitar_studies do |t|

      t.timestamps
    end
  end
end
