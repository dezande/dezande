class User::SkillsController < ApplicationController
  layout "main"
  before_action :skills_find, except: [:index, :new, :create]

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
       puts @skill.errors.full_messages
       render 'new'
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

  def toggle_view
    @skill.view = !@skill.view
    @skill.save
    redirect_to :user_skills
  end

  def toggle_priority
    @skill.priority = !@skill.priority
    @skill.save
    redirect_to :user_skills
  end

  private

  def skills_params
    params.require(:skill).permit(:name, :color, :view, :priority)
  end

  def skills_find
    @skill = Skill.find(params.permit(:id))
  end
end
