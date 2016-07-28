namespace :get_star_wars do

  planets = Tatooine::Planet.list
  while next_planets = Tatooine::Planet.next
    planets.concat next_planets
  end

  desc "Add default planets"
  task :default_planets => :environment do
    planets.each do |planet|
      Planet.create( :name => planet.name, :climate => planet.climate, :terrain => planet.terrain, :population => planet.population )
    end
  end

  desc "Run all starwars tasks"
  task :all => [:default_planets]

  # people = Tatooine::Person.list
  # while next_people = Tatooine::Person.next
  #   people.concat next_people
  # end
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
  # films = Tatooine::Film.list
  # while next_films = Tatooine::Film.next
  #   films.concat next_films
  # end
  #
  # species = Tatooine::Species.list
  # while next_species = Tatooine::Species.next
  #   species.concat next_species
  # end
end
