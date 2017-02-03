class GuessesController < ApplicationController
  def show_guesses
  end
  def show_guess_by_id
    @guess_id = params[:guess_id]

    current_guess = Guess.find(@guess_id)
    @current_guess_string = current_guess.guess_string
    if (current_guess.second_number > current_guess.first_number) && (current_guess.third_number > current_guess.second_number)
      @result = "Yes!"
    else
      @result = "No."
    end

  end

  def new_form

  end
  def create_guess
    @first_number = params[:first_number]
    @second_number = params[:second_number]
    @third_number = params[:third_number]
    new_guess = Guess.new
    new_guess.first_number = @first_number
    new_guess.second_number = @second_number
    new_guess.third_number = @third_number
    new_guess.save
    @current_guess_string = new_guess.guess_string
    if (new_guess.second_number > new_guess.first_number) && (new_guess.third_number > new_guess.second_number)
      @result = "Yes!"
    else
      @result = "No."
    end
  end

  def edit_guess
    @guess_id = params[:guess_id]

    current_guess = Guess.find(@guess_id)
    @first_number = current_guess.first_number
    @second_number = current_guess.second_number
    @third_number = current_guess.third_number

  end

  def rewrite
    @first_number = params[:first_number]
    @second_number = params[:second_number]
    @third_number = params[:third_number]
    current_guess = Guess.find(params[:guess_id])
    current_guess.first_number = @first_number
    current_guess.second_number = @second_number
    current_guess.third_number = @third_number
    current_guess.save
    redirect_to("/guesses")
  end
end
