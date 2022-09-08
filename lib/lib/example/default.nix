{ inputs
, snowfall-inputs
, lib
}:

{
  example = {
    # This attribute will be available as `lib.example.hello-example`.
    hello-example = "Hello, Example";
  };
}
