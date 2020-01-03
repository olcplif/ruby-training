=begin
The Western Suburbs Croquet Club has two categories of membership, Senior and Open.
They would like your help with an application form that will tell prospective
members which category they will be placed.
To be a senior, a member must be at least 55 years old and have a handicap
greater than 7. In this croquet club, handicaps range from -2 to +26;
the better the player the lower the handicap.
=end

def openOrSenior(data)
  
end

Test.assert_equals(openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]]),['Open', 'Senior', 'Open', 'Senior'])
Test.assert_equals(openOrSenior([[3, 12],[55,1],[91, -2],[54, 23]]),['Open', 'Open', 'Open', 'Open'])
Test.assert_equals(openOrSenior([[59, 12],[55,-1],[12, -2],[12, 12]]),['Senior', 'Open', 'Open', 'Open'])
Test.assert_equals(openOrSenior([[16, 23],[73,1],[56, 20],[1, -1]]),['Open', 'Open', 'Senior', 'Open'])
