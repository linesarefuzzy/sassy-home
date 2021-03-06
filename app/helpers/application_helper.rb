module ApplicationHelper
  MENU = [
    {:name => "Services", :link => "services"},
    {:name => "About", :link => "about"},
    {:name => "Our Work", :link => "our-work"},
    {:name => "Contact", :link => "contact"}
  ]

  def get_active_menu_item
    item = MENU.find{|m| m[:link] == params[:controller]}
    item.nil? ? "" : item[:name]
  end

  def get_menu
    MENU
  end

  def divider
    content_tag("div", :class => "divider"){}
  end

  def is_active?(link)
    params[:controller] == link.to_s ? "active" : nil
  end

  def make_title
    title = "Sassafras Tech Collective"
    active_menu = get_active_menu_item
    title += " - #{active_menu}" unless active_menu.blank?
    title
  end
end
