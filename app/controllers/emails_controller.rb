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
    @email = Email.create({ subject: email[:subject], body: email[:parsed_body] })
    redirect_to email_path(@email)
  end
end
