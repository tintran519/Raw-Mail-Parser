class UserMailer < ApplicationMailer
  def receive(email)
    if email.body.present? and email.body.parts.any?
      encoding = email.html_part.content_type_parameters['charset']
      contents = { subject: email.subject, parsed_body: email.html_part.body.decoded.force_encoding(encoding).encode('UTF-8') }
    elsif email.body.present? and email.body.parts.blank?
      contents = { subject: email.subject, parsed_body: email.body.to_s }
    end
      contents
  end
end
