require 'hermann'
require 'hermann_lib'

module Hermann
  class Consumer
    attr_reader :topic, :brokers, :partition, :internal

    def initialize(topic, brokers, partition)
      @topic = topic
      @brokers = brokers
      @partition = partition
      @internal = Hermann::Lib::Consumer.new(topic, brokers, partition)
    end

    def consume
      begin
        proc = Proc.new # obtain reference to any passed block
      rescue
        proc = NIL
      end
      @internal.consume(proc)
    end
  end
end
