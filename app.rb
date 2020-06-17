require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get "/square/:number" do
    @number = params[:number]
    square = @number.to_i * @number.to_i
    "#{square.to_s}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    @number.to_i.times do
      puts "#{@phrase}"
    end
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
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
