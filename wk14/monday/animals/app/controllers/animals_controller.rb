# no doc
class AnimalsController < ApplicationController
  def index
    # @animals = [{ name: 'Tiger' }, { name: 'Snow Leopard' }]
    # render :json => @animals Renders json automatically. no more html
    respond_to do |format|
      format.html
      format.json { render :json => @animals }
    end
  end
end
