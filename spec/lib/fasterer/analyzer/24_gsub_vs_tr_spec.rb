require 'spec_helper'

describe Fasterer::Analyzer do

  let(:test_file_path) { RSpec.root.join('support', '24_gsub_vs_tr', 'main.rb') }

  it 'should detect gsub 4 times' do
    analyzer = Fasterer::Analyzer.new(test_file_path)
    analyzer.scan
    expect(analyzer.errors[:gsub_vs_tr].count).to eq(4)
  end
end
