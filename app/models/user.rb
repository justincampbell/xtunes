# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password        :string(255)
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :email, :password, :password_confirmation, :role


  has_many :purchases
  has_many :songs, :through => :purchases

  validates_uniqueness_of :email

  # def roles
  #   ROLES = %w[admin member guest]
  # end

  def role_symbols
    [role.to_sym]
  end

  def role?(role)
    roles.include? role.to_s
  end
end
