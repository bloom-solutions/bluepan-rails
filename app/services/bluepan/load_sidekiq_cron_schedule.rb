module Bluepan
  class LoadSidekiqCronSchedule

    def self.call
      schedule_file = Bluepan::Engine.root.join("config", "sidekiq_cron.yml")

      return nil if !File.exists?(schedule_file) || !Sidekiq.server?

      Sidekiq::Cron::Job.load_from_hash(YAML.load_file(schedule_file))
    end

  end
end
