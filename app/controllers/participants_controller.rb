class ParticipantsController < ApplicationController
  def index
    @participants = Participant.all
  end

  def import
    Participant.import(params[:file])
    redirect_to root_path, notice: "Data Imported"
  end
end
