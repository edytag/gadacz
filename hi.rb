$LOAD_PATH << './lib'
require 'sinatra'
require 'sayer'

get '/:number' do
  number = params[:number].to_i
  string = ""
  while number >= 0 do
    string << "#{number} "
    number -= 1
  end

  Sayer.say string 
end

