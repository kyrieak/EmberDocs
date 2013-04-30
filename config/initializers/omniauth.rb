Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, '4831522c7710838fbb09', '98632635d8fead1dc6a36b0116892d48727a7475', { :scope => "user", :provider_ignores_state => true }
end

OmniAuth.config.logger = Rails.logger