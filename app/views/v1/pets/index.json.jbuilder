response.set_header('X-next', @next_link)

json.array! @pets do |pet|
  json.extract! pet, :id, :name, :tag
end
