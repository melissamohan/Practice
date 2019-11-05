class Greeting
  def greet(*name)
    if name.any?
      low_case = name.reject { |x| x == x.upcase }
      up_case= name.select { |r| r == r.upcase }
      up_case_string = up_case.join(",")
      name_string = name.join("")
      if name.length == 1 and name == low_case
        "Hello, #{name.join(",")}."
      elsif name.length == 1 and name == up_case
        "HELLO #{name.join(",")}!"
      elsif name.length == 2 and !name_string.include?(",") and !name_string.include?("\"")
        "Hello, #{name.first} and #{name.last}."
      elsif name.length > 2 and name == low_case
        "Hello, #{name[0..-2].join(", ")}, and #{name.last}."
      elsif name.length > 2 and name.include? up_case_string
        "Hello, #{low_case[0..-2].join(', ')} and #{low_case.last}. AND HELLO #{up_case.join('')}!"
      elsif name.length == 2 and name_string.include?(",") and  !name_string.include?("\"")
        separated_names = split_names(name)
        "Hello, #{separated_names[0..-2].join(', ')}, and#{separated_names.last}."
      elsif name.length == 2 and name_string.include?("\"")
        converted_names = escape_commas(name)
        "Hello, #{converted_names.first} and #{converted_names[1..-2].join("")},#{converted_names.last}."
      end
    else
      "Hello, my friend."
    end
  end

  def split_names(*names_to_split)
    string_of_names = names_to_split.join(",")
    separated_names = string_of_names.split(",")
    return separated_names
  end

  def escape_commas(*names_to_escape)
    all_names = names_to_escape.join(",")
    escaped_names = all_names.gsub("\"", "")
    separated_names = escaped_names.split(",")
    return separated_names
  end
end