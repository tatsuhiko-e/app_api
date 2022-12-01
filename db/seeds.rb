# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

5.times do |n|
  Admin.create!(
    team_name: "admin#{n + 1}",
    team_theme: "admin#{n + 1}と申します。富山県で活動しておりますよろしくお願いします。只今メンバー募集中となっておりますのでご興味のある方は気軽にご連絡ください！！",
    email: "admin#{n + 1}@test.com",
    password: "password",
    password_confirmation: "password"
  )
end

5.times do |n|
  Music.create!(
    title: "title#{n + 1}",
    release_year: '2011-11-14',
    theme: "title#{n + 1}のテーマは狐の嫁入り、人に化ける狐と人間の恋の物語です。是非聞いてみてね！",
    active: false,
    admin_id: 1
  )
end