# Day 11: Creating & Managing Users

1. useradd: It is a low-level system utility used to create a new user account. By default, it may not create the user's home directory, so you can use -m to create it. The password is typically set separately using the passwd command. 
2. useradd -m: It creates a new user and automatically creates a home directory for the user. 
3. useradd -m -s: It is used to create a user, create their home directory, and specify their login (bash) shell.
4. adduser: It is a high-level, user-friendly utility that creates a new user account, automatically creates the user's home directory, prompts you to set a password, and asks for additional user information.
5. passwd: It is used to set, change, lock, unlock, and manage a user's password. It is commonly used after useradd to assign a password to a newly created user.
6. usermod -aG: usermod is used to modify an existing user account. -aG is used to add a user to an existing group without removing them from their other groups.
7. usermod -s: It is used to change the login shell of an existing user. It is used to correct or change a user's shell, either created incorrectly or needed to change the user's shell environment without needing to start all over
8. usermod -l: It is used to change the login name (username) of an existing user.
9. userdel: It removes the user account, but normally leaves the user's home directory and files behind.
10. userdel -r: It removes the user account and deletes their home directory and files. It removes everything completely.
