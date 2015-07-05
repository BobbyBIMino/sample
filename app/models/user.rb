class User < ActiveRecord::Base
	#验证用户是否存在
	validates :name, presence: false,length:{maximum:50}
	#验证邮箱格式是否正确
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }
end
