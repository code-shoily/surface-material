defmodule SurfaceMaterial.Row do
  @moduledoc """
  Rows the columns live inside in the grid system.

  See Materialize documention here: https://materializecss.github.io/materialize/grid.html
  """
  use Surface.Component

  @doc """
  Additional classes
  """
  prop class, :css_class, default: []

  @doc """
  Additional attributes to add onto the generated element
  """
  prop opts, :keyword, default: []

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class="row" {...@opts}>
      <#slot />
    </div>
    """
  end
end
