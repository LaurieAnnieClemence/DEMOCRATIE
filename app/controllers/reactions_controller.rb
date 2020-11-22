class ReactionsController < ApplicationController
  def index
    @information = Information.order('RANDOM()').first
    @reactions = Reaction.all.order('created_at DESC')
  end

  def create
    @reaction = Reaction.new(reaction_params)

    if @reaction.save
      flash[:sucess] = "merci pour ton avis, ça fait réfléchir!"
      redirect_to @reaction.information
    else
      flash[:alert] = @reaction.errors_to_sentence
      redirect_back fallback_location: root_path
    end
  end


  protected
  def reaction_params
    params.require(:reaction).permit(:content, :author, :information_id)
  end
end
