class UserMailer < ApplicationMailer
  def receive(email)
    raw_body = email.body.parts
    parsed_body = ''

    if email.body.multipart?
      email.body.parts.each do |p|
        puts "BLAHBLAH #{p.mime_type}"
        puts "BLAHBLAH2 #{p.body}"
        if p.mime_type == "text/html"
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

    contents = { subject: email.subject, parsed_body: parsed_body, raw_body: raw_body }
    contents
  end
end
