require 'spec_helper'

describe Item do
  describe 'associations' do
  	it 'belongs_to season' do
      season = Factory :season
      item = Factory :item
      item.season.should == season
    end

    it 'belongs_to brand' do
      brand = Factory :brand
      item = Factory :item
      item.brand.should == brand
    end

    it 'belongs_to category' do
      category = Factory :category
      item = Factory :item
      item.category.should == category
    end

  end
end
