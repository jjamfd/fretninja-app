class CreateBassStudies < ActiveRecord::Migration[6.1]
  def change
    create_table :bass_studies do |t|

      t.timestamps
    end
  end
end
