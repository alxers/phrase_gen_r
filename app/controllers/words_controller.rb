class WordsController < ApplicationController

  before_action :find_words, only: [:index, :all_words]
  
  def index
  end

  def all_words
    render json: { nouns: @nouns, adjectives: @adjectives }
  end

  def new
    @word = Word.new
  end

  def show
  end

  def edit
  end

  def create
    @word = Word.new(word: params[:word][:word], kind: params[:word][:kind])
    if @word.save
      redirect_to 'index'
    else
      redirect_to :back
    end
  end

  def destroy
    Word.find(params[:id]).destroy
    redirect_to :back
  end

  private

  def word_params
    params.require(:word).permit(:noun, :adjective)
  end

  def find_words
    @nouns = Word.nouns
    @adjectives = Word.adjectives
  end
end
