# frozen_string_literal: true

module ApplicationHelper
  def nav_link_to(name, path, options = {})
    classes = ["nav-link", (current_page?(path) ? "active" : nil), options[:class]].compact.join(" ")
    link_to name, path, options.merge(class: classes)
  end

  def format_date(date)
    date.strftime("%b %d, %Y") if date.present?
  end
end
