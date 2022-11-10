
puts "🌱 Seeding spices..."

# Seed your database here
# baseUrl = "https://my-json-server.typicode.com/jaime8793/To-DO-LIST-PROJECT-PHASE-2/tasks"
# TodoList.create([
#     {
#     title: ,
#     status: 
#     }])

# p "Created #{TodoList.count} tasks"

5.times do 
    todolist = TodoList.create(
        title:  Faker::Lorem.sentence,
        status: Faker::Boolean.boolean
    ) 
 
 username = Username.create(
    username: Faker::Name.name 
 )
end
puts "✅ Done seeding!"
