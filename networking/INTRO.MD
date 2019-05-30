# MAC / Ethernet concepts
One way to make several computers to physically communicate with each other is for them to use the Ethernet protocol (which is popular protocol). In order to use Ethernet to connect computers to each other, we need to have an ethernet Switch, cables, and computers that have at least one ethernet port.
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
In the drawing, we see 4 computers connected to a switch and each computer has its own Ethernet address. The computers get their ethernet address from their network card, which is part of the hardware of the computer. When a network card is manufectured, it gets assigned am=n ethernet address by its manufecturer.


## useful resources
* http://asciiflow.com/
* https://ozh.github.io/ascii-tables/
