# frozen_string_literal: true

module ApplicationHelper
  def nav_link_to(name, path)
    classes = "inline-flex items-center px-3 py-2 text-sm font-medium rounded-full"
    classes += current_page?(path) ? " bg-black text-white" : " bg-gray-100 text-gray-700 hover:bg-gray-200"
    link_to name, path, class: classes
  end

  def formatted_datetime(value)
    value&.strftime("%B %d, %Y")
  end
end
