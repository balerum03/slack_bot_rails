require 'slack-ruby-bot'
# This class sets the commands for the bot to respond to
class AdditionsController < SlackRubyBot::MVC::Controller::Base
  def add
    result = model.addition_logic(match[:expression])
    if result == 'Error'
      view.addition_failed
    else
      view.addition_succeeded(result, match[:expression])
    end
  end
end
