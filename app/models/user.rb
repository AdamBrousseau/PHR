class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_remember_token
  
	validates :email, presence: true, email: true #,uniqueness: true
	has_secure_password
	validates :password, length: { minimum: 6, too_short: "must have at least %{count} words" }
	
	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	private

		def create_remember_token
		  self.remember_token = User.encrypt(User.new_remember_token)
		end
end