class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :severity
      t.references :rateable, index: true, foreign_key: true
      t.string :rateable_type

      t.timestamps null: false
    end
  end
end
