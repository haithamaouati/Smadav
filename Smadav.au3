# Author: Haitham Aouati
# GitHub: https://github.com/haithamaouati

# Require the Smadav window to be open and active
WinWaitActive("Smadav")

# Click on the "Registration" button
ControlClick("Smadav", "", "[CLASS:Button; INSTANCE:1]")

# Wait for the registration window to open
WinWaitActive("Smadav - Registration")

# Enter the name in the "Name" field
ControlSetText("Smadav - Registration", "", "[CLASS:Edit; INSTANCE:1]", "Your Name")

# Enter the key in the "Key" field
ControlSetText("Smadav - Registration", "", "[CLASS:Edit; INSTANCE:2]", "Your Key")

# Click the "OK" button to register
ControlClick("Smadav - Registration", "", "[CLASS:Button; INSTANCE:1]")

# Wait for the registration process to complete
Sleep(3000)

# Close the registration window
ControlClick("Smadav - Registration", "", "[CLASS:Button; INSTANCE:2]")

# Show a success message
MsgBox(0,"Success","Smadav successfully registered!")
