
# UART Finite State Machine for the ESP32

Receiving a continuous stream of bytes over UART is fairly straightforward. Things get complicated quickly when we actually expect a certain sequence of bytes. For example, if we are retrieving a packet and need to identify a header as well as a fixed number of trailing bytes, how can we capture our desired data without collecting garbage data?

The finite state machine addresses that challenge by identifying the presence of a header, switching states, and copying the header as well as the bytes that follow it into a fixed-size buffer. That buffer is then processed while the garbage data is ignored.  This example receives an input over UART. However, the concept and design translates well across other protocols.




## Hardware
Hardware used for testing include:

[ESP32 Devkit v1](https://www.amazon.com/ESP-WROOM-32-Development-Microcontroller-Integrated-Compatible/dp/B08D5ZD528/ref=sr_1_3?crid=28T178UYFYGO7&dib=eyJ2IjoiMSJ9.XBINg-sjhfF_gUtnMiKGjq4fMHz7dyK9dj-72o379-5S2SsWb1HgQRryvCyxb4Xao-GrVHkJcoilGGal9Ziao5x2_dBZqTFt_r7K9kYj3RwQw8wdsphPae9tcnIGN6MTFGahD2Oie9wghpRl7p9cpyBZvO_oyP7XusZPG83_aU8nspWSsTlgdFA276R137FkiJmwsCODdGB-7xgBk9zUest8gr9rVaf8gRAYyINmrdY.r_JpqQp0-AuiQP_a-7TycgltsKh4RAAppGxs9doP8fo&dib_tag=se&keywords=ESP32&qid=1783919713&sprefix=esp32%252Caps%252C433&sr=8-3): The microcontroller that runs the finite state machine.

[TTL485 to UART Converter](https://www.amazon.com/NOYITO-Multi-Machine-Communication-Ultra-Long-Distance-Transmission/dp/B07BJJ7ZF8/ref=sr_1_14?crid=23QBM7XY72WNL&dib=eyJ2IjoiMSJ9.MzH4zvdF5tP1l0wmIe1zjNA_WjB9r-uGO58X9WlczKSHwq-fHgKJy1xmFfZoRg_LF0VsdAmwIqE3TPkyZGiWWVk5BtUFiSK8Ubqjc0A2f66TxwZ2TQPGk_oq4olsk8_GHOpwqcmIOjUTWmAsrlZpLb7kYe7oNVZdvGJ8AYTZJOu-1K0KvniPJzbaG0JJ0GRnxQemkk38LJy1o5C1TZTYLzBdhSJi5yV6obmxeEr02NmhP8ltYfLn4zKTSl1KaQpnybxm9z_xsxK1_9_DXc69pL2xoaJc4MxtYOl1o8vPEGI.TpvBvuXt-x4iyZsk3ssNPJx4SMGvb5-x-LIVoTh-K5M&dib_tag=se&keywords=TTL485+UART&qid=1783919405&s=electronics&sprefix=ttl485+uar%2Celectronics%2C375&sr=1-14):
Necessary for converting the S95's native communication protocol (RS485) to UART. 

[JRT S95 Industrial-grade Range Finding Laser](https://www.alibaba.com/product-detail/JRT-RS485-Short-Distance-Range-Laser_1600370993996.html): An Industrial-grade short range laser measurement tool wit han effective range of 32 feet.

[11.1 V RC Battery](https://www.amazon.com/Zeee-Vehicles-Airplane-Quadcopter-Helicopter/dp/B0BYNSH6Q7/ref=sr_1_4?crid=3995Q13W0FRZE&dib=eyJ2IjoiMSJ9.iw79BdUZwwOcaclMzYuSezj7wFLzo9gZnHgx95ZIaDww_3jB9VQK85MRkSywZhKUub7Kb3z0K4dVO7pX8cphHgzKK6P5jLNtvC_Wtyy13XSfNWlxf_V4lNawxJMbwP68HnQgDW8TZ6L1Xt40kpivYuKlKRgxHCFkD5xaNNOyINd1qKyjISMIjO-ZPcMperVNmdTP8EIjq8yLU9L_YgNX1tiQd46NGre4xKR-XIidmi--wXb_se6x5SiK-x7aRxLeAY3mjMlpGPXs52WNtdVMVf9_eV3O-3sBEErDGAAwqw8.YuM1qGfZJ9Ug5yLRkuWcicbfS5Bw5eoYSVnVeYImdog&dib_tag=se&keywords=6600+mhz+battery+rc&qid=1783922506&sprefix=6600+mhz+battery+rc%2Caps%2C396&sr=8-4): Powers the S95 Industrial Laser, which can be powered with anywhere between 5v and 32v.

[Adafruit FTDI Friend](https://www.adafruit.com/product/284?srsltid=AfmBOoo1sFnWLxvptMVWOuyx5Att-8AfSw38V2mmmPf-5APJ7798t0YG) : Used for reading serial data over UART via USB. I used this in combination with RealTerm to validate reads and writes to my S95 laser in isolation prior to connecting it to the ESP32.


## Installation

After cloning this repository, you can build this program using the following command:

```bash
  cd <esp-idf directory/project-folder>
  idf.py build
```
You can also flash this source code directly to your ESP32 using the following command:
```bash
  idf.py flash </dev/PORT>

  Example: 
  idf.py flash /dev/ttyUSB0
 ```

## Future Directions

I took a monolithic approach in terms of writing up my initial source code. The idea was just get things running without prematurely optimizing any code. As seen by the name of the .c file, this was really a test case to observe how to successfully communicate over UART in a more organized way. Future improvements will include breaking this code into various modules and creating a cleaner architecture that hides data. 

After that, I will be utilizing this with my Modbus TCP Server project to effectively send measurement data over Modbus TCP to a Modbus Master.
