require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    "#{square.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    string = ""
    @number.to_i.times do
      total = [string, @phrase].join
    end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    phrase = [@word1, @word2, @word3, @word4, @word5].join(" ")
    "#{phrase}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "add"
      total = @number1.to_i + @number2.to_i
    elsif @operation == "subtract"
      total = @number1.to_i - @number2.to_i
    elsif @operation == "multiply"
      total = @number1.to_i * @number2.to_i
    elsif @operation == "divide"
      total = @number1.to_i / @number2.to_i
    end
    "#{total.to_s}"
  end

end
