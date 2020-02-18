module ApplicationHelper
    def human_boolean(boolean)
        boolean ? 'Yes' : 'No'
    end
    def show_errors(object, field_name)
  if object && object.errors.any?
    if !object.errors.messages[field_name].blank?
      object.errors.messages[field_name].join(", ")
    end
  end
end
end