# MAC / Ethernet concepts
One way to make several computers to physically communicate with each other is for them to use the Ethernet protocol (which is popular protocol). In order to use Ethernet to connect computers to each other, we need to have an ethernet Switch, cables, and computers that have an ethernet network card (which has ports that allow cables to be plugged into).
```
                           
+-----------+
| Computer A|                        +-----------+               +------------+
|           +------------------------+           | 4             |Computer C  |
|           |                     1  |           +---------------+            |
+-----------+                        |           |               +------------+
   Address 68+F4+68+35+F9+2D         |  Switch   |                Address 66+F4+68+35+F9+2D
                                     |           |
                                     |           |
+------------+                       |           |               +------------+
| computer B |                    2  |           | 3             |Computer D  |
|            +-----------------------+           +---------------+            |
|            |                       +-----------+               |            |
+------------+                                                   +------------+
   Address 67+F4+68+35+F9+2D                                      Address 65+F4+68+35+F9+2D


```
In the drawing, we see 4 computers connected to a switch and each computer has its own Ethernet address (which is also known as a MAC address). The computers get their MAC address from their network card, which is part of the hardware of the computer. When a network card is manufectured, it gets assigned a MAC address by its manufecturer. In order for one computer to send information to another computer, it needs to know the MAC address of the destination computer. So if computer A wants to send information to computer B, it needs to know that computer B is reachable by the following address: `67:F4:68:35:F9:2D`. How did computer A discover the MAC address of computer B? We'll discuss this discovery process later on, but for now, let's assume computer A somehow knows tha address of computer B.



## useful resources
* http://asciiflow.com/
* https://ozh.github.io/ascii-tables/
