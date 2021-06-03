=begin

Example usage

ruby SurveyProgram coffee.survey

Did you like our Latte? [Y/n]
Y <enter>

Rate our Customer Service 0 to 10 [0..10]
8 <enter>

Generating Report...Done!

Thanks for filling out the Coffee Survey!

SURVEY OUTPUT:

Y
8
=end
class SurveyProgram 
in_choice = false


def initialize()
    @results = ""
end

def process_query(query, line)
    keywords = query.split(" ")
    case keywords[0]
    when "bool"
        puts "#{keywords[1].gsub("_", " ")} [Y/n]"
        @results += gets + "\n"
    when "range"
        puts "#{keywords[2].gsub("_", " ")} [0..#{keywords[1]}]" 
        @results += gets + "\n"
    when "defer"
        gets
    when "puts"
        puts "#{keywords[1].gsub("_", " ")}"
    when "choice"
        puts "#{keywords[1].gsub("_", " ")}"
        in_choice = true
    when "option"
        if in_choice
            puts "#{keywords[1]}: #{keywords[2].gsub("_", " ")}"
        end
    when "endchoice"
        @results += gets + "\n"
    when "endsurvey"
        puts "\n\nGenerating Survey Report..."
        File.new(ARGV[1].to_s + ".report", "w").write(@results)
    end
end

end

file_handler = File.new(ARGV[1].to_s + ".survey", "r")
input = file_handler.read()

survey_program = SurveyProgram.new()

input.split("\n").each_with_index {
    |value, line|
    survey_program.process_query(value, line)
}