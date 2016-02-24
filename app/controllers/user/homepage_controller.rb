class User::HomepageController < User::UserController
  # GET /user
  def index
    @count_skill = {
      total: Skill.all.count,
      visible: Skill.where(view: true).count
    }
  end
end
