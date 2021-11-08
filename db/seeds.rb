100.times do
  Author.create(name: Faker::Book.author)
end

100.times do
  Publisher.create(name: Faker::Book.author)
end

100.times do
  Genre.create(name: Faker::Book.genre)
end

100.times do
  [].tap do |array|
    10_000.times do
      time = Time.current
      array << {
        title: Faker::Book.title,
        author_id: 1 + rand(100),
        publisher_id: 1 + rand(100),
        genre_id: 1 + rand(100),
        updated_at: time,
        created_at: time
      }
    end
    Book.insert_all(array)
  end
end

# 1_000_000.times do
#   Book.create(
#     title: Faker::Book.title,
#     author_id: 1 + rand(100),
#     publisher_id: 1 + rand(100),
#     genre_id: 1 + rand(100)
#   )
# end