class WordsController < ApplicationController
  
  def index
    @nouns = Word.nouns
    @adjectives = Word.adjectives
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
end
