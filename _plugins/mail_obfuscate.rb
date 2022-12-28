# https://gist.github.com/patrickfav/3f9127e25dd6538f0d682b89cbfaefd9

require "base64"
require "uri"

module ObfuscateMailAddress
  def obfuscate_email(input)
    base64Mail = Base64.strict_encode64(Addressable::URI.encode(input))

    # See http://techblog.tilllate.com/2008/07/20/ten-methods-to-obfuscate-e-mail-addresses-compared/
    output = "<a href=\"#\" "
    output += "data-contact=\"#{base64Mail}\" target=\"_blank\" "
    output += "onfocus=\"this.href = 'mailto:' + atob(this.dataset.contact)\">"
    output += "<script type=\"text/javascript\">document.write(atob(\"#{base64Mail}\"));</script></a>"
    return output
  end
end

Liquid::Template.register_filter(ObfuscateMailAddress)