defmodule SurfaceMaterial.Catalogue.Column.Example01 do
  use Surface.Catalogue.Example,
    subject: SurfaceMaterial.Column,
    catalogue: SurfaceMaterial.Catalogue,
    title: "Grid 1",
    height: "300px",
    direction: "vertical",
    container: {:div, class: "container"}

  alias SurfaceMaterial.{Container, Row}
  def render(assigns) do
    ~F"""
    <Container>
      <Row>
        <Column size={12} background_color="blue" opts={style: "padding: 10"}>12-columns</Column>
        <Column size={6} background_color="red" opts={style: "padding: 10"}>6-columns</Column>
        <Column size={6} background_color="grey" opts={style: "padding: 10"}>6-columns</Column>
        <Column size={3} background_color="green" opts={style: "padding: 10"}>3-columns</Column>
        <Column size={3} background_color="teal" opts={style: "padding: 10"}>3-columns</Column>
        <Column size={3} background_color="cyan" opts={style: "padding: 10"}>3-columns</Column>
        <Column size={3} background_color="purple" opts={style: "padding: 10"}>3-columns</Column>
        <Column size={4} background_color="orange" opts={style: "padding: 10"}>3-columns</Column>
        <Column size={4} background_color="pink" opts={style: "padding: 10"}>3-columns</Column>
        <Column size={4} background_color="yellow" opts={style: "padding: 10"}>3-columns</Column>
      </Row>
    </Container>
    """
  end
end
