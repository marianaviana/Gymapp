module ApplicationHelper
  def date_formatter(date)
    return '' if date.nil?
    date.strftime("%d/%m/%Y")
  end

  def time_formatter(date)
    return '' if date.nil?
    date.strftime("%H:%M:%S")
  end

  def translate_type(type)
    return "ICQ" if type == "IcqAssessment"
    type
  end
end
