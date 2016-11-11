module Bluepan
  class SyncProvincesJob < ApplicationJob

    def perform
      SyncProvinces.()
    end

  end
end
