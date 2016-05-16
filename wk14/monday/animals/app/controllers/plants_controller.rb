class PlantsController < ApplicationController
  def index
    @plants = [{ name: 'Tulip' }, { name: 'Rose' }]

    respond_to do |format|
      format.html
      format.json { render :json => @plants }
    end
  end
end
