require 'rspec'
require_relative 'coder'

describe Coder do
  let(:coder) { Coder.new }
  it 'calls practice method until oh_one? becomes true' do
    expect(coder).to receive(:practice).at_least(:once)
    expect(coder).to receive(:oh_one?).and_return(false, false, false, true)
    coder.practice_until_oh_one
  end
end

