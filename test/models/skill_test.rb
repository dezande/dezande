require 'test_helper'

class SkillTest < ActiveSupport::TestCase
  def setup
    @s = new_skill
  end

  def new_skill
    Skill.new(name: "Ruby", color: "111111", devicon: "ruby-plain")
  end

  # name test
  test "name should be presence" do
    @s.name = nil
    assert_presence(@s, "name")
  end

  test "name should be unique" do
    @s.save
    @r = new_skill
    @r.devicon = "ruby"
    assert_unique(@r, "name")
  end

  # color test
  test "color should a hexa number" do
    @s.color = "red"
    assert_not @s.valid?
  end

  test "color should be presence" do
    @s.color = nil
    assert_presence(@s, "color")
  end

  # devicon test
  test "devicon should be presence" do
    @s.devicon = nil
    assert_presence(@s, "devicon")
  end

  #test "devicon should be unique" do
  #  @s.save
  #  @r = new_skill
  #  @r.name = "JavaScript"
  #  assert_unique(@r, "devicon")
  #end
end
