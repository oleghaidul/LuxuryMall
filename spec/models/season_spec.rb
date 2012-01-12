require 'spec_helper'

describe Season do
  describe 'associations' do
  	it 'belongs_to boutique' do
      boutique = Factory :boutique
      season = Factory :season
      season.boutique.should == boutique
    end
  end
end
