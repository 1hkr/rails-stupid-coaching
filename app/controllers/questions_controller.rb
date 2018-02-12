class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @answer = get_answer(params[:question])
  end

  def get_answer(question)
    if  question == "I am going to work"
      return "Great!"
    elsif question.include? "?"
      return "Silly question, get dressed and go to work!"
    else
      return  "I don't care, get dressed and go to work!"
    end
  end
end
