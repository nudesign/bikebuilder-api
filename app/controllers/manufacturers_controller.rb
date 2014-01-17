class ManufacturersController < InheritedResources::Base

  private
    def build_resource_params
      [params.fetch(:manufacturer, {}).permit([
        :name
      ])]
    end
end
