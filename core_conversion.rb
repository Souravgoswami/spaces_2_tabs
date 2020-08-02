String.define_method(:spaces_to_tabs) do
	each_line.map do |x|
		match = x.match(/^([^\S\t\n\r]*)/)[0]
		m_len = match.length
		(m_len > 0 && m_len % 2 == 0) ? ?\t * (m_len / 2) + x[m_len .. -1] : x
	end.join
end
