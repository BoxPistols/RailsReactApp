class HelloController < ApplicationController
  #protect_from_forgery

  def index

    if params['msg'] != nil then
      @msg = '来たね、 ' + params['msg'] + '！'
    else
      @msg = 'This is Default Title'
    end

    if request.post? then
      @title = "Result"
      @msg = 'You type:' + params['input1']
      @value = params['input1']
    else
      @title = "Title"
      @msg = "Type Here..."
      @value = ''

      # for CheckBox
      # if params['input1']
      #     @message = 'You Checked-1!'
    #   else
    #     @message = 'Not Checked!'
    #   # @message = 'You typed:' + params['input1']
    #   # @value = params['input1']
    #   end
    # else
    #   @title = 'Index Page'
    #   @message = 'Check it...!'
    #   # @value = ''
    end

  end

  def other
    redirect_to action: :index, params: {'msg': 'Come to Other Page'}
  end

end
