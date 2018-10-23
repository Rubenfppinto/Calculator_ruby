print "Would you like to do a regular, advanced, BMI or trip operation? "
$stdout.flush
operation = gets.chomp.downcase

if operation!="regular" && operation!="advanced" && operation!="bmi" && operation!="trip"
  print "Wrong operation"
end

if operation=="regular" #REGULAR CALCULATION
  print "What operation would you like to do (+,-,/,*) "
  $stdout.flush
  regular = gets.chomp

  case regular
    when "+"
      print "What is the first number? "
      $stdout.flush
      num1 = gets.chomp.to_i
      print "What is the second number? "
      $stdout.flush
      num2 = gets.chomp.to_i
      puts result = "The sum is #{num1 + num2}"
    when "-"
      print "What is the first number? "
      $stdout.flush
      num1 = gets.chomp.to_i
      print "What is the second number? "
      $stdout.flush
      num2 = gets.chomp.to_i
      puts result = "The subtraction is #{num1 - num2}"

    when "/"
      print "What is the first number? "
      $stdout.flush
      num1 = gets.chomp.to_i
      print "What is the second number? "
      $stdout.flush
      num2 = gets.chomp.to_i
      if num2==0
        puts "Cannot divide by 0"
      end
      puts result = "The quotient is #{num1 / num2}"

    when "*"
      print "What is the first number? "
      $stdout.flush
      num1 = gets.chomp.to_i
      print "What is the second number? "
      $stdout.flush
      num2 = gets.chomp.to_i
      puts result = "The product is #{num1 * num2}"
    else
      puts "Wrong input"
  end
  elsif operation == "advanced" #ADVANCED CALCULATION
    print "What operation would you like to do (exp or sqroot) "
    $stdout.flush
    advanced = gets.chomp

    case advanced
      when "exp"
        print "What is the number? "
        $stdout.flush
        num = gets.chomp.to_i
        print "What is the exponent? "
        $stdout.flush
        pow = gets.chomp.to_i
        puts result = "The power is #{num ** pow}"

      when "sqroot"
        print "What is the number? "
        $stdout.flush
        num = gets.chomp.to_i
        puts result = "The square root is #{Math.sqrt(num)}"
      else
        puts "Wrong input"
      end

  elsif operation == "bmi" #BMI CALCULATION
    print "Would you like the operation in imperial or metric system? (use imp or met) "
    $stdout.flush
    bmi_system = gets.chomp

    case bmi_system
    when "met"
      print "What is your weight in KG? "
      $stdout.flush
      weight = gets.chomp.to_f
      print "What is your height in meters? "
      $stdout.flush
      height = gets.chomp.to_f
      result = (weight/height)/height
      puts "Your BMI is #{result.round(2)} kg/m2"

    when "imp"
      print "What is your weight in pounds? "
      $stdout.flush
      weight = gets.chomp.to_f
      print "What is your height in feet? "
      $stdout.flush
      height = gets.chomp.to_f
      result = ((weight/height)/height)*703
      puts "Your BMI is #{result.round(2)}"
    end

  elsif operation == "trip"
    print "What is the distance in miles? "
    $stdout.flush
    distance = gets.chomp.to_f
    print "What is the fuel effiency (mpg) "
    $stdout.flush
    f_effiency= gets.chomp.to_f
    print "What is the cost per gallon "
    $stdout.flush
    cost_p_gallon = gets.chomp.to_f
    print "What is the speed? "
    $stdout.flush
    speed = gets.chomp.to_f
end
