package mindful

import "fmt"

// MindfulCommunications is a function that handles communication with the outside world
func MindfulCommunications() {
	// Initializes variables.
	var message string
	var response string

	// Loops until the user chooses to quit.
	for {
		// Displays a message to the user and takes input.
		fmt.Println("Please enter a message or type 'quit' to terminate the session:")
		fmt.Scanln(&message)

		// Checks if the user wishes to terminate the session.
		if message == "quit" {
			break
		}

		// Processes the message.
		response = processMessage(message)

		// Displays the processed message to the user.
		fmt.Println(response)
	}
}

// processMessage takes a string as input and processes it.
func processMessage(message string) string {
	// Determines length of the message.
	msgLen := len(message)

	// Initializes a variable to store the reversed message.
	reverseMsg := "" 

	// Reverses the characters of the message.
	for i := msgLen - 1; i >= 0; i-- {
		reverseMsg += string(message[i])
	}

	// Returns the reversed message.
	return reverseMsg
}