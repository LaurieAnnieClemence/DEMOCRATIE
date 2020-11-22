class InformationsController < ApplicationController
  def index
    @information = Information.new
    @informations = Information.all.order('created_at DESC')
  end

  def show
    @information = Information.find(params[:id])
  end

  def create
    @information = Information.new(information_params)

    if @information.save
      flash[:sucess] = "merci pour l'info!"
      redirect_to @information, notice: "merci citoyen ;)!"
    else
      flash[:alert] = @information.errors_to_sentence
      redirect_to root_url
    end
  end


  protected
  def information_params
    params.require(:information).permit(:content)
  end
end
