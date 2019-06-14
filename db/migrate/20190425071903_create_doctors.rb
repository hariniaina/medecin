class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :firstname
      t.string :lastname
      t.string :phone
      t.string :specialisation
      t.string :adresse
      t.integer :experience
      t.string :region
      t.string :lieu
      t.string :clinique
      t.string :age

      t.references :user, index: true
      t.timestamps
    end
  end
end
