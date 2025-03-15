# frozen_string_literal: true

class User < ActiveRecord::Base
  attr_accessor :password

  attr_accessible :name, :email, :password, :password_confirmation, :encrypted_password
  validates_uniqueness_of :email
  validates_presence_of :email
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates_presence_of :name
  validates :password, presence: true, confirmation: true, length: { within: 6..40 }, on: :create

  before_create :encrypt_password

  def has_password?(pwd)
    encrypted_password == ::User.encrypt(pwd)
  end

  def self.authenticate(email, pwd)
    user = find_by_email(email)
    return nil  if user.nil?
    return user if user.has_password?(pwd)
  end

  def self.authenticate_with_cookie(id, cookie)
    user = find_by_id(id)
    user && ::User.encrypt(user.encrypted_password) == cookie ? user : nil
  end

  def cookie
    ::User.encrypt(encrypted_password)
  end

  def to_s
    "#{name} <#{email}>"
  end

  private

  def encrypt_password
    self.encrypted_password = ::User.encrypt(password)
  end

  def self.encrypt(string)
    Digest::SHA2.hexdigest(string)
  end
end
