module ApplicationHelper
  def render_svg(name, options = {})
    options[:title] ||= name.underscore.humanize
    options[:aria] = true
    options[:nocomment] = true
    options[:class] = options.fetch(:styles, "fill-current text-gray-500")

    filename = "#{name}.svg"
    inline_svg_tag(filename, options)
  end
  
  def avatar_url_for(user, opts = {})
    if user.avatar.attached?
      user.avatar
    else
      hash = Digest::MD5.hexdigest(user.email.downcase)
      "https://secure.gravatar.com/avatar/#{hash}.png"
    end
  end
end
