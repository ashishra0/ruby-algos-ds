require_relative '../exercises/capitalize'

describe 'capitalize' do
  it 'capitalizes the first letter of every word' do
    str = 'a perfect weather'
    str_two = 'hi there, how is it going'
    expect(capitalize(str)).to eq('A Perfect Weather')
    expect(capitalize(str_two)).to eq('Hi There, How Is It Going')
  end
end