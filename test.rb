class TestConsoleStream < String
  def write(message)
    self.<< message
  end
end

def test_block(&block)
  raise "Expecting a block" unless block_given?

  stream = TestConsoleStream.new
  previous_stream = $stdout.clone
  $stdout = stream
  block.call
  $stdout = previous_stream
  stream
end
