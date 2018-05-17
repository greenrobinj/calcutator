#menu/ start program

# def menu
# end

# update to code includes making numbers only accept numbers.
# i couldnt find how to make sym anly accept sym? 


def first_number
    puts'Welcome to my cheap Calculator!'
    puts 'whats the first number?'
    
    begin
        #@first_number = gets.strip.to_i
         @first_number = Integer(gets) 
    rescue
         puts "*****NEED TO ENTER NUMBER ONLY****"
         first_number
    else
        op
    end
    
end



def op
    puts " number: #{@first_number},now enter operator"
   
    begin 
        @op = gets.strip.to_sym
    rescue
        puts "------NEEDS MATH OPERATION-----"
        op
    else
        second_number
    end
end
 

def second_number
    puts "Whats the next number you want?"
    begin 
        @second_number = Integer(gets)  #.strip.to_i
    rescue
        puts "----------NEEDS NUMBER ONLY-------"
        second_number
    else
        anwser
    end
end

def anwser
    @anwser =  @first_number.send(@op, @second_number)
    puts @anwser
    puts "do you need more math?"
    selection = gets.strip
   
    case selection
    when "yes"
        @first_number = @anwser
        op
    when "no"
        puts "go have a Coke and a Smile!"
    else
        puts "thats a yes or no kind of question!"
        anwser
    end
end
first_number