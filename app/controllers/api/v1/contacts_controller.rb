# class Api::V1::ContactsController < ApplicationController
# end

module Api
  module V1
    class ContactsController < ActionController::API #ApplicationController
      def index
        contacts = Contact.all
        render json: { status: 'SUCCESS', message: 'Loaded posts', data: contacts }
      end
    end
  end
end