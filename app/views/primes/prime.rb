require 'slack-ruby-bot'
class PrimeView < SlackRubyBot::MVC::View::Base
  def a_prime(number)
    say(channel: data.channel, text: number.to_s)
  end

  def not_prime(expr)
    say(channel: data.channel, text: "#{expr} is not a prime number")
  end
end
