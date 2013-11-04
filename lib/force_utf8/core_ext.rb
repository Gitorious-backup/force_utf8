class String
  def force_utf8
    ForceUtf8::Encode.encode(self)
  end

  def force_utf8!
    ForceUtf8::Encode.encode!(self)
  end
end
