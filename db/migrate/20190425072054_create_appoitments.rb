class CreateAppoitments < ActiveRecord::Migration[5.2]
  def change
    create_table :appoitments do |t|
      t.text :motif
      t.string :date
      t.string :heure
      t.integer :duree
      t.integer :doctor_id
      t.integer :patient_id
      t.boolean :check, default: false
      t.timestamps
    end
  end
end
