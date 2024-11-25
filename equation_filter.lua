function RawBlock(el)
  if el.text:match("\\begin{equation}") then
    local math_content = el.text:match("\\begin{equation}(.-)\\end{equation}")
    return pandoc.MathBlock('DisplayMath', math_content)
  end
end