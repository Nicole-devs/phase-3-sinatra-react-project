puts "🌱 Seeding tasks..."

# Seed your database here
User.delete_all
User.create(name:'james');

Task.destroy_all
Task.create(description:'Wash the House', user_id:1)
Task.create(description:'Launder', user_id:1)


puts "✅ Done seeding!"
