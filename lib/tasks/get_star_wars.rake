namespace :get_star_wars do

  desc "Add default planets"
  task :default_planets => :environment do
    planets = Tatooine::Planet.list
    while next_planets = Tatooine::Planet.next
      planets.concat next_planets
    end
    planets.each do |planet|
      Planet.create( :name => planet.name, :climate => planet.climate, :terrain => planet.terrain, :population => planet.population )
    end
  end

  desc "Add default films"
  task :default_films => :environment do
    films = Tatooine::Film.list
    films.each do |film|
      Film.create( :title => film.title, :crawl => film.opening_crawl)
    end
  end

  desc "Add default persons"
  task :default_persons => :environment do
    persons = Tatooine::Person.list
    while next_persons = Tatooine::Person.next
      persons.concat next_persons
    end
    persons.each do |person|
      Person.create( :name => person.name, :gender => person.gender, :birth => person.birth_year)
    end
  end

  desc "Add default starships"
  task :default_starships => :environment do
    starships = Tatooine::Starship.list
    while next_starships = Tatooine::Starship.next
      starships.concat next_starships
    end
    starships.each do |starship|
      Starship.create( :name => starship.name, :passangers => starship.passengers, :speed => starship.max_atmosphering_speed)
    end
  end

  desc "Add default vehicles"
  task :default_vehicles => :environment do
    vehicles = Tatooine::Vehicle.list
    while next_vehicles = Tatooine::Vehicle.next
      vehicles.concat next_vehicles
    end
    vehicles.each do |vehicle|
      Vehicle.create( :name => vehicle.name, :passengers => vehicle.passengers, :speed => vehicle.max_atmosphering_speed)
    end
  end

  desc "Add default species"
  task :default_species => :environment do
    species = Tatooine::Species.list
    while next_species = Tatooine::Species.next
      species.concat next_species
    end
    species.each do |spec|
      Species.create( :name => spec.name, :classification => spec.classification, :lifespan => spec.average_lifespan)
    end
  end

  desc "Run all starwars tasks"
  task :all => [:default_planets, :default_films, :default_persons, :default_starships, :default_vehicles, :default_species]

end
