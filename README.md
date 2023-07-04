# water-level-controller-using-8086
## Introduction
Water is a valuable resource, and its conservation is critical for long-term development. Domestic families typically use water storage tanks to store water for everyday use. To prevent overflow and to guarantee that there is always adequate water in the tank, the water level in these tanks must be monitored and controlled. It is possible to do this manually, but it is inconvenient and time-consuming. As a result, an automatic water level controller is required. To ensure water availability while minimising waste, the water level in these tanks must be monitored and controlled. Traditionally, this was done manually by checking the tank on a regular basis and changing the water flow accordingly.This method, however, is not only inconvenient, but also prone to human error, potentially resulting in overflows or water shortages. An automatic water level controller is a feasible method for addressing these difficulties. This gadget employs a variety of technologies and sensors to precisely measure the water level in the tank and manage the input and outflow of water. By automating the process, users save time and effort by eliminating the need for ongoing manual monitoring. The automatic water level controller is programmed to work depending on preset parameters such as desired maximum and minimum water levels. When the water level exceeds the upper limit, the controller initiates a mechanism that stops the input of water, so preventing overflow. Similarly, when the water level falls below the lower threshold, the controller activates the inflow to ensure a sufficient supply. An automatic water level controller provides other benefits in addition to reducing waste and guaranteeing a steady supply of water. It optimises the use of water resources, protecting this valuable resource and promoting environmentally friendly practises. It also decreases the risk of property damage from spilling water and aids in the prevention of waterborne diseases by ensuring the availability of clean water. Overall, the adoption of automatic water level controllers in domestic houses promotes efficient water management, increases convenience, and contributes to long-term development. We can save this critical resource while meeting our daily water needs by utilising technology to automate the monitoring and control of water levels.
## Working on Project
### Powering on the Processor:
* Connect the 8086 processor-based system's power supply.
* Check that the power supply is compatible with the processor and that it offers the necessary voltage and current.
* To provide electricity to the entire system, including the processor, turn on the power supply.
### Water Level Sensing:
* The project establishes a reference water level (for example, 20).
* Using the cmp al, 20 instructions, the code compares the water level value read from the sensor to the threshold.
* The water level is considered low if it is less than or equal to the threshold. Otherwise, it is regarded as high.
### Controlling the Pump Motor:
* The pump motor is controlled by the project via the control port (0300h).
* The code activates the pump motor by setting the control port in DX and the on value (01h) in AL.
* It then uses the out dx, al instruction to send the on value to the control port.
* This turns on the pump motor and allows it to pump water.
* To switch off the pump motor, the code changes the control port to DX and the off value (00h) to AL.
* It sends the off value to the control port, which disables the pump motor.
### Water Level Monitoring Loop:
* A loop is used in the project to continuously monitor the water level and control the pump motor.
* The CX register, which is originally set to 5, determines the number of readings to take.
* To keep track of the current reading, the code employs the BX register as a counter.
* The code reads the water level inside the loop, compares it to the threshold, and operates the pump motor appropriately.
* The counter is incremented after each loop, and the code checks to see if the target number of readings has been attained.
* Otherwise, the loop continues. Otherwise, the programme quits the loop and terminates.
### Project Terimination:
* The code utilises the int 21h instruction with the AH register set to 4Ch to end the programme.
* This causes a software interrupt (INT 21h) to occur, signalling the end of programme execution.
* The processor stops executing the programme after termination, and control is returned to the operating system or higher-level software.
