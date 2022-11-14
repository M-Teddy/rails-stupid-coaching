class QuestionsController < ApplicationController

  def ask
    @questions = params[:ask]
  end

  def answer
    @questions = params[:ask]
    if @questions == "i am going to work"
      @reponse = "Great!"
    elsif @questions.end_with?("?")
      @reponse = "Silly question, get dressed and go to work!"
    else
      @reponse = "I don't care, get dressed and go to work!"
    end
  end
end
