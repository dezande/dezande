class HomepageController < ApplicationController
  def index
    @skills = Skill.all
  end
end
