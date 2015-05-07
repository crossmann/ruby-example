require 'Gserver'

class LogServer < GServer
  def initialize
    super(12345)
  end

  def serve(client)
    client.puts get_log_File
  end

  private
  def get_log_File
    File.open("audio.log") do |log|
      log.seek(-500, IO::SEEK_END)
      log.gest
      log.read
    end

  end
end
server = LogServer.new
server.start.join


