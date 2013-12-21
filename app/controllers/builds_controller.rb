class BuildsController < InheritedResources::Base

  def new
    build_type = BuildType.where(name: params[:build_type_id]).first
    @build = build_type.builds.new

    render json: {build: @build, build_type_components: build_type.components}
  end

  private
    def collection
      @builds ||= params[:user_id] ? get_user(params[:user_id]).builds : Build.all
    end

    def get_user(id)
      User.find(id)
    end
end
