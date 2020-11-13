class KabukasController < ApplicationController

  def index
    @records = Kabuka.all
  end

  def import
    Kabuka.import(params[:file])
    redirect_to kabukas_url
  end
end
