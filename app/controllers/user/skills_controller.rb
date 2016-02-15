class User::SkillsController < ApplicationController
  layout "main"
  before_action :skills_find, only: [:edit, :update, :destroy]

  def index
    @skills = Skill.all
  end

  def new
    @skill = Skill.new
  end

  def create
     @skill = Skill.new(skills_params)

     if @skill.save
       redirect_to :user_skills
     else
       render :new
     end
  end

  def edit
  end

  def update
    if @skill.update(skills_params)
      redirect_to :user_skills
    else
      render :edit
    end
  end

  def destroy
    if @skill.destroy
      redirect_to :user_skills
    else
      redirect_to :user_skills
    end
  end

  private

  def skills_params
    params.require(:skill).permit(:name, :color)
  end

  def skills_find
    @skill = Skill.find(params.permit(:id))
  end
end
