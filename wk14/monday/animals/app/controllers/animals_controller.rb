# no doc
class AnimalsController < ApplicationController
  # before it was rendering json by default
  # respond_to do |format|
  #   format.html
  #   format.json { render :json => @animals }
  # end
  def index
    # @animals = [{ name: 'Tiger' }, { name: 'Snow Leopard' }]
    @animals = Animal.all
    # Renders json by default. no more html
    # render({ json: @animals }) function call with a hash
    # render :json => @animals - alternative syntax
    render json: @animals
  end

  def show
    animal = Animal.find(params[:id])
    render json: animal
  end
end
