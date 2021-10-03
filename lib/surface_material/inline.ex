defmodule SurfaceMaterial.Inline do
  @moduledoc """
  Inline component. Wrapper for `span` when used with default `SurfaceMaterial` props
  """
  use SurfaceMaterial.Component

  slot default

  def render(assigns) do
    ~F"""
    <span class={base_classes(assigns)} {...@opts}>
      <#slot />
    </span>
    """
  end
end
