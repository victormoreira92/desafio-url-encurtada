class ShortenUrlsController < ApplicationController
  before_action :set_shorten_url, only: %i[ show update destroy ]

  # GET /shorten_urls
  def index
    @shorten_urls = ShortenUrl.all

    render json: @shorten_urls
  end

  # GET /shorten_urls/1
  def show
    render json: @shorten_url
  end

  # POST /shorten_urls
  def create
    @shorten_url = ShortenUrl.new(shorten_url_params)

    if @shorten_url.save
      render json: @shorten_url, status: :created, location: @shorten_url
    else
      render json: @shorten_url.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shorten_urls/1
  def update
    if @shorten_url.update(shorten_url_params)
      render json: @shorten_url
    else
      render json: @shorten_url.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shorten_urls/1
  def destroy
    @shorten_url.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shorten_url
      @shorten_url = ShortenUrl.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shorten_url_params
      params.require(:shorten_url).permit(:url, :url_shorten)
    end
end
