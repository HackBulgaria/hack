class String
  def underscorize
    gsub('::', '/').gsub(/([a-z])([A-Z])/, '\1_\2').downcase
  end
end
