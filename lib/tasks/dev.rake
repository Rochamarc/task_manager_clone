namespace :dev do
  desc "Create a user and populate with tasks"
  task populate: :environment do
    puts "Criando tarefas atribuidas ao usuario 1"
    
    100.times do
      Task.create({
        title: Faker::Lorem.sentence,
        description: Faker::Books::Lovecraft.sentence,
        done: Faker::Boolean.boolean,
        deadline: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now),
        user_id: 1})
    end
  end
end
