class KnowledgesController < ApplicationController
  def new
    @knowledge = Knowledge.new
  end

  def create
    @knowledge = Knowledge.create(knowledge_params)
    @knowledge.user = current_user

    if @knowledge.save!
      # THIS PATH NEEDS CHANGING TO USER_PATH ONCE DEFINED
      redirect_to user_path(current_user)
      # ---------------
    else
      render :new
    end
  end

  def destroy
    @knowledge = Knowledge.find(params[:id])
    @knowledge.destroy
  end

  private

  def knowledge_params
    params.require(:knowledge).permit(:skill_id, :level)
  end
end
