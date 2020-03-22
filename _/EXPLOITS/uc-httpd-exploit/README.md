uc-httpd web-daemon - Login page bufferoverflow PoC
===================================================

The web daemon "uc-httpd" is vulnerable to an exploitable bufferoverflow in it's login page.
By abusing the earlier found directory traversal vulnerability, one could bypass ASLR and achieve RCE.

Over 500,000 devices are vulnerable, including devices owned by the Massachusetts Institute of Technology.

```python
$ python teaxploit.py [target] [target_port] [buffer_size]
```