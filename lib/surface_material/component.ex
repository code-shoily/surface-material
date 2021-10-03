defmodule SurfaceMaterial.Component do
  @moduledoc """
  Base component for SurfaceMaterial including common props
  """
  defmacro __using__(_) do
    quote do
      use Surface.Component
      use SurfaceMaterial.Props.{Colors, Helpers}

      @doc """
      Additional classes
      """
      prop class, :css_class, default: []

      @doc """
      Additional attributes to add onto the generated element
      """
      prop opts, :keyword, default: []

      def classes(assigns) do
        color_classes(assigns) ++ helper_classes(assigns) ++ assigns.class
      end
    end
  end
end
