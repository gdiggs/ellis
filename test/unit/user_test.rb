require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test 'finding a user by hash' do
    auth_info = { :provider => 'twitter', :uid => 'abc123' }
    assert_equal User.first, User.find_or_new_from_auth_info(auth_info)
  end

  test 'creating a user by hash' do
    auth_info = { :provider => 'twitter', :uid => 'abc1234', :info => { :name => 'Zaphod Beeblebrox' } }
    user = User.find_or_new_from_auth_info(auth_info)
    assert user.new_record?
    assert user.name = auth_info[:info][:name]
  end

end
