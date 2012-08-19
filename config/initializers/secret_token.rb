# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
CommunityApp::Application.config.secret_token = '61c9f130007eba6f03197d7537558dca02736312d28e552a4e368f48808d3cab4117e656c492a0d9e79e516a817c9e927abf76c1d5ddedc60a1401f8aa8d90c4'


CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',       # required
    :aws_access_key_id      => 'AKIAIG2HNJJWKARSISJQ',       # required
    :aws_secret_access_key  => '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',       # required
    #:region                 => 'eu-west-1'  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'lauremegan'                     # required
  #config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  config.fog_public     = false                                   # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
