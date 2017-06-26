json.gymcards do 
  json.array!(@gymcards) do |gymcard|
    json.extract! gymcard, :id, :name, :created_at, :active

    json.employee do
      json.name gymcard.employee.name
    end

    json.client do
      json.name gymcard.client.name
    end

    json.cycles gymcard.cycles do |cycle|
      json.extract! cycle, :id, :name, :created_at

      json.workouts cycle.workouts do |workout|
        json.extract! workout, :id, :name, :sequence, :serie, :load, :obs

        json.grouptype do
          json.name workout.grouptype.try(:name)
        end

        json.exercise do
          json.name workout.exercise.try(:name)
        end

        json.equipment do
          json.id workout.equipment.try(:id)
          json.name workout.equipment.try(:name)
        end
      end
    end
  end 
end
