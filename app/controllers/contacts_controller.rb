class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render('contacts/index.html.erb')
  end

  def create
    @contact = Contact.create(:name => params[:name],
                              :email => params[:email],
                              :phone => params[:phone])
    render('contacts/success.html.erb')
  end

  def new
    render('contacts/new.html.erb')
  end

  def show
    @contact = Contact.find(params[:id])
    render('contacts/show.html.erb')
  end
end
