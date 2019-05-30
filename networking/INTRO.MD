# MAC / Ethernet concepts
One way to make several computers to physically communicate with each other is for them to use the Ethernet protocol (which is popular protocol). In order to use Ethernet to connect computers to each other, we need to have an ethernet Switch, cables, and computers that have an ethernet network card (which has ports that allow cables to be plugged into).
```
                           
+-----------+
| Computer A|                        +-----------+               +------------+
|           +------------------------+           | 4             |Computer C  |
|           |                     1  |           +---------------+            |
+-----------+                        |           |               +------------+
   Address 68:F4:68:35:F9:2D         |  Switch   |                Address 66:F4:68:35:F9:2D
                                     |           |
                                     |           |
+------------+                       |           |               +------------+
| computer B |                    2  |           | 3             |Computer D  |
|            +-----------------------+           +---------------+            |
|            |                       +-----------+               |            |
+------------+                                                   +------------+
   Address 67:F4:68:35:F9:2D                                      Address 65:F4:68:35:F9:2D


```
In the drawing, we see 4 computers connected to a switch and each computer has its own Ethernet address (which is also known as a MAC address). The computers get their MAC address from their network card, which is part of the hardware of the computer. 

When a network card is manufectured, it gets assigned a MAC address by its manufecturer. In order for one computer to send information to another computer, it needs to know the MAC address of the destination computer.  
So if computer A wants to send information to computer B, it needs to know that computer B is reachable by the following address: `67:F4:68:35:F9:2D`. How did computer A discover the MAC address of computer B? We'll discuss this discovery process later on, but for now, let's assume computer A somehow knows tha address of computer B.  

Let's assume that the information that computer A wants to send to computer B is a file of size 15 KB. The ethernet protocol uses packets (frames) of approximate size of 1.5KB so this means that computer A will have to break the file into 10 packets and then send each packet one after the other.
Here is some of the information that each Ethernet packet contains:
```
Source address: 68:F4:68:35:F9:2D
Destination address: 67:F4:68:35:F9:2D
Data: <....... 1.5 KB of arbitrary data .......>
```

Each packet will be trasmitted from computer A to the switch through the cable connecting computer A to interface `1` of the switch. Then the switch will take this information and transmit it to computer B through interface 2.
So basically, the data flow will be something like this:
```
(Computer A) --> (Switch interface 1) ---> (Switch interface 2) ---> (Computer B)
```




## useful resources
* http://asciiflow.com/
* https://ozh.github.io/ascii-tables/
