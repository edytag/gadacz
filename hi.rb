require 'sinatra'

get '/:number' do
  number = params[:number].to_i
  string = ""
  while number >= 0 do
    string << "#{number} "
    number -= 1
  end


  Sayer.say string 
end

class Sayer

  def self.say(string)
    `echo "#{string}" | festival --tts`
  end

end
