require 'slack-ruby-bot'

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
