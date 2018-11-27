namespace :list do
  desc "TODO"
  task import: :environment do
    10.times.each_with_index do |index|
      title = "List #{index + 1}"
      exerpt = "Exerpt #{index +1}"
      description = "Description #{index + 1}"
      upvotes = (1..100).to_a.sample(1)
      Task.create title: title, expert: expert, description: description, upvotes: upvotes
    end
  end
end
