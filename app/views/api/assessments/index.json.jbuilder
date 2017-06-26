json.assessments do 
  json.array!(@assessments) do |assessment|
    json.extract! assessment, :id, :bodyfat, :ideal_max, :weight, :height, :ideal_min_weight,
    :ideal_max_weight, :fat_weight, :lean_body_mass, :fat_body_mass, :tricipital, :peitoral,
    :subescapular, :axilar_media, :suprailiaca, :abdominal, :coxa, :neck, :shoulder, :chest,
    :waist, :abdomen, :hip, :right_arm, :left_arm, :right_forearm, :left_forearm, :right_thigh,
    :left_thigh, :right_calf, :left_calf, :result, :created_at, :type, :next_assessment_date, :done, :goal

    json.imc do
      @imc = ImcCalculation.new(assessment)
      json.imc @imc.imc
      json.message @imc.message
      json.min @imc.min
      json.max @imc.max
      json.ideal_min_weight @imc.ideal_min_weight
      json.ideal_max_weight @imc.ideal_max_weight
    end

    if assessment.type == "Pollock3"
      json.pollock3 do
        @protocol3 = Protocol3Calculation.new(assessment)
        json.fat_weight @protocol3.fat_weight
        json.lean_body_mass @protocol3.lean_body_mass
      end
    end

    if assessment.type == "Pollock7"
      json.pollock7 do
        @protocol7 = Protocol7Calculation.new(assessment)
        json.fat_weight @protocol7.fat_weight
        json.lean_body_mass @protocol7.lean_body_mass
      end
    end

    if assessment.type == "IcqAssessment"
      json.icq do
        @icq = IcqCalculation.new(assessment)
        json.icq @icq.icq
        json.message @icq.message
      end
    end

    json.employee do
      json.name assessment.employee.name
    end

    json.client do
      json.name assessment.client.name
      json.age assessment.client.age
      json.gender assessment.client.gender
    end
  end 
end
