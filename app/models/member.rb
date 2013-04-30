class Member < ActiveRecord::Base
  attr_accessible :name, :uid

  has_many :assertions

  # def self.find_by_auth(auth)
  #   uid = auth[:uid]
  #   member = where({ :uid => uid })
  #   member.empty? create({ :uid => uid }) : member.first
  # end

  # before_save :encrypt_password
  
  # validates :password, :confirmation => true
  # validates :password, :presence => true, :on => :create
  # validates :email, :presence => true, :uniqueness => true

  # def encrypt_password
  #   if password.present?
  #     self.password_salt = BCrypt::Engine.generate_salt
  #     self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  #   end
  # end

  # def self.authenticate(email_entry, password_entry)
  #   member = find_by_email(email_entry)
  #   if member && member.password_hash == BCrypt::Engine.hash_secret(password_entry, member.password_salt)
  #     member
  #   else
  #     nil
  #   end
  # end

end