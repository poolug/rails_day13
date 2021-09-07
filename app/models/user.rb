class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: {case_sensitive: true}
    # validates :password, presence: true
    # validates :password, confirmation: true
    # before_save :bcrypt_password
    
    # def bcrypt_password
    #     self.password_digest = BCrypt::Password:create(password)
    # end
    

end
