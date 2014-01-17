class ComponentsController < InheritedResources::Base

  private
    def build_resource_params
      [params.fetch(:component, {}).permit([
        :manufacturer_id,
        :component_type_id,
        :model,
        :weight,
        :cost
      ])]
    end
end
