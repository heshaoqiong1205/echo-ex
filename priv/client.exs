{:ok, channel} = GRPC.Stub.connect("localhost:50051", interceptors: [GRPC.Client.Interceptors.Logger])

{:ok, reply} =
  channel
  |> Grpc.Echo.V1.Echo.Stub.unary_echo(Grpc.Echo.V1.EchoRequest.new(message: "hello word"))

# pass tuple `timeout: :infinity` as a second arg to stay in IEx debugging

IO.inspect(reply)
