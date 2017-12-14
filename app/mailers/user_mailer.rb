class UserMailer < ApplicationMailer
  def receive(email)
    # raw_body = email.body.parts
    # parsed_body = ''

    puts "HELLOWORLD.EMAILBODY? #{email.html_part.body.decoded.inspect}"
    puts "HELLOWORLD.MULTI? #{email.body.multipart?}"
    puts "HELLOWORLDBODY.PARTS #{email.body.parts.inspect}"
    puts "HELLOWORLDMULTI LENGTH #{email.body.parts.length}"
    # if email.body.multipart?
    #   email.body.parts.each do |p|
    #     puts "BLAHBLAHCONTENT #{p.content_type}"
    #     puts "BLAHBLAHMIME #{p.mime_type}"
    #     puts "BLAHBLAHBODY #{p.body}"
    #     if p.mime_type == "text/html" || p.mime_type == "text/plain"
    #       parsed_body = p.body
    #     end
    #   end
    # end

    # if email.has_attachments?
    #  email.attachments.each do |attachment|
    #    page.attachments.create({
    #      file: attachment,
    #      description: email.subject
    #    })
    #  end
    # end
    encoding = email.html_part.content_type_parameters['charset']
    contents = { subject: email.subject, parsed_body: email.html_part.body.decoded.force_encoding(encoding).encode('UTF-8'), raw_body: '' }
    contents
  end
end
