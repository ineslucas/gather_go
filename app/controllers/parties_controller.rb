class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])
    @party = Party.new
  end
end
