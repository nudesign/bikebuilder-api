OmniAuth.config.logger = Rails.logger

app_id = "477724855659786"
secret = "25e3d8897f7b8e546a6e2dc22c659251"

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, app_id, secret
end