CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => Rails.application.credentials[:google_storage_key],
    :google_storage_secret_access_key => Rails.application.credentials[:google_storage_secret]
  }
  config.fog_public = true
  config.fog_directory = 'mediapaket'
end
