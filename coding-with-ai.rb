# ASSESSMENT 5: Coding Critique with AI

# Use AI to learn about the following code.

# Based on your learning, reverse engineer a prompt that this code would satisfy.

# Add comments to each line to explain the code.

# This Array contains votes for various types of tacos.
taco_votes = ['fish taco', 'california burrito', 'Tacos Al Pastor', 'Carnitas tacos', 'California burrito', 'Fish taco', 'California Burrito', 'Fish Taco', 'Tacos de Barbacoa', 'tacos Al Pastor', 'fish taco', 'California burrito', 'fish taco', 'tacos al pastor', 'Carnitas tacos', 'Fish taco', 'tacos de barbacoa', 'fish taco', 'Carnitas Tacos', 'carnitas tacos', 'Fish Taco', 'fish taco']

# This method creates a new Hash based on the taco_votes Array. The Hash is named result. Each vote in the array is assigned as a key with a default value of 0.
totals = taco_votes.reduce(Hash.new(0)) do |result, vote|
  # For each vote in the Array, the value for the matching key in the Hash increases by one. The code is case-insensitive as values are tallied for matching keys that have been downcased.
  result[vote.downcase] += 1
  # The method returns the value of the Hash which includes the final tally for each type of taco.
  result
end

p totals



# tl;dr: Scroll to the bottom to see the final prompt.
#_______________________________________________

# Preliminary Notes: What I think the code is doing
# The variable taco_votes is an Array containing votes for various types of tacos.
# The method totals takes the Array and creates a new Hash called result.
# Each vote in the Array is assigned as a key in the Hash with a default value of 0.
# For each vote in the Array, the value for its associated key in the Hash increases by one. The votes in the array do not need to be case sensitive as they are tallied for keys that are downcased.
# Reduce removes keys whose value are zero.
# The method returns the Hash with the tallied votes.

#_______________________ My Unassisted Prompts_________________________
# General-Purpose Prompt:
  # Create a function that takes in an Array of values and returns a Hash. Each key in the Hash should represent a different value in the Array. Each value in the Hash should be a tally of how many times its associated value appears in the Array.
# Context-Specific Prompt:
  # Create a function that takes in an Array of taco votes and returns a Hash. Each key in the Hash should represent a different type of taco. Each value in the Hash should be a tally of how many votes a particular taco received.

# Chat GPT's Explanation of the Code
# An array called taco_votes is defined, containing different variations of taco names, with some of them in different cases (uppercase, lowercase, or mixed case).
# The reduce method is used to iterate over the taco_votes array and accumulate the vote counts for each type of taco into a hash called totals.
# Hash.new(0) initializes an empty hash with a default value of 0. The hash will store the taco names as keys and their corresponding vote counts as values.
# do |result, vote|: This block takes two parameters: result (initially the empty hash) and vote (each element from the taco_votes array during iteration).
# result[vote.downcase] += 1: This line is the core of the logic. It converts the current taco name to lowercase using downcase, ensuring case-insensitive vote counting. Then, it increments the vote count for that particular taco name in the result hash.
# result: The block returns the updated result hash after each iteration.
# After the reduce operation is complete, the totals hash will contain the total number of votes for each type of taco, regardless of the case used in the original taco_votes array.
# Finally, the code prints the totals hash. This will output the hash showing the aggregated vote counts for each type of taco, considering all variations in case.

#_______________________Chat GPT's Prompt______________________________
# "Write a Ruby program that processes a list of taco votes and calculates the total number of votes for each type of taco. The input list contains taco names in different cases (uppercase, lowercase, or mixed case), and you need to ensure that the vote counts are case-insensitive. Output the results showing the total votes for each type of taco."

# My Final Thoughts on Chat GPT's Contribution:
# It was nice to see that my initial interpretation of the code was very similar to Chat GPT's interpretation of the code.
# It is interesting to see the AI emphasize what it thinks is vital for the code to work as intended.
# Chat GPT's prompt made sure to mention that the votes need to be case-insensitive. This was a detail I failed to include in either of the two prompts I created on my own. In my prompts, I specifically requested the output to be in the form of a Hash. Chat GPT only required that the total votes for each type of taco should be returned. The AI did not make any distinction as to how this information should be presented.

#_____________________Final Prompt________________________
  # Create a function that takes in an Array of taco votes and returns the total number of votes received for each type of taco. The vote counts need to be case-insensitave as votes can be received in lowercase, uppercase, or mixed case.