require 'slack-ruby-bot'
require_relative '../app/models/addition'
require_relative '../app/views/additions/addition'

SlackRubyBot::Client.logger.level = Logger::WARN

class AdditionBot < SlackRubyBot::Bot
  help do
    title 'Addition Bot'
    desc 'This bot lets you perform simple arithmetic'

    command '=' do
      desc 'Add numbers'
    end
  end
end
  model = Addition.new
  view = AdditionView.new
  otracosa = AdditionBot.new
  @controller = AdditionsController.new(model, view)
  @controller.class.command_class.routes.each do |route|
    warn route.inspect
  end
