class PeopleController < ApplicationController
  # protect_from_forgery with: :exception
  # skip_before_filter :verify_authenticity_token


  def index
    @people = People.all
    render json: @people.to_json
  end

  def show
    @person = People.find_by_id(params[:id])
    if @person
      render json: @person
    else
      render json: {message: "No person with that id found"}
    end
  end


  def create
    @person = People.new(people_params)

    if @person.save
      render json: @person
    else
      render json: {message: "Not saved - bad data"}
    end
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
      render json: {valid: true, message: "Person 1 has been deleted!"}
    else
      render json: {valid: false, message: "Person with id 1 has been deleted already!"}
    end

  end


  private

    def people_params
      params.permit(:name, :favoriteCity)
    end

end
