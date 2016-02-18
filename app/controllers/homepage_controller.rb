class HomepageController < ApplicationController
  def index
    @skills_language = Skill.where(view: true, type: "language")
    @skills_other = Skill.where(view: true).nin(type: "language")
  end
end
