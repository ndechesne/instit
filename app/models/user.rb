# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  name            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password

  validates :name,  presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }

  before_save { |user| user.email = email.downcase }
  before_save :create_remember_token

  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  has_many :classrooms, :dependent => :destroy

  def active_classrooms
    Classroom.where(:user_id => id).where(:state => 'active').all
  end
  
  private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end

end
