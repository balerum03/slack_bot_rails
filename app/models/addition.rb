require 'slack-ruby-bot'
# This class is for all the logic implementations
class Addition < SlackRubyBot::MVC::Model::Base
  attr_accessor :_line

  def addition_logic(line)
    self._line = line
    input = parse(_line)
    result = nil
    input.each do |x|
      if x.match?(/\A\p{Alnum}*\p{L}\p{Alnum}*\z/)
        result = 'Error'
        break
      end
    end
    result ||= input.map(&:to_i).reduce(:+)
  end

  private

  def parse(line)
    line.split('+')
  end
end
