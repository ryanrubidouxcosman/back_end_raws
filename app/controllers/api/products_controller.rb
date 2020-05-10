class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  #     t.string :name
  #     t.string :type
  #     t.float :density
  #     t.string :image_url
  #     t.text :description

  def create
    @product = Product.new(
      name: params["name"],
      type: params["type"],
      density: params["density"],
      image_url: params["image_url"],
      description: params["description"],
      raw_id: params["raw_id"],
    )
    if @product.save
      render "show.json.jb"
    else
      render json: { errors: @product.errors.full_messages }, status: 422
    end
  end

  def show
    @product = Product.find_by(id: params["id"])
    render "show.json.jb"
  end

  def edit
    product_id = params["id"]
    @product = product.find_by(id: params["id"])
    @product.name = params["name"] || @product.name
    @product.type = params["type"] || @product.type
    @product.density = params["density"] || @product.density
    @product.image_url = params["image_url"] || @product.image_url
    @product.description = params["description"] || @product.description
    @product.raw_id = params["raw_id"] || @product.raw_id
    @product.save
    render "show.json.jb"
  end

  def destroy
    product_id = params["id"]
    @product = product.find_by(id: params["id"])
    @product.destroy
    render json: { message: "product destroyed successfully!" }
  end
end
