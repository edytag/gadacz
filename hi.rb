$LOAD_PATH << './lib'
require 'sinatra'
require 'sayer'
require 'yaml'
require 'net/http'
require 'uri'

config = YAML.load(File.read('config.yml'))

get '/favicon.ico' do
end

get '/:number' do
  number = params[:number].to_i
  string = ""
  while number >= 0 do
    string << "#{number} "
    number -= 1
  end

  Sayer.say string, config

  number = (rand 10) + 1
  Net::HTTP.get_print URI.parse("#{config['target']}/#{number}")
end

