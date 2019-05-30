# MAC / Ethernet concepts
One way to make several computers communicate with each other is for them to use the Ethernet protocol (popular protocol). In order to use Ethernet to connect computers to each other, we need to have an ethernet Switch.
```
                           
+-----------+
| Computer A|                        +-----------+               +------------+
|           +------------------------+           |               |Computer C  |
|           |                        |           +---------------+            |
+-----------+                        |           |               +------------+
   Address 68+F4+68+35+F9+2D         |  Switch   |                Address 66+F4+68+35+F9+2D
                                     |           |
                                     |           |
+------------+                       |           |               +------------+
| computer B |                       |           |               |Computer D  |
|            +-----------------------+           +---------------+            |
|            |                       +-----------+               |            |
+------------+                                                   +------------+
   Address 67+F4+68+35+F9+2D                                      Address 65+F4+68+35+F9+2D


```


## useful resources
* http://asciiflow.com/
* https://ozh.github.io/ascii-tables/
