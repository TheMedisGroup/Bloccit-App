class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings, force: :cascade do |t|
      t.integer  "severity"
     t.integer  "rateable_id"
     t.string   "rateable_type"
     t.datetime "created_at"
     t.datetime "updated_at"
   end

   add_index "ratings", ["rateable_id"], name: "index_ratings_on_rateable_id"
  end
end
