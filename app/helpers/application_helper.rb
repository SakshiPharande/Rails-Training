module ApplicationHelper
  def flash_class(type)
    case type.to_sym
    when :notice then "alert alert-success"  # Green for success
    when :alert  then "alert alert-danger"   # Red for error
    else "alert alert-info"
    end
  end
end
