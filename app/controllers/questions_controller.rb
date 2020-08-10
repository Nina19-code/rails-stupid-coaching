class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answers = ['Great!', 'Silly question, get dressed and go to work!', 'I don\t care, get dressed and go to work!']
    @questions = ['I am going to work', '?']
    input = params[:question]

    if @questions[1] == input.last
      @answer = @answers[1]
    elsif @questions[0] == input
      @answer = @answers[0]
    else
      @answer = @answers[2]
    end
  end
end
