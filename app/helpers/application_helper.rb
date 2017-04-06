module ApplicationHelper
  def date_formatter(date)
    return '' if date.nil?
    date.strftime("%d/%m/%Y")
  end
end
