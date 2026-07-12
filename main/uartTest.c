#include <stdio.h>
#include "driver/uart.h"

//These should all be in a uart.c file
//A header file should be created forward declaring each function and variable(state)
void uart_setup()
{
	//dataBuffer-> TX Buffer -> Shift Register -> TX Pin
	// Setup UART buffered IO with event queue
	const int uart_buffer_size = (1024);
	QueueHandle_t uart_queue;
	// Install UART driver using an event queue here
	ESP_ERROR_CHECK(uart_driver_install(UART_NUM_2, uart_buffer_size, uart_buffer_size, 10, &uart_queue, 0));
	const uart_port_t uart_num = UART_NUM_2;
	uart_config_t uart_config = {
		.baud_rate = 19200,
		.data_bits = UART_DATA_8_BITS,
		.parity = UART_PARITY_DISABLE,
		.stop_bits = UART_STOP_BITS_1,
		.flow_ctrl = UART_HW_FLOWCTRL_CTS_RTS,
		.rx_flow_ctrl_thresh = 0,
	};
	// Configure UART parameters
	ESP_ERROR_CHECK(uart_param_config(uart_num, &uart_config));
	// Set UART pins(TX: IO4, RX: IO5, RTS: IO18, CTS: IO19, DTR: UNUSED, DSR: UNUSED)
	ESP_ERROR_CHECK(uart_set_pin(UART_NUM_2, 17, 16, 18, 19, UART_PIN_NO_CHANGE, UART_PIN_NO_CHANGE));
	int8_t send_buffer[9] = {0xAA, 0x00, 0x00, 0x20, 0x00, 0x01, 0x00, 0x06, 0x27};
    // Write data to UART.
    uart_write_bytes(uart_num, send_buffer, (sizeof(send_buffer)/sizeof(send_buffer[0])));
	//Wait until all bits have left TX pin.
	ESP_ERROR_CHECK(uart_wait_tx_done(uart_num, 500));
}

static void uart_rcv()
{
	const uart_port_t uart_num = UART_NUM_2; 
	enum Status{
		STOPPED,
		READING
	};
	enum Status status=STOPPED;
	
	uint8_t rx_data[1];
	uint8_t receivedByte;
	uint8_t readBuffer[13];
	int bufferCount=0;
	
	while(1){
		//1 byte is added to rx_data buffer
		uart_read_bytes(uart_num, rx_data, 1, 500);
		receivedByte = rx_data[0];
		ESP_LOGI("FSM Loop", "Loop Started");
		switch(status)
		{
			//case 1 machine is stopped
			case STOPPED:
				//we received 0xAA byte
				if(receivedByte == 0xAA)
				{
					//reset buffer counter
					bufferCount = 0;
					//zero out buffer in preparation
					memset(readBuffer, 0, sizeof(readBuffer));
					//set first element of laserBuffer as receivedByte
					readBuffer[bufferCount] = receivedByte;
					//increment bufferCount by 1;
					bufferCount += 1;
					//set status to STOPPED
					status = READING;
				}
				else{}
				break;
			case READING:
				if(bufferCount >= 13)
				{
					status = STOPPED;
				}
				else
				{
					readBuffer[bufferCount] = receivedByte;
					bufferCount += 1;
				}
				break;
		}
		uint32_t measurement_mm;
		uint32_t measurement_ft;
		uint16_t signal_quality;
		measurement_mm= (readBuffer[6] << 24| readBuffer[7] << 16| readBuffer[8] << 8|readBuffer[9]);
		signal_quality = (readBuffer[10]<< 8|readBuffer[11]);
		measurement_ft = (measurement_mm * 0.00328084);
		ESP_LOGI("Data","%d Ft. Signal Quality: %d",measurement_ft, signal_quality);

	}
}


void app_main(void)
{
	uart_setup();
	uart_rcv();

}
