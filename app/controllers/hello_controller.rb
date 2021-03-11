class HelloController < ApplicationController
  protect_from_forgery

  def index
    @title = "Title"
    @message = "Message..."
    @value = ''

    # if params['msg'] != nil then
    #   @title = 'Hello, ' + params['msg'] + '!'
    # else
    #   @title = 'this is sample page'
    # end

    if request.post? then
      @title = "Result"
      # for CheckBox
      if params['input1']
        @message = 'You Checked-1!'
      else
        @message = 'Not Checked!'
      # @message = 'You typed:' + params['input1']
      # @value = params['input1']
      end
    else
      @title = 'Index Page'
      @message = 'Check it...!'
      # @value = ''
    end

  end

  def other
    redirect_to action: :index, params: {'msg': 'welcome! from other page'}
  end

end
