ActionMailer::Base.smtp_settings = {
  # address: "smtp.gmail.com",
  address: 'smtp.office365.com',
  port: 587,
  domain: 'office365.com',
  user_name: ENV['GMAIL'],
  password: ENV['PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}