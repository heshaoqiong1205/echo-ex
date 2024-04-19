defmodule Grpc.Echo.V1.EchoRequest do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :message, 1, type: :string
end

defmodule Grpc.Echo.V1.EchoResponse do
  @moduledoc false

  use Protobuf, syntax: :proto3, protoc_gen_elixir_version: "0.12.0"

  field :message, 1, type: :string
end

defmodule Grpc.Echo.V1.Echo.Service do
  @moduledoc false

  use GRPC.Service, name: "grpc.echo.v1.Echo", protoc_gen_elixir_version: "0.12.0"

  rpc :UnaryEcho, Grpc.Echo.V1.EchoRequest, Grpc.Echo.V1.EchoResponse
end

defmodule Grpc.Echo.V1.Echo.Stub do
  @moduledoc false

  use GRPC.Stub, service: Grpc.Echo.V1.Echo.Service
end