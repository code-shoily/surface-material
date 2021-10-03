defmodule SurfaceMaterial.Block do
  @moduledoc """
  Block component. Wrapper for `div` when used with default `SurfaceMaterial` props
  """
  use SurfaceMaterial.Component

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={base_classes(assigns)} {...@opts}>
      <#slot />
    </div>
    """
  end
end
