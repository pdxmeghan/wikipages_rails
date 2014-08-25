class ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render('contacts/index.html.erb')
  end

  def create
    @contact = Contact.create(params[:contact])
    if @contact.save
      render('contacts/success.html.erb')
    else
      render('contacts/new.html.erb')
    end
  end

  def new
    @contact = Contact.new
    render('contacts/new.html.erb')
  end

  def show
    @contact = Contact.find(params[:id])
    render('contacts/show.html.erb')
  end

  def edit
    @contact = Contact.find(params[:id])
    render('contacts/edit.html.erb')
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update(params[:contact])
      render('contacts/success.html.erb')
    else
      render('contacts/edit.html.erb')
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    render('contacts/destroy.html.erb')
  end
end
