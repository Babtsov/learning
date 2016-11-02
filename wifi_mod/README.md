# ESP8266 Wi-Fi Module
## useful links
[some interesting guide (helped me out)](http://rancidbacon.com/files/kiwicon8/ESP8266_WiFi_Module_Quick_Start_Guide_v_1.0.4.pdf)  
[useful info by sparkfun](https://cdn.sparkfun.com/assets/learn_tutorials/4/0/3/4A-ESP8266__AT_Instruction_Set__EN_v0.30.pdf)

# pinout
![pinout](https://github.com/Babtsov/learning/blob/master/wifi_mod/Screenshot%202016-11-02%2000.02.48.png)

# Hook up guide
[credit](http://fab.cba.mit.edu/classes/863.14/tutorials/Programming/serialwifi.html)  
* Connect the RX/TX pins in a 3v3 FTDI cable to the TX/RX pins in the ESP module.
* Connect a 3v3 power supply to the VCC/GND pins. Note that it is possible to use an Arduino 3v3 supply for this.
* Connect the CH_PID pin to VCC as well.
* The rest of the pins should be floating. However, be prepared to occasionally ground the RST pin. This would help if the board is stuck on some command.  
