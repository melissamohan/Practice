class Cars
  def initialize(make,model,year)
    @make = make
    @model = model
    @year = year
  end

  def description
    puts "Make: #{@make}, Model: #{@model}, Year: #{@year}"
  end
end

honda = Cars.new("Honda","Civic","2015")
toyata = Cars.new("Toyata","Corolla","2004")

honda.description
toyata.description
