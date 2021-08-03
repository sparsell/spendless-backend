# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
 
# create_table "goals", force: :cascade do |t|
#     t.integer "goal_amount"
#     t.string "description"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#   end

#   create_table "spendless_amounts", force: :cascade do |t|
#     t.integer "amount"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.integer "total_id"
#   end

#   create_table "totals", force: :cascade do |t|
#     t.integer "total"
#     t.datetime "created_at", precision: 6, null: false
#     t.datetime "updated_at", precision: 6, null: false
#     t.integer "goal_id"
#   end

# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# wonga = Goal.create(description: "Lotsa Wonga", goal_amount: 100)
# total = Total.new(total: 0, goal_id: wonga.id)

goal = Goal.create(goal_amount: 0)
total = Total.create(total: 0, goal_id: goal.id)


# Goal.destroy_all
# Total.destroy_all