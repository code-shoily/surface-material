defmodule SurfaceMaterial.Column do
  @moduledoc """
  The standard grid has 12 columns. No matter the size of the browser, columns will always have an equal width.

  See Materialize documention here: https://materializecss.github.io/materialize/grid.html
  """
  use SurfaceMaterial.Component
  use SurfaceMaterial.Props.Column

  def render(assigns) do
    ~F"""
    <div class={column_classes(assigns)} {...@opts}>
      <#slot />
    </div>
    """
  end
end
