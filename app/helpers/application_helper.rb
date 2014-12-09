module ApplicationHelper
    # Prints a default title if we haven't specifically overridden it
  def full_title(page_title)
    base_title = "Integrated Marketing, Branding, Social, Digital | Louisville, KY"
    if page_title.empty?
      base_title
    else
      page_title
    end
  end
end
