# frozen_string_literal: true

require "test_helper"

class HeaderComponentTest < ViewComponent::TestCase
  def test_component_renders_something_useful
    expected_value = "test"
    render_inline HeaderComponent.new(expected_value)
    assert_text(expected_value)
  end
end
