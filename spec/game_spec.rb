require 'spec_helper'

RSpec.describe DoragonBakuchi::Game do
  it 'return expected result with 666 dices' do
    expected = 
      "[666] Doragon-en ! Vous remportez 19 points"

    expect(described_class.new.result([6,6,6])).to eql(expected)
  end

  it 'return expected result with 555 dices' do
    expected = 
      "[555] Doragon-en ! Vous remportez 15 points"

    expect(described_class.new.result([5,5,5])).to eql(expected)
  end

  it 'return expected result with 444 dices' do
    expected = 
      "[444] Doragon-en ! Vous remportez 13 points"

    expect(described_class.new.result([4,4,4])).to eql(expected)
  end

  it 'return expected result with 333 dices' do
    expected = 
      "[333] Doragon-en ! Vous remportez 9 points"

    expect(described_class.new.result([3,3,3])).to eql(expected)
  end

  it 'return expected result with 222 dices' do
    expected = 
      "[222] Doragon-en ! Vous remportez 7 points"
    
    expect(described_class.new.result([2,2,2])).to eql(expected)
  end

  it 'return expected result with 111 dices' do
    expected = 
      "[111] Doragon-en ! Vous remportez 3 points"

    expect(described_class.new.result([1,1,1])).to eql(expected)
  end

  it 'return expected result with Sakana dices' do
    dices = [1,2,3,4,5,6]
    pair  = dices.sample
    rest  = dices - [pair]
    other = rest.sample
    dices = [pair,pair,other]

    expected = 
      "[#{dices.sort.join}] Sakana ! Vous remportez 1 point"
    
    expect(described_class.new.result(dices)).to eql(expected)
  end

  it 'return expected result with Tokage dices' do
    expected = 
      "[134] Tokage... Vous perdez 5 points"

    expect(described_class.new.result([3,1,4])).to eql(expected)
  end
end
