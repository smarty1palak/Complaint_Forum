Necessary frameworks
-> Rails version 5.1.6

Necessary steps to run the project

-> Extract the zip
-> cd IRIS_COMP_FORUM
-> bundle update
-> bundle install
-> rails s
-> Go to localhost:3000 on your browser

List of implemented features:

-> Home Page which requires log in to register complaints
-> Log In with remember me functionality
-> Use of cookies to store the state
-> Sign up for new users
-> Secure password storage in database by using ByCrypt
-> Users can update information.
-> User authentication
-> Admin can delete users and view and resolve complaints of other users.
-> Users can register complaints and see the complaints registered by other users.


List of non-implemented features:

-> Admin cannot add comment on the user's complaint.
I have used destroy method currently which destroys the complaint when the complaint is resolved. To allow the user to add comments i can use the update action instead which erases the text of the complaint and shows the status as completed and allows the admin to add comments as well.
-> Complaints are not divided based on the type
I need to add a title to each complaint stating the type of the complaint and then maybe sort all the complaints based on their types and show it to the admin on his profile i guess.

List of all known bugs

->None as far as I know

References used:

-> Michael Hartl's ruby on rails tutorial
-> w3schools.com

