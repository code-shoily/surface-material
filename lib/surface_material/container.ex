defmodule SurfaceMaterial.Container do
  @moduledoc """
  Container is not strictly part of the grid but is important in laying out content. It allows you to center your page content.

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

  slot default

  def render(assigns) do
    ~F"""
    <div class="container" {...@opts}>
      <#slot />
    </div>
    """
  end
end
