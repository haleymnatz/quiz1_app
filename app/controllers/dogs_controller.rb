class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
    redirect_to root_path
  end

  private

  def dog_params
    params.require(:dog).permit(:breed, :description)
  end

end
