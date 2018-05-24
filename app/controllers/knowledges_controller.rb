class KnowledgesController < ApplicationController
  def new
    @knowledge = Knowledge.new
    authorize @knowledge
  end

  def create
    @knowledge = Knowledge.create(knowledge_params)
    @knowledge.user = current_user
    authorize @knowledge

    if @knowledge.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @knowledge = Knowledge.find(params[:id])
    authorize @knowledge
    @knowledge.destroy
    redirect_to user_path(current_user)
  end

  private

  def knowledge_params
    params.require(:knowledge).permit(:skill_id, :level)
  end
end
