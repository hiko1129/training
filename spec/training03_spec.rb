require 'spec_helper'

# strategy pattern
module T03
  class Hoge
    def bark
      'hoge'
    end
  end

  class Fuga
    def bark
      'fuga'
    end
  end

  class Piyo
    def bark
      'piyo'
    end
  end

  class God
    def initialize(obj)
      @obj = obj
    end

    def execute
      @obj.bark
    end
  end
end

describe 'God' do
  let(:hoge) { T03::Hoge.new }
  let(:fuga) { T03::Fuga.new }
  let(:piyo) { T03::Piyo.new }

  describe '#execute' do
    context 'when injection hoge' do
      it 'returns hoge' do
        god = T03::God.new(hoge)
        expect(god.execute).to eq('hoge')
      end
    end

    context 'when injection fuga' do
      it 'returns fuga' do
        god = T03::God.new(fuga)
        expect(god.execute).to eq('fuga')
      end
    end

    context 'when injection piyo' do
      it 'returns piyo' do
        god = T03::God.new(piyo)
        expect(god.execute).to eq('piyo')
      end
    end
  end
end