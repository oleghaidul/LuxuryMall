namespace :db do
  desc "Erase and fill database"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    
    require 'populator'
    
    [AdminUser, Boutique, Brand, Category, Item, Season, Size].each(&:delete_all)


    Boutique.populate 6 do |bout|
      bout.name = ["Dolcevita", "Gibraud", "Renommee", "Pret a porter", "Pal Zileri", "Ermenegildo Zegna"]
      bout.phone = ["+375277777777", "+37526666666", "+375295689754", 
                    "+375689965865", "+375295584463", "+375296658892"]
      bout.phone2 = ["+375295587743", "+375296685547", "+375298889668", 
                    "+375293336656", "+375291153348", "+375295486255"]
      bout.director = ["", "", "", "", "", ""]
      bout.address = ["21-613 Chicherin St., Minsk", "17 Vladimirova St., Minsk", 
                      "5-1 Mozhaysky St., Minsk", "24 Shishkin St., Minsk", 
                      "Of. 711-17, Freedom Sq., Minsk", "1Of. 306, 31 Mostovaya St., Minsk"]
      bout.url_bout = ["Dolcevita", "Gibraud", "Renommee", "Pret_a_porter", "PalZileri", "Ermenegildo_Zegna"]
      bout.admin_user_id = 2..7
    end  

      AdminUser.create!(:email => "admin@admin.ru",:password => "password", 
                        :password_confirmation => "password", :role => "admin")
      AdminUser.create!(:email => "admin@first.ru",:password => "password", 
                        :password_confirmation => "password", :role => "editor")

    Category.populate 10 do |category|
      category.name = Populator.words(1).titleize
    end

    Item.populate 200 do |item|
      item.name = Populator.words(2).titleize
      item.category_id = 1..10
      item.brand_id = 1..10
      item.season_id = 1..30
      item.structure = Populator.words(10).titleize
      item.description = Populator.sentences(5)
      item.price = 300..10000
      item.discount = 0..40
      item.sex = ["male", "female"]
      
      Size.populate 5 do |size|
        size.name = ["XXL", "M", "XM", "XL", "XXM", "L"]
        size.item_id = item.id
      end
    end

    Brand.populate 10 do |brand|
      brand.name = Populator.words(1).titleize
    end

    Season.populate 30 do |season|
      season.name = Populator.words(1).titleize
      season.boutique_id = 1..6
      season.year = 2005..2012
    end

  end
end