require 'test_helper'

class AnimalTest < ActiveSupport::TestCase
  test 'has a name' do
    assert_equal('Tiger', animals(:one).name)
  end
end
