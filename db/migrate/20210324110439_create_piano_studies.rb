class CreatePianoStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :piano_studies do |t|

      t.timestamps
    end
  end
end
