# no doc
class AnimalsController < ApplicationController
  def index
    # @animals = [{ name: 'Tiger' }, { name: 'Snow Leopard' }]
    @animals = Animal.all
    # Renders json automatically. no more html
    render :json => @animals
    # respond_to do |format|
    #   format.html
    #   format.json { render :json => @animals }
    # end
  end
end
