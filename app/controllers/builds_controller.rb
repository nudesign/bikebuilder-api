class BuildsController < ApplicationController

  def index
    @builds = Build.all
  end

  def new
    return redirect :back unless params[:build_type] # can't create builds without a specific build_type

    @build = Build.new
    @build_type = BuildType.find_by(name: params[:build_type])
    @build.build_type = @build_type 
  end

  def edit
    @build = Build.find(params[:id])
    @build_type = @build.build_type
  end

  def create
    build = Build.new(build_params)
    respond_with(build) if build.save
  end

  def update
    build = Build.find(params[:id])
    respond_with(build) if build.update_attributes(build_params)
  end

  def show
    @build = Build.find(params[:id])
  end

  private
    def build_params
      params.require(:build).permit(
        :build_type_id,
        :name,
        :component_ids => []
      )
    end

end
