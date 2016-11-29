# Hello World Program in Ruby
class Polynomial
    def initialize(input)
        input_length = input.length
        output = ''
        sign = ''
        input.each_with_index do |ele, index|
            next if ele==0
            sign =''
            if (index!=0 && ele >0) 
                sign = '+'
            elsif ele == -1 && input_length !=index+1
                sign = '-'
            end
            poly = index == input_length - 1 ? '' : 'x^' + (input_length-index-1).to_s
            element = (ele == 1 || ele == -1) && input_length !=index+1 ? '' : ele.to_s
            output  << sign + element + poly
        end
        puts output
    end
    
end

Polynomial.new([-1,-1,-1,0, -4, 0])
