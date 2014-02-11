SinatraProxy
============

Example of how to quickly build a proxy for some website you are not allowed to visit by your provider (piratebay?google?) using the Sinatra framework.

Let's say you can't access www.google.com. 
Just edit `proxino.rb` and set the uri:
``` ruby
url = URI.parse("http://www.google.com/#{path}")
```
And add an entry to your hosts file, redirecting google.com to your proxy server.
```bash
www.google.it 1.2.3.4
```
