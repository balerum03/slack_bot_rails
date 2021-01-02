require 'slack-ruby-bot'
# This class sends messages depending on the outcome
class AdditionView < SlackRubyBot::MVC::View::Base
  def addition_succeeded(result, question)
    say(channel: data.channel, text: "#{question} = #{result}")
  end

  def addition_failed
    say(channel: data.channel,
        text: "Sorry, I didn't understand that. I only add numbers in this format. eg: add 5+6 or 6+3")
  end
end
