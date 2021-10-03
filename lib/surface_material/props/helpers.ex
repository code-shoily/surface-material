defmodule SurfaceMaterial.Props.Helpers do
  @moduledoc """
  Helper props for various functionalities.

  See Materialize documentation for alignment, content hiding, formatting: https://materializecss.github.io/materialize/helpers.html
  See Materialize documentation for shadow: https://materializecss.github.io/materialize/shadow.html
  See Materialize documentation for typography: https://materializecss.github.io/materialize/typography.html
  """
  def __using__(_) do
    quote do
      @hide_or_show_sizes ~w/
        all
        small
        medium
        <medium
        >medium
        large
      /

      @doc """
      Vertical alignment of this component
      """
      prop vertical_align, :boolean

      @doc """
      Text alignment of this component
      """
      prop text_align, :string, values: ~w/left right center/

      @doc """
      Quick float (Left or Right) Note: !Important is used in underlying CSS
      """
      prop float, :string, values: ~w/left right/

      @doc """
      Hiding of components at size
      """
      prop hide, :string, values: @hide_or_show_sizes

      @doc """
      Show components at size
      """
      prop show, :string, values: @hide_or_show_sizes

      @doc """
      Should we truncate the text?
      """
      prop truncate, :boolean

      @doc """
      Is this component hoverable?
      """
      prop hoverable, :boolean

      @doc """
      Fallback to browser defaults
      """
      prop browser_default, :boolean

      @doc """
      Use flow text on this component?
      """
      prop flow_text, :boolean

      @doc """
      Shadow level of this component
      """
      prop shadow, :integer

      defp helper_classes(assigns) do
        Surface.css_class(
          "valign-wrapper": assigns.vertical_align,
          "#{assigns.text_align}-align": assigns.text_align,
          "#{assigns.float}": assigns.float,
          hide: assigns.hide == "all",
          "hide-on-#{assigns.hide}-only": assigns.hide in ~w/small large/,
          "hide-on-med-only": assigns.hide == "medium",
          "hide-on-med-and-up": assigns.hide == ">medium",
          "hide-on-med-and-down": assigns.hide == "<medium",
          "show-on-#{assigns.show}-only": assigns.show in ~w/small large/,
          "show-on-med-only": assigns.show == "medium",
          "show-on-med-and-up": assigns.show == ">medium",
          "show-on-med-and-down": assigns.show == "<medium",
          truncate: assigns.truncate,
          hoverable: assigns.hoverable,
          "browser-default": assigns.browser_default,
          "flow-text": assigns.flow_text,
          "z-depth-#{assigns.shadow}": assigns.shadow
        )
      end
    end
  end
end
