
json.array! @components do |component|
  json.model component.model
  json.cost component.cost
  json.weight component.weight
end
