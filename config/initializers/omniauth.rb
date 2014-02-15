Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '243422825837871', 'e8c8bcda5221ea84020dcb6568e73387'
end