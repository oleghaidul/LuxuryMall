class Year
	FILTER = ["winter", "spring", "autumn", "summer"]

  def self.matches?(request)
    end_of_path = request.path.split('/')[3]
    FILTER.include? end_of_path
  end
end
