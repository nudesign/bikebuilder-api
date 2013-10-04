class ComponentsController < InheritedResources::Base

  def index
    @componets = Component.all
    render json: @componets
  end
end
