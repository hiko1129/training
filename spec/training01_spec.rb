require 'spec_helper'

module T01
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

    # 異なるインターフェースでアクセスできるようにするクソメソッドも隠蔽できる
    def fuga
      @hoge.hogehogehoge
    end
  end 
end

# facade pattern はMVCのコントローラーのイメージが近い気がするので割愛

describe 'Fuga' do
  let(:fuga) { T01::Fuga.new }

  describe '#fuga' do
    it 'returns hoge' do
      expect(fuga.fuga).to eq('hoge')
    end
  end
end
