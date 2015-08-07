class User < ActiveRecord::Base
  has_many :collections

  validates_presence_of :provider, :uid, :name

  def self.find_or_new_from_auth_info(auth_info)
    if (user = User.find_by_provider_and_uid(auth_info[:provider], auth_info[:uid])).nil?
      user = User.new(:provider => auth_info[:provider], :uid => auth_info[:uid], :name => auth_info[:info][:name])
    end

    user
  end

  def test
    "Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door."
  end

  def duplication(string=nil)
    "Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door."
  end


  def issue_here(args={})
    unless args[:test]
      puts "Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
    Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
       Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
       Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
       Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
       Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door."
    end
  end

  def another_issue_here(args={})
    unless args[:test]
      puts "Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
    Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
       Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
       Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
       Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door.
       Once upon a midnight dreary, while I pondered weak and weary over many a quaint and curious volume of forgotten lore,
    while I nodded nearly napping, suddenly there came a tapping, as of someone gently rapping, rapping at my chamber door."
    end
  end


end
