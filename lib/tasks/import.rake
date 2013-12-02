namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "admin",
                         email: "admin@gmail.com",
                         password: "123456",
                         password_confirmation: "123456",
                         admin: true)
admin.toggle!(:admin)
  end
end
