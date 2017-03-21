class PeopleController < ApplicationController

  def index
    @people = People.all
    render json: @people.to_json
  end

  def show
    @person = People.find_by_id(params[:id])
    if @person
      render json: @person
    else
      render json: @person.errors
    end
  end


  def create
    @person = People.new(people_params)

    if @person.save
      render json: @person
    else
      render json: @person.errors
    end
  end


  def update
    @person = People.find_by_id(params[:id])

    @person.update(people_params)
    if @person.valid?
      render json: @person
    else
      render json: @person.errors
    end

  end

  def destroy
    @person = People.find_by_id(params[:id])

    if @person
      @person.delete
      # render json: {valid: true, message: "Person 1 has been deleted!"}
    else
      render json: @person.errors
      # render json: {valid: false, message: "Person with id 1 has been deleted already!"}
    end

  end


  private

    def people_params
      params.permit(:name, :favoriteCity)
    end

end
