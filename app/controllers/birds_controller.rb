class BirdsController < ApplicationController

 
  def index
    birds = Bird.all
    render json: birds
  end

 
  def show
    bird = Bird.find_by(id: params[:id])
    render json: bird
  end

  def create
    bird = Bird.create(name: params[:name], species: params[:species])
    render json: bird, status: :created
  end

end