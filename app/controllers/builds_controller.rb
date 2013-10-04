class BuildsController < InheritedResources::Base

  def index
    @builds = Build.all
    render json: @builds
  end

  def new
    build_type = BuildType.where(name: params[:build_type_id]).first
    @build = build_type.builds.new
    render json: @build
  end
end
