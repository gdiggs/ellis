class User < ActiveRecord::Base
  validates_presence_of :provider, :uid, :name

  def self.find_or_new_from_auth_info(auth_info)
    if (user = User.find_by_provider_and_uid(auth_info[:provider], auth_info[:uid])).nil?
      user = User.new(:provider => auth_info[:provider], :uid => auth_info[:uid], :name => auth_info[:info][:name])
    end

    user
  end
end
