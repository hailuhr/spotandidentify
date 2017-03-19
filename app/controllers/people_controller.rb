class PeopleController < ApplicationController
  # protect_from_forgery with: :exception
  before_action :set_header

  def index
    @people = People.all
    render json: @people.to_json
  end

  def show
    @person = People.find_by_id(params[:id])
    if @person
      render json: @person
    else
      render json: {message: "No person found"}
    end
  end

  def new
    # @people = People.new
  end

  def create
    @person = People.new(people_params)
    # binding.pry
    @person.id = People.count + 1
    # @person.save
    if @person.save
      render json: @person
    else
      render json: {message: "Not saved - bad data"}
    end
  end

  def edit
  end

  def update
    @person = People.find_by_id(params[:id])

    if @person
      @person.update(people_params)
      render json: @person
    else
      render json: {message: "Not saved - bad data"}
    end

  end

  def destroy
    @person = People.find_by_id(params[:id])

    if @person
      @person.delete
      render json: {message: "Deleted"}
    else
      render json: {message: "No person to delete"}
    end

  end

  # respond_to do |f|
  #   f.html { render :show }
  #   f.json { render json: @ person }
  # end

  def delete_form
  end

  private

    def people_params
      params.permit(:name, :favoriteCity)
    end

    def set_header
      headers['Access-Control-Allow-Origin'] = "*"
      headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
      # config.action_dispatch.default_headers = {
      #   'Access-Control-Allow-Origin' => 'http://my-web-service-consumer-site.com',
      #   'Access-Control-Request-Method' => %w{GET POST OPTIONS}.join(",")
      # }
    end
end
