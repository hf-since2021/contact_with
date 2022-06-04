class ContactsController < ApplicationController

  def index
  end

  def new
    @contact = Contact.new
  end

  def create
    Contact.create(contact_params)
    redirect_to action: :index
  end
  
  private

  def contact_params
    if params[:contact][:request_type_id] == "1"
      params.require(:contact).permit(:date, :request_type_id, :absent_type_id, :reason).merge(user_id: current_user.id)
    elsif params[:contact][:request_type_id] == "2" || params[:contact][:request_type_id] == "3"
      params.require(:contact).permit(:date, :request_type_id, :in_and_out_time_id, :reason).merge(user_id: current_user.id)
    end
  end
end
