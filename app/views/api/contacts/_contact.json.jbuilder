  json.id contact.id
  json.first_name contact.first_name
  json.middle_name contact.middle_name
  json.last_name contact.last_name
  json.email contact.email
  json.phone_number contact.phone_number
  json.bio contact.bio

  json.groups do
    json.array! contact.groups, partial: 'api/groups/group', as: :group
  end

  json.formatted do
    json.created_at contact.created_at
    json.updated_at contact.friendly_updated_at
    json.full_name contact.full_name
    json.japanese_phone_number contact.turning_japanese
  end