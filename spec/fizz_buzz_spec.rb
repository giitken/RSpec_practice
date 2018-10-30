require_relative '../lib/fizz_buzz'

describe 'fizz_buzz' do
#   context '3または5の倍数ではない数字が引数の場合' do
#     it '引数が返却される' do
#       expect(fizz_buzz(1)).to eq('1')
#       expect(fizz_buzz(2)).to eq('2')
#       expect(fizz_buzz(4)).to eq('4')
#     end
#   end
#
#   context '3の倍数が引数の場合' do
#     it 'Fizzが返却される' do
#       expect(fizz_buzz(3)).to eq('Fizz')
#       expect(fizz_buzz(6)).to eq('Fizz')
#     end
#   end
#
#   context '5の倍数が引数の場合' do
#     it 'Buzzが返却される' do
#       expect(fizz_buzz(5)).to eq('Buzz')
#       expect(fizz_buzz(10)).to eq('Buzz')
#     end
#   end
#
#  context '3および5の倍数が引数の場合' do
    it 'FizzBuzzが返却される' do
      expect(fizz_buzz(15)).to eq('Fizz Buzz')
    end
#  end
end
