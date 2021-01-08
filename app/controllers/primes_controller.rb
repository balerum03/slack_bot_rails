require 'slack-ruby-bot'
# This class sets the commands for the bot to respond to
class PrimesController < SlackRubyBot::MVC::Controller::Base
  def prime?
    evaluation = model.prime_logic(match[:expression])

    if evaluation
      Rails.cache.write('message', evaluation)
      view.a_prime(evaluation)
    else
      view.not_prime(match[:expression])
    end
  end
end
