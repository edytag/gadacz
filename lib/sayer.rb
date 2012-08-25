class Sayer

  def self.say(string)
    `echo "#{string}" | festival --tts`
  end

end
