# Server Requirements

A basic nginx server that has one of the following vulnerabilities.

1. cgi.fix_pathinfo should be true
2. try_files $uri must be absent
3. Included upload directory
4. Store uploads on the same server to aid fetching.

The user is required to send in an infected gif/jpeg (or any image) with shell code embedded in it to get the flag. The flag's name will be specified in the question and the user is required to embed the shell code in order to gain the flag from the server. Sample payload has been attached for reference. 
