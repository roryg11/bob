class Bob
  # If the statement is ordinary, return 'whatever'
  # If the statement is all caps return "Whoa, chill out!"
  # If statement is gibberish, return "Whoa, chill out!"
  # If statement contains ? return "Sure."
  # If statement has numbers "1, 2, 3" return "Sure."
  # If statement has a number and a ? return "Whatever."
  # If statement has special characters, return "Whoa, chill out!"
  # When silent, give "Fine. Be that way!"
  # When silent for up to 10 pieces, return "Fine. Be that way!"
  def hey (statement)
    if statement == statement.upcase && statement=~ /[A-Z]/
      "Whoa, chill out!"
      # when you yell at him, this is how Bob responds
    elsif statement[-1] == "?"
      # statement.end_with?("?")--> this is a boolean
      "Sure."
      # When you ask Bob a question, he responds with sure
    elsif statement.strip.empty?
      "Fine. Be that way!"
    else
      "Whatever."
    end
  end
end
