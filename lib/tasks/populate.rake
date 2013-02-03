namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    require 'populator'
    require 'faker'
    
    [Journal, Article, User].each(&:delete_all)
    
    Journal.populate 100 do |journal|
      journal.title = Populator.words(1..3).titleize
    end
    
    User.populate 30 do |user|
      user.username    = Faker::Name.name
      user.email   = Faker::Internet.email
      Article.populate 10..100 do |article|
        article.user_id = user.id
        article.title = Populator.words(1..5).titleize
        article.content = Populator.sentences(2..10)
        article.created_at = 2.years.ago..Time.now
      end
    end
  end
end