class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])

  def index
    @parties = Party.all
  end
end
