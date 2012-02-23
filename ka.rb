def kazu data
  File.open('/tmp/kazu/queue.log', 'w+') do |file|
      file.puts data
  end
end
