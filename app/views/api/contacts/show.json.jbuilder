if current_user
  json.current_user current_user.email
end

json.partial! @contact, partial: "contact", as: :contact