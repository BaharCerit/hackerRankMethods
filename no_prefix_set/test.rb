require_relative 'no_prefix_set'

describe 'noPrefix' do
  it 'should return the first word that is a prefix of another word' do
    expect(noPrefix(['a', 'b', 'c', 'ab'])).to eq(['BAD SET', 'ab'])
    expect(noPrefix(['a', 'b', 'c', 'abc'])).to eq(['BAD SET', 'abc'])
    expect(noPrefix(['a', 'b', 'c', 'ab', 'abc'])).to eq(['BAD SET', 'ab'])
  end

  it 'should return "GOOD SET" if no word is a prefix of another word' do
    expect(noPrefix(['a', 'b', 'c'])).to eq(['GOOD SET'])
  end
end
