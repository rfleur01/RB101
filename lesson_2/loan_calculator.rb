def prompt(message)
  puts "=>#{message}"
end 

def valid_number?(number)
  float?(number) || integer?(number) || number > 0 || number != ''
end 

def float?(number)
  number.to_s.to_f == number
end 

def integer?(number)
  number.to_s.to_i == number
end 
 


prompt("Welcome to the Loan Calculator!")

loop do
  
  loan_amount = ''
  loop do
    prompt("Please enter your loan amount")
    loan_amount = gets.chomp.to_f
    
    if valid_number?(loan_amount)
      break
    else
      prompt("Please enter a valid positive number for your loan amount")
    end 
  end
  
  apr = ''
  loop do
    prompt("Please enter your Annual Percentage Rate (APR)")
    apr = gets.chomp.to_f / 100
    
      if valid_number?(apr)
      break
    else
      prompt("Please enter a valid positive number for your loan amount")
    end 
  end 
  
  loan_duration = ''
  loop do
    prompt('Please enter your loan duration')
    loan_duration = gets.chomp.to_i
    
      if valid_number?(loan_duration)
        break
      else
        prompt("Please enter a valid positive number for your loan amount")
      end 
    end 
        
  monthly_rate = (apr / 100) / 12
  
  loan_duration_months = loan_duration * 12
  
  monthly_payment = loan_amount * (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration_months)))
  
  prompt("Your monthly interest rate is #{monthly_rate}%")
  prompt("Your loan duration in months is #{loan_duration_months}")
  prompt("Your monthly payment is $#{format('%.2f', monthly_payment)}")
  
  prompt("Would you like to perform another calculation? (enter Y)")
    answer = gets.chomp
    break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye!")