class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    # If the message is I am going to work,
    #  the coach will answer Great!
    if @question == 'I am going to work'
      @answer = 'Great!'
    # If the message has a question mark ?
    # at the end, the coach will answer Silly
    # question, get dressed and go to work!.
    elsif @question.end_with?('?')
      @answer = 'get dressed and go to work!'
    # Otherwise he will answer I don't care,
    # get dressed and go to work!
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
