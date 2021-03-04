class HelloController < ApplicationController
  protect_from_forgery

  def index
    @title = "Title"
    @message = "Message..."
    @value = ''

    if params['msg'] != nil then
      @title = 'Hello, ' + params['msg'] + '!'
    else
      @title = 'this is sample page'
    end

    if request.post? then
      @title = "Result"
      @message = 'You typed:' + params['input1']

      @value = params['input1']
    else
      @value = ''
    end

  end

  def other
    redirect_to action: :index, params: {'msg': 'welcome! from other page'}
  end

end
