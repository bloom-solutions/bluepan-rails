module Bluepan
  class City < ActiveRecord::Base

    belongs_to :province

  end
end
