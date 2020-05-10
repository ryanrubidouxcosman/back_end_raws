class Api::RawsController < ApplicationController
  def index
    @raws = Raw.all
    #@raws = @raws.order(:id => asc)
    render "index.json.jb"
  end

  def create
    @raw = Raw.new(
      name: params[:input_name],
      code: params[:input_code],
      density: params[:input_density],
      user_id: current_user.id,
    )
    if @raw.save
      render "show.json.jb"
    else
      render json: { errors: @raw.errors.full_messages }, status: 422
    end
  end

  def show
    @raw = Raw.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @raw = Raw.find_by(id: params[:id])
    @raw.name = params[:input_name] || @raw.name
    @raw.code = params[:input_code] || @raw.code
    @raw.density = params[:input_density] || @raw.density
    @raw.save
    render "show.json.jb"
  end

  def destroy
    @raw = Raw.find_by(id: params[:id])
    @raw.destroy
    render json: { message: "Raw destroyed successfully!" }
  end
end
