require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  test "cannot valid if name field is empty" do
     s = Skill.new
     s.color = "45EFA9"
     assert_not s.valid?
  end

  test "cannot valid if color field is empty" do
     s = Skill.new
     s.name = "Ruby"
     assert_not s.valid?
  end

  test "cannot valid if color field is not hexa number" do
    s = Skill.new
    s.color = "red"
    s.name = "Ruby"
    assert_not s.valid?
  end

  test "cannot save if name exist" do
      Skill.create(name: "Ruby", color: "459636")
      s = Skill.new
      s.color = "45EFA9"
      s.name = "Ruby"
      assert_not s.valid?
  end
end
