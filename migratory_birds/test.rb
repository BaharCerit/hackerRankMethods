require_relative 'migratory_birds'

describe 'migratoryBirds' do
  it 'returns the most frequently sighted bird' do
    expect(migratoryBirds([1, 4, 4, 4, 5, 3])).to eq(4)
  end

  it 'returns the smallest bird type if there are multiple most frequent birds' do
    expect(migratoryBirds([1, 1, 2, 2, 3, 3])).to eq(1)
  end
end
