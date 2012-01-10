module HomeHelper

	def my_number_to_phone(number, options = {})
	  return unless number

	  begin
	    Float(number)
	  rescue ArgumentError, TypeError
	    raise InvalidNumberError, number
	  end if options[:raise]

	  number       = number.to_s.strip
	  options      = options.symbolize_keys
	  area_code    = options[:area_code]
	  delimiter    = options[:delimiter] || "-"
	  extension    = options[:extension]
	  country_code = options[:country_code]

	  if area_code
	    number.gsub!(/(\d{1,3})(\d{3})(\d{4}$)/,"(\\1) \\2#{delimiter}\\3")
	  else
	    number.gsub!(/(\d{0,3})(\d{3})(\d{4})$/,"\\1#{delimiter}\\2#{delimiter}\\3")
	    number.slice!(0, 1) if number.starts_with?('-')
	  end

	  str = []
	  str << "+#{country_code}#{delimiter}" unless country_code.blank?
	  str << number
	  str << " x #{extension}" unless extension.blank?
	  ERB::Util.html_escape(str.join)
	end

end
