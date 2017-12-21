require File.expand_path("../../merge_sort", __FILE__)


describe '#merge_sort' do
  it "correctly sorts a basic array" do
    expect(merge_sort([4,3,1,2])).to eq([1,2,3,4])
  end
end
