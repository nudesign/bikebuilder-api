class ComponentTypesController < InheritedResources::Base

  def index
    build_type = BuildType.find_by(name: params[:build_type])
    # component_types = ComponentType.where(build_type_id: build_type.id).all
    component_types = build_type.components

    render json: {primary: component_types.primary, secondary: component_types.secondary}
  end

end
