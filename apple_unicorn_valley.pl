#!/usr/bin/perl

# Communication Skills Training
use strict;
use warnings;

# Define global variables
my $greetingMsg = "Welcome to Communication Skills Training!\n";
my @participants;
my $groupSize;
my $totalGroups;

# Main program
print $greetingMsg;

# Ask for number of participants
print "Please enter the number of participants: ";
chomp($groupSize = <STDIN>);

# Enter participant names
for(my $i=0; $i < $groupSize; $i++){
	print "Enter participant ".($i+1)." name: ";
	chomp($participants[$i] = <STDIN>);
}

# Calculate and print number of groups
$totalGroups = @participants/2;
print "You will have $totalGroups groups.\n";

# Assign groups
my $currentGroup = 0;
for(my $i=0; $i < $totalGroups; $i++){
	print "Group ".($i+1).": ".$participants[$currentGroup]." and ".$participants[$currentGroup+1]."\n";
	$currentGroup += 2;
}

# Ask user if they would like to add more groups
print "Would you like to add more groups? (Y/N) ";
my $userAnswer = <STDIN>;
if($userAnswer =~ 'y' or $userAnswer =~ 'Y'){
	print "Please enter the number of additional groups: ";
	chomp(my $additionalGroups = <STDIN>);
	for(my $i=0; $i < $additionalGroups; $i++){
		print "Group ".($totalGroups+$i+1).": ".$participants[$currentGroup]." and ".$participants[$currentGroup+1]."\n";
		$currentGroup += 2;
	}
	$totalGroups += $additionalGroups;
	print "You now have a total of $totalGroups groups.\n";
}

# Start communication training
print "\nCommunication training begins now!\n";

# Group 1
print "\nGroup 1: ".$participants[0]." and ".$participants[1]."\n";
print "Please introduce yourselves to each other.\n";

for(my $i=2; $i < $groupSize; $i+=2){
	print "\nGroup ".($i/2).": ".$participants[$i]." and ".$participants[$i+1]."\n";
	print "Please introduce yourselves to each other.\n";
}

print "\nNow that everyone has introduced themselves, let's begin the training.\n";

# Training Exercise 1
print "Exercise 1: Each pair will have a conversation for 5 minutes. At the end of the conversation, the pairs will switch and begin a new conversation.\n";

for(my $i=0; $i < $totalGroups; $i++){
	print "\nGroup ".($i+1).": ".$participants[$i*2]." and ".$participants[($i*2)+1]."\n";
	print "Please talk for 5 minutes.\n";
}

# Training Exercise 2
print "\nExercise 2: Each pair will now have a conversation for 10 minutes, however each person in the pair will be given a different topic.\n";

# Assign topics
my @topics = ("Sports", "Politics", "Travel", "Languages", "Food", "Movies");

for(my $i=0; $i < $totalGroups; $i++){
	my $randomTopic1 = $topics[int(rand(@topics))];
	my $randomTopic2 = $topics[int(rand(@topics))];
	
	print "\nGroup ".($i+1).": ".$participants[$i*2]." is assigned the topic \"$randomTopic1\" and ".$participants[($i*2)+1]." is assigned the topic \"$randomTopic2\".\n";
	print "Please talk for 10 minutes.\n";
}

# Training Exercise 3
print "\nExercise 3: Now each pair will take turns introducing themselves and their partner to the entire group.\n";

for(my $i=0; $i < $totalGroups; $i++){
	print "\nGroup ".($i+1).": ".$participants[$i*2]." and ".$participants[($i*2)+1].", please introduce yourselves and your partner to the group.\n";
}

# Training Exercise 4
print "\nExercise 4: Each person in the group will now take turns talking for 30 seconds on their favorite activities.\n";

for(my $i=0; $i < $groupSize; $i++){
	print "\n$participants[$i], please talk about your favorite activities for 30 seconds.\n";
}

# End of session
print "\nCongratulations, you have completed the Communication Skills Training session!\n";