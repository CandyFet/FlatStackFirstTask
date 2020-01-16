class Sequence
  def start
    loop do
      welcome
      generate_sequence(gets.chomp.to_i)
      abort unless repeat_invitation
    end
  end

  private

  def generate_string(str)
    str.chars.chunk { |c| c }.map { |c, x| [x.size, c] }.join
  end

  def generate_sequence(amount)
    num = '1'
    amount.times { puts num = generate_string(num) }
  end

  def welcome
    puts 'Please input amount of wanted rows of sequence'
  end

  def repeat_invitation
    puts 'Make another sequence? y/n'
    gets.chomp == 'y'.downcase
  end
end

Sequence.new.start