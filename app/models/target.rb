class Target < ActiveRecord::Base
  attr_accessible :name

  before_create :set_cat_class

  def set_cat_class
  	self.cat_class=self.name.parameterize.underscore
  end
end
