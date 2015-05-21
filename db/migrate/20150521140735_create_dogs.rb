class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.references :owner, index: true
      t.references :breed, index: true
      t.date :dob
      t.string :vet
      t.string :vet_phone
      t.boolean :in_daycare

      t.timestamps
    end
  end
end
