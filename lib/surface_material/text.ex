defmodule SurfaceMaterial.Text do
  @moduledoc """
  Text component.
  """
  use SurfaceMaterial.Component

  prop heading, :integer, values: [1, 2, 3, 4, 5, 6]
  prop kind, :string, values: ~w/paragraph blockquote inline/

  slot default, required: true

  @doc """
  Should we truncate the text?
  """
  prop truncate, :boolean

  @doc """
  Use flow text on this component?
  """
  prop flow_text, :boolean

  def render(assigns) do
    if assigns.heading do
      render_heading(assigns)
    else
      render_kind(assigns.kind, assigns)
    end
  end

  defp render_kind(nil, assigns) do
    ~F"""
    <div class={text_classes(assigns)} {...@opts}>
      <#slot />
    </div>
    """
  end

  defp render_kind("paragram", assigns) do
    ~F"""
    <p class={text_classes(assigns)} {...@opts}>
      <#slot />
    </p>
    """
  end

  defp render_kind("blockquote", assigns) do
    ~F"""
    <blockquote class={text_classes(assigns)} {...@opts}>
      <#slot />
    </blockquote>
    """
  end

  defp render_kind("inline", assigns) do
    ~F"""
    <span class={text_classes(assigns)} {...@opts}>
      <#slot />
    </span>
    """
  end

  defp render_heading(assigns) do
    case assigns.heading do
      1 ->
        ~F"""
        <h1 class={text_classes(assigns)} {...@opts}>
          <#slot />
        </h1>
        """

      2 ->
        ~F"""
        <h2 class={text_classes(assigns)} {...@opts}>
          <#slot />
        </h2>
        """

      3 ->
        ~F"""
        <h3 class={text_classes(assigns)} {...@opts}>
          <#slot />
        </h3>
        """

      4 ->
        ~F"""
        <h4 class={text_classes(assigns)} {...@opts}>
          <#slot />
        </h4>
        """

      5 ->
        ~F"""
        <h5 class={text_classes(assigns)} {...@opts}>
          <#slot />
        </h5>
        """

      6 ->
        ~F"""
        <h6 class={text_classes(assigns)} {...@opts}>
          <#slot />
        </h6>
        """
    end
  end

  defp text_classes(assigns) do
    [
      Surface.css_class(
        truncate: assigns.truncate,
        "flow-text": assigns.flow_text
      )
      | base_classes(assigns)
    ]
  end
end
