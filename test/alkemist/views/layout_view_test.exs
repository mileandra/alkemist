defmodule Alkemist.LayoutViewTest do
  use ExUnit.Case, async: true

  alias Alkemist.LayoutView

  test "right_header_view returns value from config" do
    assert LayoutView.right_header_view() ==
             Keyword.get(Alkemist.Config.get(:views), :right_header)
  end

  test "views return value from config" do
    assert LayoutView.left_header_view() == Keyword.get(Alkemist.Config.get(:views), :left_header)

    assert LayoutView.right_header_view() ==
             Keyword.get(Alkemist.Config.get(:views), :right_header)

    assert LayoutView.sidebar_view() == Keyword.get(Alkemist.Config.get(:views), :sidebar)
    assert LayoutView.aside_view() == Keyword.get(Alkemist.Config.get(:views), :aside)
  end

  test "site_title returns value from config" do
    assert LayoutView.site_title() == Alkemist.Config.get(:title)
  end

  test "menu_items returns value from MenuRegistry" do
    assert LayoutView.menu_items() == Alkemist.MenuRegistry.menu_items()
  end
end