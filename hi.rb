$LOAD_PATH << './lib'
require 'sinatra'
require 'sayer'
require 'yaml'

config = YAML.load(File.read('config.yml'))

get '/:number' do
  number = params[:number].to_i
  string = ""
  while number >= 0 do
    string << "#{number} "
    number -= 1
  end

  Sayer.say string, config 
end

