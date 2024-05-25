{
  inputs,
  snowfall-inputs,
  lib,
}: {
  example = {
    # This attribute will be available as `lib.<namespace>.example.hello-example`.
    hello-example = "Hello, Example";
  };
}
