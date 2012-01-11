class Filter

	INVALID_IDS = Boutique.connection.select_all("SELECT url_bout FROM boutiques").to_s
  def self.matches?(request)
    end_of_path = request.path.split('/')[1]
    INVALID_IDS.include? end_of_path
  end

end
