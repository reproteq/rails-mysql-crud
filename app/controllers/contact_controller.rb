class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.save
    redirect_to(:action => 'index')
   end
  
  def index
    @contact = Contact.all
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def edit
     @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    @contact.update_attributes(contact_params)
    redirect_to(:action =>'index')
  end

   
    
  def delete
    @contact = Contact.find(params[:id])
    #si comentamos lineas de abajo salta delete.html.erb
    @contact.destroy
    redirect_to(:action => 'index')
  end


  def destroy
    @contact = Contact.find(params[:id])
   # @contact.destroy(contact_params)
   # @contact = Task.find(params[:id])
   # @phone = Action.where(contact_id: @contact)
   # @phone.each do |t|
   #   t.destroy
   # @email = Action.where(contact_id: @contact)
   # @email.each do |t|
   #   t.destroy
   #
    @contact.destroy
    redirect_to(:action => 'index')
  end

  private
    def contact_params
      params.require(:contact).permit(:id,:nombre, :apellidos, :calle, :poblacion, :provincia, :pais)
    end


end