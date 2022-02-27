def add_strings(num1, num2)
    i = num1.length - 1
    j = num2.length - 1
    sol = ''
    carry = 0
    while i >= 0 || j >= 0 || carry > 0
        sum = carry
        if i >= 0
            sum += num1[i].ord - '0'.ord
            i -= 1
        end
        if j >= 0
            sum += num2[j].ord - '0'.ord
            j -= 1
        end
        carry = sum/10
        sol = String(sum%10) + sol
    end
    
    sol
end

p add_strings("500","499")


    

