require 'spec_helper'

module T02
  # template method pattern
  # 子はメソッドを実装する
  # 親は組み合わせ方を知っているため子にメソッドの実装を促すだけで済む

  class AbstaractHoge
    def template
      test() + testtest
    end
  end

  class Hoge < AbstaractHoge
    def test
      'hoge'
    end

    def testtest
      'hogehoge'
    end
  end

  class SecondHoge < AbstaractHoge
    def test
      'fuga'
    end

    def testtest
      'fugafuga'
    end
  end
end

describe 'Hoge' do
  let(:hoge) { T02::Hoge.new }

  describe '#template' do
    it 'returns hogehogehoge' do
      expect(hoge.template).to eq('hogehogehoge')
    end
  end
end

describe 'SecondHoge' do
  let(:second_hoge) { T02::SecondHoge.new }

  describe '#template' do
    it 'returns fugafugafuga' do
      expect(second_hoge.template).to eq('fugafugafuga')
    end
  end
end
