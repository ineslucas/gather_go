class PartiesController < ApplicationController
  def show
    @party = Party.find(params[:id])

    respond_to do |format|
      format.html
      format.text { render partial: "shared/party_infos", locals: { party: @party }, formats: [:html]}
    end
  end

  def index
    @parties = Party.all
  end
end
