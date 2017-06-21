json.gymcards do 
  json.array!(@gymcards) do |gymcard|
    json.extract! gymcard, :id, :name, :created_at, :active

    json.cycles gymcard.cycles do |cycle|
      json.extract! cycle, :id, :name, :created_at

      json.workouts cycle.workouts do |workout|
        json.extract! workout, :id, :name, :sequence, :serie, :load, :obs

        json.equipment do
          json.id workout.equipment.id
          json.name workout.equipment.name
        end
      end
    end
  end 
end
