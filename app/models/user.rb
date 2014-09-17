require 'securerandom'
class User < ActiveRecord::Base
  has_many :books
  before_save :sava_sess
  def sava_sess
    self.session_stronge ||= SecureRandom.urlsafe_base64(20)
  end
end
