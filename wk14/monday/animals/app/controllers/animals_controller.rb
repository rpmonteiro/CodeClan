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

  def create
    # animal = Animal.create(params[:animal]) this is not fine because
    # params animal can be anything... not safe.
    # on this one below we give it very specific instructions
    # it's called strong parametres
    animal = Animal.create(params.require(:animal).permit([:name, :legs]))
    render json: animal
  end
end
