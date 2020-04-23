ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: 587,
  domain: 'makinatr',
  user_name: Rails.application.credentials.sendgrid_user,
  password: Rails.application.credentials.sendgrid_pass,
  authentication: :login,
  enable_starttls_auto: true
}
