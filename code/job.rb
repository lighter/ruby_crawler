require 'rufus-scheduler'
require 'logger'

scheduler = Rufus::Scheduler.new

# output message to docker log immediately
$stdout.sync = true

logger = Logger.new($stdout)

scheduler.every '3s' do
  logger.info 'Hello... Rufus'
end

scheduler.join