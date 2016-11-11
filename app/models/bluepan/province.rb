module Bluepan
  class Province < ActiveRecord::Base

    has_many :cities

  end
end
