defmodule SurfaceMaterial.Catalogue.Text.Example01 do
  use Surface.Catalogue.Example,
    subject: SurfaceMaterial.Text,
    catalogue: SurfaceMaterial.Catalogue,
    title: "Text (Heading)",
    height: "500px",
    direction: "vertical",
    container: {:div, class: "container"}

  def render(assigns) do
    ~F"""
    <Text heading={1}>Heading 1</Text>
    <Text heading={2}>Heading 2</Text>
    <Text heading={3}>Heading 3</Text>
    <Text heading={4}>Heading 4</Text>
    <Text heading={5}>Heading 5</Text>
    <Text heading={6}>Heading 6</Text>
    """
  end
end
