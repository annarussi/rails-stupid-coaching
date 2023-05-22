# frozen_string_literal: true

class QuestionsController < ApplicationController
  def home; end

  def ask
  end

  def answer
    @question = params[:question]
    # The controller will need to read the question
    # from params and compute an instance variable @answer
    @answer = if @question == 'I am going to work'
                'Great!'
              elsif @question.include?('?')
                'Silly question, get dressed and go to work!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
