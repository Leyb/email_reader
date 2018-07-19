require 'test_helper'

class AviatorTest < ActiveSupport::TestCase

  def setup
    @aviator = Aviator.new
    @aviator.save_content!('11111')
  end

  test "should be valid" do
    assert @aviator.present?
    assert @aviator.body.present?
    assert @aviator.texts.present?
  end
end