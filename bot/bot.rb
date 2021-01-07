require 'slack-ruby-bot'
require_relative '../app/models/addition'
require_relative '../app/views/additions/addition'
require_relative '../app/models/prime'
require_relative '../app/views/primes/prime'

SlackRubyBot::Client.logger.level = Logger::WARN

class AdditionBot < SlackRubyBot::Bot
  help do
    title 'Addition Bot'
    desc 'This bot lets you perform simple arithmetic'

    command 'add' do
      desc 'Add numbers'
    end
  end
end

class PrimeBot < SlackRubyBot::Bot

  help do
    title 'Prime bot'
    desc 'This bot will tell you all the prime numbers below the entered number'

    command 'prime' do
      desc 'Displays prime numbers'
    end
  end
end

model_adition = Addition.new
view_adition = AdditionView.new
@controller_adition = AdditionsController.new(model_adition, view_adition)
@controller_adition.class.command_class.routes.each do |route|
  warn route.inspect
end

model_prime = PrimeNumber.new
view_prime = PrimeView.new
@controller_prime = PrimesController.new(model_prime, view_prime)
@controller_prime.class.command_class.routes.each do |route|
  warn route.inspect
end
