class Api::V1::ListsController < ApplicationController
  before_action :set_api_v1_list, only: [:show, :update, :destroy]

  # GET /api/v1/lists
  def index
    @api_v1_lists = Api::V1::List.all

    render json: @api_v1_lists
  end

  # GET /api/v1/lists/1
  def show
    render json: @api_v1_list
  end

  # POST /api/v1/lists
  def create
    @api_v1_list = Api::V1::List.new(api_v1_list_params)

    if @api_v1_list.save
      render json: @api_v1_list, status: :created, location: @api_v1_list
    else
      render json: @api_v1_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/v1/lists/1
  def update
    if @api_v1_list.update(api_v1_list_params)
      render json: @api_v1_list
    else
      render json: @api_v1_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/v1/lists/1
  def destroy
    @api_v1_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_v1_list
      @api_v1_list = Api::V1::List.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def api_v1_list_params
      params.require(:api_v1_list).permit(:title, :exerpt, :description, :upvotes)
    end
end
