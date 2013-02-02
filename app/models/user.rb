class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :g_id, :u_id, :u_name,:password_digest, 
    :password, :password_confirmation
end
