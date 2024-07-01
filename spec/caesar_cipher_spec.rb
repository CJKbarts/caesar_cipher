require_relative '../lib/caesar_cipher'

describe '#caesar_cipher' do
  context 'when given string is a single word' do
    it 'returns shifted word' do
      expect(caesar_cipher('string', 5)).to eql('xywnsl')
    end
  end

  context 'when given string contains multiple words' do
    it 'returns string of shifted words' do
      expect(caesar_cipher('what a string', 5)).to eql('bmfy f xywnsl')
    end
  end

  context 'when given words contains special characters' do
    it 'returns string of the shifted words' do
      expect(caesar_cipher('what a string!', 5)).to eql('bmfy f xywnsl!')
    end
  end

  context 'when given words containing different cases' do
    it 'returns shifted words with case preserved' do
      expect(caesar_cipher('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end
  end

  context 'when shift factor forces a wrap' do
    it 'returns shifted word wraped from z to a' do
      expect(caesar_cipher('xyz', 3)).to eql('abc')
    end
  end

  context 'when given a negative shift factor' do
    it 'returns word shifted backwards' do
      expect(caesar_cipher('def', -3)).to eql('abc')
    end
  end
end
