class User < ActiveRecord::Base

	def self.from_ommniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize_tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.name = auth.info.name
			user.oauth_token = auth.credentials.token
			user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
	end

end
