require 'spec_helper'

# adapter pattern

class Hoge
  def hogehogehoge
    'hoge'
  end
end

class Fuga
  def initialize
    @hoge = Hoge.new
  end


  # change interface
  def fuga
    @hoge.hogehogehoge
  end
end 

describe 'Fuga' do
  let(:fuga) { Fuga.new }
  it 'returns hoge' do
    expect(fuga.fuga).to eq('hoge')
  end
end
