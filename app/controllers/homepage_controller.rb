class HomepageController < ApplicationController
  def index
    @skills = Skill.where(view: true)
  end
end
