50.times do TodoList.create(body: Faker::Lorem.sentence(3))
end
