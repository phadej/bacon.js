# build-dependencies: observable
# build-dependencies: bus

Bacon.EventStream :: loop = (f) ->
  # temporary
  bus = new Bus()
  observable = f(bus)
  bus.plug(observable)
  bus.plug(this)
  @merge(observable)