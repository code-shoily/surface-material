defmodule SurfaceMaterial.Column do
  @moduledoc """
  The standard grid has 12 columns. No matter the size of the browser, columns will always have an equal width.

  See Materialize documention here: https://materializecss.github.io/materialize/grid.html
  """
  use SurfaceMaterial.Component

  @sizes [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

  @doc """
  Default size
  """
  prop size, :integer, values: @sizes

  @doc """
  Offset by
  """
  prop offset, :integer, values: @sizes

  @doc """
  Push
  """
  prop push, :integer, values: @sizes

  @doc """
  Pull
  """
  prop pull, :integer, values: @sizes

  @doc """
  Size for small screen
  """
  prop size_s, :integer, values: @sizes

  @doc """
  Offset by for small screen
  """
  prop offset_s, :integer, values: @sizes

  @doc """
  Push for small screen
  """
  prop push_s, :integer, values: @sizes

  @doc """
  Pull for small screen
  """
  prop pull_s, :integer, values: @sizes

  @doc """
  Size for medium screen
  """
  prop size_m, :integer, values: @sizes

  @doc """
  Offset by for medium screen
  """
  prop offset_m, :integer, values: @sizes

  @doc """
  Push for medium screen
  """
  prop push_m, :integer, values: @sizes

  @doc """
  Pull for medium screen
  """
  prop pull_m, :integer, values: @sizes

  @doc """
  Size for large screen
  """
  prop size_l, :integer, values: @sizes

  @doc """
  Offset by for large screen
  """
  prop offset_l, :integer, values: @sizes

  @doc """
  Push for large screen
  """
  prop push_l, :integer, values: @sizes

  @doc """
  Pull for large screen
  """
  prop pull_l, :integer, values: @sizes

  slot default, required: true

  def render(assigns) do
    ~F"""
    <div class={column_classes(assigns)} {...@opts}>
      <#slot />
    </div>
    """
  end

  defp column_classes(assigns) do
    [
      Surface.css_class(
        col: true,
        "s#{assigns.size}": assigns.size,
        "offset-s#{assigns.offset}": assigns.offset,
        "push-s#{assigns.push}": assigns.push,
        "pull-s#{assigns.pull}": assigns.pull,
        "s#{assigns.size_s}": assigns.size_s,
        "offset-s#{assigns.offset_s}": assigns.offset_s,
        "push-s#{assigns.push_s}": assigns.push_s,
        "pull-s#{assigns.pull_s}": assigns.pull_s,
        "m#{assigns.size_m}": assigns.size_m,
        "offset-m#{assigns.offset_m}": assigns.offset_m,
        "push-m#{assigns.push_m}": assigns.push_m,
        "pull-m#{assigns.pull_m}": assigns.pull_m,
        "l#{assigns.size_l}": assigns.size_l,
        "offset-l#{assigns.offset_l}": assigns.offset_l,
        "push-l#{assigns.push_l}": assigns.push_l,
        "pull-l#{assigns.pull_l}": assigns.pull_l
      )
      | base_classes(assigns)
    ]
  end
end
