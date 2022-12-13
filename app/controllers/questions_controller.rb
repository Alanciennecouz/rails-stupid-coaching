class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    if params[:answer].downcase == "i am going to work!"
      @coaching_answer = "Great!"
    elsif params[:answer].include?("?")
      @coaching_answer = "Silly question"
    else
      @coaching_answer = "I'dont care, get dressed and go to work!"
    end
  end
end
