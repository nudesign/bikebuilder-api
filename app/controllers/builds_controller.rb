class BuildsController < InheritedResources::Base

  def new
    build_type = BuildType.where(name: params[:build_type_id]).first
    @build = build_type.builds.new
    render json: @build
  end
end
