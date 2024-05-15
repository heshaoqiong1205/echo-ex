{:ok, channel} = GRPC.Stub.connect("localhost:8090", interceptors: [GRPC.Client.Interceptors.Logger])

stream =
  channel
  |> Grpc.Echo.V1.Echo.Stub.bidirectional_streaming_echo()

Task.async(fn ->
              Enum.each(1..100, fn(_) -> GRPC.Stub.send_request(stream, %Grpc.Echo.V1.EchoRequest{:message=> "hello word"}) end)
          end)
{:ok, receive_stream} = GRPC.Stub.recv(stream)
replies = Enum.take(receive_stream, 100)
IO.inspect(replies)
