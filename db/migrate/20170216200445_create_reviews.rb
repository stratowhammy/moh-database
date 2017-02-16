class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :congress_person_id
      t.integer :bill_id
      t.integer :rating
      t.boolean :reviewed

      t.timestamps null: false
    end
  end
end
