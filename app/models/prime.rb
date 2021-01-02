require 'slack-ruby-bot'

class PrimeNumber < SlackRubyBot::MVC::Model::Base
  def prime_logic(line)
    if line.to_i.prime?
      Prime.each(line.to_i).to_a
    else
      false
    end
  end
end
