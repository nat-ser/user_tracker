# frozen_string_literal: true
module UsersHelper
  def users_by_signup
    column_chart User.group("date(created_at)").count, height: "500px",
                                                       xtitle: "Date", ytitle: "Number of Signups"
  end

  def flash_class(level)
    case level
    when "notice" then "alert alert-info"
    when "success" then "alert alert-success"
    when "error" then "alert alert-error"
    when "alert" then "alert alert-error"
    end
  end
end
