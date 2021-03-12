json.array! @pets do |pet|
  json.extract! pet, :id, :name, :tag
end
