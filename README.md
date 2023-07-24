# OpentelemetryBroadway

OpentelemetryBroadway uses [telemetry](https://hexdocs.pm/telemetry/) handlers to
create `OpenTelemetry` spans from [Broadway](https://hexdocs.pm/broadway/) events.

## Installation

```elixir
def deps do
  [
    {:opentelemetry_broadway, "~> 0.1"}
  ]
end
```

In your application start:

```elixir
def start(_type, _args) do
  OpentelemetryBroadway.setup()

  # ...
end
```

## Usage

A new trace is automatically started when a Broadway message is processed.

Handlers for message batches isn't currently supported.
