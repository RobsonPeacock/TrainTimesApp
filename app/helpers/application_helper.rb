module ApplicationHelper
  def formatted_date(date)
    Time.parse(date).localtime.strftime("%H:%M")
  end
end
