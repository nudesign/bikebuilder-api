class BuildsController < InheritedResources::Base

  def index
    @builds = Build.all
    render json: @builds
  end
end
