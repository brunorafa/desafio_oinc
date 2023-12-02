defmodule DesafioOinc.App do
  use Commanded.Application,
    otp_app: :desafio_oinc,
    event_store: [adapter: Commanded.EventStore.Adapters.InMemory]

  router(DesafioOinc.EventRouter)
end
