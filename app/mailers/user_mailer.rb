class UserMailer < ApplicationMailer
  def receive(email)
    raw_body = email.body
    parsed_body = ''

    if email.body.multipart?
      email.body.parts.each do |p|
        if p.mime_type == "text/plain"
          parsed_body = p.body
        end
      end
    end

    if email.has_attachments?
     email.attachments.each do |attachment|
       page.attachments.create({
         file: attachment,
         description: email.subject
       })
     end
    end

    contents = { subject: email.subject, body: parsed_body }
    contents
  end
end
