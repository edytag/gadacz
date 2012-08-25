class Sayer

  def self.say(string, config)
    `echo "#{string}" | #{config['say_command']}`
  end

end
