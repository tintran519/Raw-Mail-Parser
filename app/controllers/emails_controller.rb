class EmailsController < ApplicationController
  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
  end

  def new
  end

  def create
    email = UserMailer.receive(params[:raw_email])
    if email == "N/A"
      redirect_to new_email_path, notice: "Not a valid email format"
    else
      @email = Email.create({ subject: email[:subject], body: email[:parsed_body] })
      redirect_to email_path(@email)
    end
  end
end
