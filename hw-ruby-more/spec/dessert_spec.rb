require 'dessert'
require 'byebug'
require 'rspec/its'

describe Dessert, :pending => false do
  describe '[2 points] cake' do
    subject { Dessert.new('cake', 400) }
    its(:calories) { should == 400 }
    its(:name)     { should == 'cake' }
    it { should be_delicious }
    it { should_not be_healthy }
  end
  describe '[2 points] apple' do
    subject { Dessert.new('apple', 75) }
    it { should be_delicious }
    it { should be_healthy }
  end
  describe '[3 points] can set' do
    before(:each) { @dessert = Dessert.new('xxx', 0) }
    it 'calories' do
      @dessert.calories = 80
      expect(@dessert.calories).to eq(80)
    end
    it 'name' do
      @dessert.name = 'ice cream'
      expect(@dessert.name).to eq('ice cream')
    end
  end
end

describe JellyBean, :pending => false do
  describe '[2 points] when non-licorice' do
    subject { JellyBean.new('vanilla') }
    its(:calories) { should == 5 }
    its(:name)     { should match /vanilla jelly bean/i }
    it             { should be_delicious }
  end
  describe '[2 points] when licorice' do
    subject { JellyBean.new('licorice') }
    it { should_not be_delicious }
  end
  # MY TEST
  describe 'licorice correctly named' do
    subject { JellyBean.new('licorice') }
    its(:name)     { should match /licorice jelly bean/i }
  end
end
