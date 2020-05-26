require_relative 'config/environment'

class App < Sinatra::Base

  #Static
  get '/hello' do
    "Hello World!"
  end
  #dynamic
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get "/goodbye/:name" do
  	@name = params[:name]
  	"Goodbye, #{@name}."
  end

  get "/multiply/:num1/:num2" do
  	@product = params[:num1].to_i * params[:num2].to_i
  	"#{@product}"
  end

end