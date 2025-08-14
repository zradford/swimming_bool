require "test_helper"

class TestSwimmingBool < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::SwimmingBool::VERSION
  end

  def test_that_it_can_yes
    assert yes
  end

  def test_yes_please
    assert yes_please
  end

  def test_that_it_can_no
    refute no
  end

  def test_no_thanks
    refute no_thanks
  end
end
