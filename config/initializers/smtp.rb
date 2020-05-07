ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV['GMAIL'],
  password: ENV['PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}