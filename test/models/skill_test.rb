require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  should validate_presence_of(:name)
  should validate_presence_of(:color)

  def setup
    @s = Skill.new(name: "Ruby", color: "111111")
  end

  test "color should a hexa number" do
    @s.color = "red"
    assert_not @s.valid?
  end

  test "name should be unique" do
      @s.save
      r = Skill.new(name: "Ruby", color: "red")
      assert_not r.valid?
  end
end
