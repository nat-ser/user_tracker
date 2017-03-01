# frozen_string_literal: true
class User < ApplicationRecord
  validate :password_format, on: :create
  devise :database_authenticatable, :registerable, :validatable

  def password_format
    reg = /^(?=.*[A-Z])(?=.*[$@$!%*#?&\d])[A-Za-z\d$@$!%*#?&]{6,}$/
    return if reg.match?(password)
    errors.add(:password, "must have at least 6 letters, 1 uppercase letter, and 1 non-letter character")
  end
end
