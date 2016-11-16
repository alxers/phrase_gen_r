class WordsController < ApplicationController
  
  def index
    @nouns = Word.nouns
    @adjectives = Word.adjectives
    render json: { nouns: @nouns, adjectives: @adjectives }
  end

  def edit
  end

  def create
  end

  def destroy
  end

  private

  def word_params
    params.require(:word).permit(:noun, :adjective)
  end
end
