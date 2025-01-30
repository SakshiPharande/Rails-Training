module ApplicationHelper
  def flash_class(type)
    case type.to_sym
    when :notice then "alert-success"
    when :alert then "alert-danger"
    when :error then "alert-danger"
    when :warning then "alert-warning"
    else "alert-info"
    end
  end
end
