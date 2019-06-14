class CreatePremia < ActiveRecord::Migration[5.2]
  def change
    create_table :premia do |t|
      t.string :region
      t.string :num
      t.string :date
      t.references :user, index: true
      t.timestamps
    end
  end
end
