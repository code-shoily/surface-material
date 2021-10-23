defmodule SurfaceMaterial.BlockTest do
  use SurfaceMaterial.Support.ConnCase, async: true

  @moduletag :block_component

  alias SurfaceMaterial.Block

  test "A block without any attributes is just a div" do
    html =
      render_surface do
        ~F"""
        <Block>Hello</Block>
        """
      end

    assert html =~ """
           <div>
             Hello
           </div>
           """
  end

  test "Create a block with background color" do
    html =
      render_surface do
        ~F"""
        <Block background_color="white">A block with white background color</Block>
        """
      end

    assert html =~ """
           <div class="white">
             A block with white background color
           </div>
           """
  end

  test "Create a block with text color" do
    html =
      render_surface do
        ~F"""
        <Block text_color="black">A block with black text</Block>
        """
      end

    assert html =~ """
           <div class="black-text">
             A block with black text
           </div>
           """
  end

  test "Create a block with darkened background" do
    html =
      render_surface do
        ~F"""
        <Block background_darken={3}>Darken Background to 3</Block>
        """
      end

    assert html =~ """
           <div class="darken-3">
             Darken Background to 3
           </div>
           """
  end

  test "Create a block with lightened background" do
    html =
      render_surface do
        ~F"""
        <Block background_lighten={3}>Lighten Background to 3</Block>
        """
      end

    assert html =~ """
           <div class="lighten-3">
             Lighten Background to 3
           </div>
           """
  end

  test "Create a block with darkened text" do
    html =
      render_surface do
        ~F"""
        <Block text_darken={3}>Darken Text to 3</Block>
        """
      end

    assert html =~ """
           <div class="text-darken-3">
             Darken Text to 3
           </div>
           """
  end

  test "Create a block with lightened text" do
    html =
      render_surface do
        ~F"""
        <Block text_lighten={3}>Lighten Text to 3</Block>
        """
      end

    assert html =~ """
           <div class="text-lighten-3">
             Lighten Text to 3
           </div>
           """
  end

  test "Create a block with colors" do
    html =
      render_surface do
        ~F"""
        <Block background_color="blue" text_color="orange" background_darken={2} text_lighten={4}>
          Hopefully a beautiful panel
        </Block>
        """
      end

    assert html =~ """
          <div class="blue darken-2 orange-text text-lighten-4">
            Hopefully a beautiful panel
          </div>
          """
  end
end
