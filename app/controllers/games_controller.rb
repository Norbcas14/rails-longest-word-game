class GamesController < ApplicationController

  def new
    @letters = ("A".."Z").to_a.sample(10)
  end

  def score
    @words = params[:games]
    @letters = params[:letras]

    unless valid?(@letters, @words)
      @score = "the word #{@words} can't be built out of #{@letters}"
    end
  end

  def valid?(array_letras, palabra)
    palabra.split("").each { |letra| return false unless array_letras.include?(letra) }
    true
  end
end
