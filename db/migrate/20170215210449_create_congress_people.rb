class CreateCongressPeople < ActiveRecord::Migration
  def change
    create_table :congress_people do |t|
      t.string :first_name
      t.string :last_name
      t.string :branch
      t.text :notes
      t.string :district_phone
      t.string :capitol_phone
      t.integer :district
      t.string :party

      t.timestamps null: false
    end
  end
end
