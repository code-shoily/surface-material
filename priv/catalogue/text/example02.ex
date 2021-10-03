defmodule SurfaceMaterial.Catalogue.Text.Example02 do
  use Surface.Catalogue.Example,
    subject: SurfaceMaterial.Text,
    catalogue: SurfaceMaterial.Catalogue,
    title: "Text (Flow and Truncate)",
    height: "400px",
    direction: "horizontal",
    container: {:div, class: "container"}

  def render(assigns) do
    ~F"""
    <Text heading={5}>Normal Text</Text>
    <Text>Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.</Text>

    <Text heading={5}>Flow Text</Text>
    <Text flow_text>Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua.</Text>

    <Text heading={5}>Truncated Text</Text>
    <Text truncate>
    Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint obcaecat cupiditat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
    </Text>
    """
  end
end
