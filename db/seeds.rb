# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# create_table "dog_houses", force: :cascade do |t|
#   t.string "address"
#   t.string "state"
#   t.integer "zipcode"
#   t.string "image_url"
#   t.text "short_description"
#   t.datetime "created_at", precision: 6, null: false
#   t.datetime "updated_at", precision: 6, null: false
# end

DogHouse.create([
  {
    address: "200 Ok St.",
    state: "NY",
    zipcode: 12345,
    image_url: "https://i.etsystatic.com/7583922/r/il/7ef73f/1059263558/il_fullxfull.1059263558_qhur.jpg",
    short_description: "Come rest your fur in a nice dog house, much bigger inside then on the outside! Enjoyo the 70inch Flatscreen."
  },
  {
    address: "404 Not Found St.",
    state: "WA",
    zipcode: 54321,
    image_url: "https://s7d2.scene7.com/is/image/PetSmart/5299360",
    short_description: "It's cold, come in and get warmed up. Have some warm Dog Tea and enjoy the blankets."
  },
  {
    address: "500 Something Went Wrong St.",
    state: "ME",
    zipcode: 15243,
    image_url: "https://cdn.vox-cdn.com/thumbor/OIx1oaUHSRgb8jDDjMUNPrf7yi0=/0x0:1440x1057/1200x800/filters:focal(568x348:798x578)/cdn.vox-cdn.com/uploads/chorus_image/image/66349637/11_real_cedar_doghouse.0.jpg",
    short_description: "At least it's a dog house."
  },
])