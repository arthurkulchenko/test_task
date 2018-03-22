class Api::V1::RequestsController < Api::V1::BaseController
  
  def get_amount_of_messages
    # @login = params[:login]
    # @password = params[:password]
    @login = "notthepurp"
    @password = "unaceptable"
    @forum_address = 'https://www.reddit.com/r/adventuretime/'
    @result = SeleniumCall.find_out_message_amount @forum_address, @login, @password
    respond_with unread_messages_amount: @result
  end

end