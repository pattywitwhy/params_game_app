class Api::ParamsGamesAppController < ApplicationController
  def return_name
    @name = params[:my_name].upcase

    if @name[0] == 'A'
      @message = 'Hey, your name starts with the first letter of the alphabet!'
    end

    render 'return_name.json.jbuilder'
  end

  def string_guessing_game
    @guess = params[:guess].to_i

    correct_number = 42
    if @guess > correct_number
      @message = "Guess Lower"
    elsif @guess < correct_number
      @message = "Guess Higher"
    else
      @message = "You got it, buddy."
    end

    render 'string_guessing_game.json.jbuilder'
  end
end
