class ComponentTypesController < InheritedResources::Base

  private
    def build_resource_params
      [params.fetch(:component_type, {}).permit([
        :name,
        :primary
      ], build_type_ids: [])]
    end
end
