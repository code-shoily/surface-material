# SurfaceMaterial

A [Materialize](https://materializecss.github.io/materialize/) wrapper for [Surface UI](https://materializecss.github.io/materialize/).

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `surface_material` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:surface_material, "~> 0.1.0"}
  ]
end
```

## Development

* Install the deps with `mix deps.get`
* Install the JS libs with `cd assets; yarn`
* `mix esbuild default` to get the assets in the `catalogue` repository. (Make sure you're in the project directory. Type `cd ..` if you're still inside `assets` from the previous step)
* `mix dev` to run the development server for the catalogue
* Make changes to the components and test the API out in `http://localhost:4001` via examples or playgrounds.


