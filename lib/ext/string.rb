class String

	# Transform newline separated str to .csv format.
	def to_csv
		data = self.split(/^\n/) # Split string to array of entries.
		data.map! { |d| d.split(/\n/) } # Split entries by line.
		data.map! { |d| d.map! { |l| l[/[0-9]+/] } } # Only keep numerical values.
		data.map! { |d| d.join(",") } # Join entries/values with ','
	end

end