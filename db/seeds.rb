# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |n|
  Music.create!(
    title: "title#{n + 1}",
    release_date: '2011-11-14',
    theme: "title#{n + 1}のテーマは狐の嫁入り、人に化ける狐と人間の恋の物語です。是非聞いてみてね！",
    active: true
  )
end