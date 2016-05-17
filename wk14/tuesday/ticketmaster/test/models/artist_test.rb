require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test 'has a name' do
    assert_equal('Bonnie Tyler', artists(:one).name)
  end
end
