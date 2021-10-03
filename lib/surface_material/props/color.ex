defmodule SurfaceMaterial.Props.Colors do
  @moduledoc """
  Props for colors.

  See Materialize documentation here: https://materializecss.github.io/materialize/color.html
  """
  defmacro __using__(_) do
    quote do
      @colors ~w/
        red
        pink
        purple
        deep-purple
        indigo
        blue
        light-blue
        cyan
        teal
        green
        light-green
        lime
        yellow
        amber
        orange
        deep-orange
        brown
        grey
        blue-grey
        black
        white
      /

      @doc """
      Background color of this component
      """
      prop background_color, :string, values: @colors

      @doc """
      Background darkness of this component
      """
      prop background_darken, :integer

      @doc """
      Background lightness of this component
      """
      prop background_lighten, :integer

      @doc """
      Text color of this component
      """
      prop text_color, :string, values: @colors

      @doc """
      Text darkness of this component
      """
      prop text_darken, :integer

      @doc """
      Text lightness of this component
      """
      prop text_lighten, :integer

      defp color_classes(assigns) do
        Surface.css_class(
          "#{assigns.background_color}": assigns.background_color,
          "darken-#{assigns.text_darken}": assigns.background_darken,
          "lighten-#{assigns.text_lighten}": assigns.background_lighten,
          "#{assigns.text_color}-text": assigns.text_color,
          "text-darken-#{assigns.text_darken}": assigns.text_darken,
          "text-lighten-#{assigns.text_lighten}": assigns.text_lighten
        )
      end
    end
  end
end
