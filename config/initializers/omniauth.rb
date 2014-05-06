OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1504114529817457'], ENV['c9dbe1427b7fe94bff945c1fbee38d79']
end


