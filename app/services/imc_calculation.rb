  # coding: utf-8
  class ImcCalculation
    attr_accessor :assessment, :client, :imcs
    def initialize(assessment)
      @assessment = assessment
      @client     = assessment.client
      @imcs       = Imc.all
    end

    def message
      if age
        imcs.find { |a| imc > a.min && imc < a.max && a.gender == gender && a.age == age }.message
      else
        imcs.find { |a| imc > a.min && imc < a.max }.message
      end
    end

    def min
      if age
        imcs.find { |a| imc > a.min && imc < a.max && a.gender == gender && a.age == age }.min
      else
        imcs.find { |a| imc > a.min && imc < a.max }.min
      end
    end

    def max
      if age
        imcs.find { |a| imc > a.min && imc < a.max && a.gender == gender && a.age == age }.max
      else
        imcs.find { |a| imc > a.min && imc < a.max }.max
      end
    end

    def ideal_min_weight
      value = imc - min
      (weight - (weight * (value) )/100).round(2)
    end

    def ideal_max_weight
      value = imc - max
      (weight - (weight * (value) )/100).round(2)
    end

    def imc
      (weight / (height ** 2)).round(2)
    end

    private

    def age
      value = Time.now.year - client.birth_date.year
      if value > 0 && value <= 15
        value
      else
        nil
      end
    end

    def gender
      if value > 0 && age.to_i <= 15
        client.gender
      else
        nil
      end
    end

    def weight
      assessment.weight
    end

    def height
      assessment.height.to_f / 100.to_f
    end
  end

