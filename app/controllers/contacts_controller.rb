class ContactsController < ApplicationController

  def index
    @contacts = Contact.all
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
      params.require(:contact).permit(
            :date, :request_type_id, :absent_type_id, :reason
          ).merge(
            user_id: current_user.id, name: current_user.name, sync_status_id: 1
          )
    elsif params[:contact][:request_type_id] == "2"
      time_id = params[:contact][:in_time_id]
      params.require(:contact).permit(
            :date, :request_type_id, :reason
          ).merge(
            user_id: current_user.id, name: current_user.name, in_and_out_time_id: time_id, sync_status_id: 1
          )
    elsif params[:contact][:request_type_id] == "3"
      time_id = params[:contact][:out_time_id]
      params.require(:contact).permit(
            :date, :request_type_id, :reason
          ).merge(
            user_id: current_user.id, name: current_user.name, in_and_out_time_id: time_id, sync_status_id: 1
          )
    end
  end
end
