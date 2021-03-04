class HelloController < ApplicationController

  def index
    @title = "Title"
    @message = "Message..."

    if params['msg'] != nil then
      @title = 'Hello, ' + params['msg'] + '!'
    else
      @title = 'this is sample page'
    end
  end

  def other
     redirect_to action: :index, params: {'msg': 'welcome! from other page'}
  end

end
