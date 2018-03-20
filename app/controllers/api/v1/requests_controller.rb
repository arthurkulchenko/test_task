class Api::V1::RequestsController < Api::V1::BaseController
  
  def get_amount_of_messages
    @login = params[:login]
    @password = params[:password]
    respond_with unread_messages_count: { login: @login, password: @password }
  end

end