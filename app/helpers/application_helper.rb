module ApplicationHelper
  def time_format(time)
    time.strftime("%m/%d/%y %I:%M%P")
  end
end
