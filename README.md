1. Valid Credentials → Enter correct username and password, verify successful login.
2. ✅ Case Insensitivity (if applicable) → Test if the username field is case-insensitive (e.g., Admin vs. admin).
3. ❌ Incorrect Username → Enter an invalid username but a valid password.
4  ❌ Incorrect Password → Enter a valid username but an incorrect password.
5. ❌ Both Incorrect → Enter an incorrect username and password.
6. ❌ Empty Fields → Try logging in with both fields empty.
7. ❌ Only Username Entered → Enter only the username and leave the password field empty.
8. ❌ Only Password Entered → Enter only the password and leave the username field empty.
9. ❌ SQL Injection Attempt → Enter SQL injection payloads (e.g., ' OR 1=1 -- or admin' --) to check for vulnerabilities.
10. Max Length Validation → Enter a username/password exceeding the allowed length.
11. Error Message Validation → Ensure proper error messages are displayed for each failed case. 

Notes: 
 use waitforurl() to complete login test 
 use hooks
 use describe to group tests
 afterall hook to do page.close()
