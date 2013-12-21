json.array! collection do |build|
  json.name build.name
  json.image_url "http://placehold.it/250x200"
  json.type do
    json.name build.build_type.name
  end
  json.comments build.components, partial: 'components/components', as: :component
end
