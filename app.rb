require_relative 'config/environment'

class App < Sinatra:Base
  
  get '/hello/"name' do
    
    
  end
  
  get '/medicines/:id' do
  @medicine = all_the_medicines.select do |medicine|
    medicine.id == params[:id]
  end.first
  erb :'/medicines/show.html'
end
end