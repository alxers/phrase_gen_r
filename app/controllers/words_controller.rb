class WordsController < ApplicationController

  before_action :find_words, only: [:index, :all_words]
  before_action :find_word, only: [:edit, :update]

  def index
  end

  def all_words
    respond_to do |format|
      format.html
      format.json { render json: { nouns: @nouns, adjectives: @adjectives } }
    end
  end

  def new
    @word = Word.new
  end

  def edit
  end

  def update
    if @word.update_attributes(word_params)
      redirect_to action: :all_words
    else
      render action: :edit
    end
  end

  def create
    @word = Word.new(word: params[:word][:word], kind: params[:word][:kind])
    if @word.save
      redirect_to action: :index
    else
      flash[:error] = @word.errors.full_messages
      redirect_to :back
    end
  end

  def destroy
    Word.find(params[:id]).destroy
    redirect_to :back
  end

  private

  def word_params
    params.require(:word).permit(:noun, :adjective, :kind)
  end

  def find_words
    @nouns = Word.nouns
    @adjectives = Word.adjectives
  end

  def find_word
    @word = Word.find(params[:id])
  end
end
