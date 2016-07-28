namespace :get_star_wars do

  planets = Tatooine::Planet.list
  while next_planets = Tatooine::Planet.next
    planets.concat next_planets
  end

  films = Tatooine::Film.list

  persons = Tatooine::Person.list
  while next_persons = Tatooine::Person.next
    persons.concat next_persons
  end

  desc "Add default planets"
  task :default_planets => :environment do
    planets.each do |planet|
      Planet.create( :name => planet.name, :climate => planet.climate, :terrain => planet.terrain, :population => planet.population )
    end
  end

  desc "Add default films"
  task :default_films => :environment do
    films.each do |film|
      Film.create( :title => film.title, :crawl => film.opening_crawl)
    end
  end

  desc "Add default persons"
  task :default_persons => :environment do
    persons.each do |person|
      Person.create( :name => person.name, :gender => person.gender, :birth => person.birth_year)
    end
  end

  desc "Run all starwars tasks"
  task :all => [:default_planets, :default_films, :deafult_persons]

  #
  # starships = Tatooine::Starship.list
  # while next_starships = Tatooine::Starship.next
  #   starships.concat next_starships
  # end
  #
  # vehicles = Tatooine::Vehicle.list
  # while next_vehicles = Tatooine::Vehicle.next
  #   vehicles.concat next_vehicles
  # end
  #
  #
  # species = Tatooine::Species.list
  # while next_species = Tatooine::Species.next
  #   species.concat next_species
  # end
end
