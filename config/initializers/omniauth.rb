OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['243422825837871'], ENV['e8c8bcda5221ea84020dcb6568e73387']
end