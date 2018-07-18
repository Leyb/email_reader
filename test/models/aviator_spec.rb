require 'test_helper'

describe Aviator do
  it 'create new aviator with content' do
    aviator = Aviator.new
    aviator.save_content!('11111') #this method has update, so it'll save obj in database
  end
end