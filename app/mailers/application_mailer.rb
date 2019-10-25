class ApplicationMailer < ActionMailer::Base
  default from: ENV['mailjet_default_from']
  layout 'mailer'
end
