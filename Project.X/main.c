// CONFIG1L
#pragma config PLLDIV = 1       // PLL Prescaler Selection bits (No prescale (4 MHz oscillator input drives PLL directly))
#pragma config CPUDIV = OSC1_PLL2// System Clock Postscaler Selection bits ([Primary Oscillator Src: /1][96 MHz PLL Src: /2])
#pragma config USBDIV = 1       // USB Clock Selection bit (used in Full-Speed USB mode only; UCFG:FSEN = 1) (USB clock source comes directly from the primary oscillator block with no postscale)

// CONFIG1H
#pragma config FOSC = HS        // Oscillator Selection bits (HS oscillator (HS))
#pragma config FCMEN = OFF      // Fail-Safe Clock Monitor Enable bit (Fail-Safe Clock Monitor disabled)
#pragma config IESO = OFF       // Internal/External Oscillator Switchover bit (Oscillator Switchover mode disabled)

// CONFIG2L
#pragma config PWRT = OFF       // Power-up Timer Enable bit (PWRT disabled)
#pragma config BOR = OFF        // Brown-out Reset Enable bits (Brown-out Reset disabled in hardware and software)
#pragma config BORV = 3         // Brown-out Reset Voltage bits (Minimum setting 2.05V)
#pragma config VREGEN = OFF     // USB Voltage Regulator Enable bit (USB voltage regulator disabled)

// CONFIG2H
#pragma config WDT = OFF        // Watchdog Timer Enable bit (WDT disabled (control is placed on the SWDTEN bit))
#pragma config WDTPS = 32768    // Watchdog Timer Postscale Select bits (1:32768)

// CONFIG3H
#pragma config CCP2MX = OFF     // CCP2 MUX bit (CCP2 input/output is multiplexed with RB3)
#pragma config PBADEN = OFF     // PORTB A/D Enable bit (PORTB<4:0> pins are configured as digital I/O on Reset)
#pragma config LPT1OSC = OFF    // Low-Power Timer 1 Oscillator Enable bit (Timer1 configured for higher power operation)
#pragma config MCLRE = ON       // MCLR Pin Enable bit (MCLR pin enabled; RE3 input pin disabled)

// CONFIG4L
#pragma config STVREN = OFF     // Stack Full/Underflow Reset Enable bit (Stack full/underflow will not cause Reset)
#pragma config LVP = OFF        // Single-Supply ICSP Enable bit (Single-Supply ICSP disabled)
#pragma config ICPRT = OFF      // Dedicated In-Circuit Debug/Programming Port (ICPORT) Enable bit (ICPORT disabled)
#pragma config XINST = OFF      // Extended Instruction Set Enable bit (Instruction set extension and Indexed Addressing mode disabled (Legacy mode))

// CONFIG5L
#pragma config CP0 = OFF        // Code Protection bit (Block 0 (000800-001FFFh) is not code-protected)
#pragma config CP1 = OFF        // Code Protection bit (Block 1 (002000-003FFFh) is not code-protected)
#pragma config CP2 = OFF        // Code Protection bit (Block 2 (004000-005FFFh) is not code-protected)
#pragma config CP3 = OFF        // Code Protection bit (Block 3 (006000-007FFFh) is not code-protected)

// CONFIG5H
#pragma config CPB = OFF        // Boot Block Code Protection bit (Boot block (000000-0007FFh) is not code-protected)
#pragma config CPD = OFF        // Data EEPROM Code Protection bit (Data EEPROM is not code-protected)

// CONFIG6L
#pragma config WRT0 = OFF       // Write Protection bit (Block 0 (000800-001FFFh) is not write-protected)
#pragma config WRT1 = OFF       // Write Protection bit (Block 1 (002000-003FFFh) is not write-protected)
#pragma config WRT2 = OFF       // Write Protection bit (Block 2 (004000-005FFFh) is not write-protected)
#pragma config WRT3 = OFF       // Write Protection bit (Block 3 (006000-007FFFh) is not write-protected)

// CONFIG6H
#pragma config WRTC = OFF       // Configuration Register Write Protection bit (Configuration registers (300000-3000FFh) are not write-protected)
#pragma config WRTB = OFF       // Boot Block Write Protection bit (Boot block (000000-0007FFh) is not write-protected)
#pragma config WRTD = OFF       // Data EEPROM Write Protection bit (Data EEPROM is not write-protected)

// CONFIG7L
#pragma config EBTR0 = OFF      // Table Read Protection bit (Block 0 (000800-001FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR1 = OFF      // Table Read Protection bit (Block 1 (002000-003FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR2 = OFF      // Table Read Protection bit (Block 2 (004000-005FFFh) is not protected from table reads executed in other blocks)
#pragma config EBTR3 = OFF      // Table Read Protection bit (Block 3 (006000-007FFFh) is not protected from table reads executed in other blocks)

// CONFIG7H
#pragma config EBTRB = OFF      // Boot Block Table Read Protection bit (Boot block (000000-0007FFh) is not protected from table reads executed in other blocks)

// #pragma config statements should precede project file includes.
// Use project enums instead of #define for ON and OFF.
#include <xc.h> // Main library for XC8 compiler
#include "nxlcd.h" // Specific library for LCD control
#include <string.h> // Library for string manipulation
#include <stdio.h> // Library for standard input and output operations
#include <math.h> // Library for mathematical operations
#include <ctype.h> // Library for character testing functions

// Constant definitions
#define _XTAL_FREQ 20000000 // Defines the crystal frequency to 20MHz
#define CURRENT_THRESHOLD 5.0 // Example: 5A variation for peak detection
#define EEPROM_ADDRESS_PASSWORD 0x00 // Initial EEPROM address definition for storing passwords
#define PASSWORD_LENGTH 4 // Password length definition

// Pin definitions for keypad columns and rows
#define COL1 PORTBbits.RB0 // Defines bit 0 of PORTB as COL1
#define COL2 PORTBbits.RB1 // Defines bit 1 of PORTB as COL2
#define COL3 PORTBbits.RB2 // Defines bit 2 of PORTB as COL3
#define COL4 PORTBbits.RB3 // Defines bit 3 of PORTB as COL4
#define ROW1 PORTBbits.RB4 // Defines bit 4 of PORTB as ROW1
#define ROW2 PORTBbits.RB5 // Defines bit 5 of PORTB as ROW2
#define ROW3 PORTBbits.RB6 // Defines bit 6 of PORTB as ROW3
#define ROW4 PORTBbits.RB7 // Defines bit 7 of PORTB as ROW4

// Global variables
double current = 0; // Variable to store current reading
int voltage = 0; // Variable to store voltage reading
long wattSeconds = 0; // Energy accumulator in watt-seconds
double kwh = 0.0; // Energy in kilowatt-hours
double costKWH = 0.0; // Energy cost in $
int time = 0; // Variable for time control
short int screen = 0; // Variable for screen control
char default_password[5] = "1234"; // Default password
short int system_locked = 0; // Variable to indicate if the system is locked
double rate = 0.639; // Energy rate
double prev_current = 0; // Variable to store the previous ADC reading
int led_on_time = 0; // Variable to store the time the LED should stay on
int led_active = 0; // Flag to indicate if the LED is active

// Function prototypes
double convert_current(void); // Prototype function to convert ADC reading to current
int convert_voltage(void); // Prototype function to convert ADC reading to voltage
int calcPower(void); // Prototype function to calculate power
void initSystem(void); // Prototype function to initialize the system
void __interrupt() isr(void); // Prototype function for interrupt
char read_keypad(void); // Prototype function to read the keypad
void clean_lcd(void); // Prototype function to clean the LCD
void initial_screen(void); // Prototype function to show the initial screen
void main_screen(void); // Prototype function to display the main screen
void config_rate_screen(void); // Prototype function to display the rate configuration screen
void read_rate(void); // Prototype function to read the rate
void send_alert(double diff); // Prototype function to send visual alert via LEDs
void detect_peak(void); // Prototype function to detect current and voltage peaks
void request_password(void); // Prototype function to request password
void standby_detector(void); // Prototype function for standby device detection
void alert_leds(void); // Prototype function for alert LED control
void buzzerON(void); // Function to turn on the buzzer
void config_screen(void); // Prototype function to display the main configuration screen
void config_password_screen(void); // Prototype function to display the password configuration screen
unsigned char EEPROM_Read(unsigned char address); // Prototype function to read a byte from EEPROM
void EEPROM_Write(unsigned char address, unsigned char data); // Prototype function to write a byte to EEPROM
void EEPROM_read_user(unsigned char address, unsigned char *password); // Prototype function to read a password from EEPROM
void EEPROM_write_user(unsigned char address, unsigned char *password); // Prototype function to write a password to EEPROM
void set_password(void); // Prototype function to set a new password
void get_password(char *password); // Prototype function to get the stored password
int check_password(char *input); // Prototype function to check if the entered password is correct
void assign_default_password(void); // Prototype function to assign a default password to the system
int has_passwords(void); // Prototype function to check if there are stored passwords

// System Initialization Function
void initSystem(void) {
    
    // Pin configuration as digital output
    TRISCbits.TRISC0 = 0; // Set RC0 pin as digital output (LedGreen)
    TRISCbits.TRISC1 = 0; // Set RC1 pin as digital output (LedBlue)
    TRISCbits.TRISC2 = 0; // Set RC2 pin as digital output (Buzzer)
    TRISCbits.TRISC6 = 0; // Set RC6 pin as digital output (Relay)
    
    // Pin configuration as digital input
    TRISA = 0xFF; // Set all PORTA pins as input
    TRISB = 0xF0; // Set RB0-RB3 pins as output and RB4-RB7 as input
    TRISD = 0xF0; // Set RD0-RD3 pins as output and RD4-RD7 as input
    
    RBPU = 0; // Enable pull-up resistor

    // ADC configurations
    ADCON0 = 0b00001101; // Set ADCON0 register
    ADCON1 = 0b00001011; // Set ADCON1 register
    ADCON2 = 0b10010101; // Set ADCON2 register

    // Initialize alert LEDs
    PORTDbits.RD0 = 1; // Turn off alert LED 1
    PORTDbits.RD1 = 1; // Turn off alert LED 2
    PORTDbits.RD2 = 1; // Turn off alert LED 3
    PORTDbits.RD3 = 1; // Turn off alert LED 4

    PORTCbits.RC6 = 0; // Deactivate the relay

    OpenXLCD(FOUR_BIT & LINES_5X7); // Initialize the LCD
    
    assign_default_password();
    
    RCONbits.IPEN = 0; // Disable priority levels
    INTCONbits.GIE = 1; // Enable global interrupts

    PIE1bits.ADIE = 1; // Enable A/D interrupt

    // TIMER0 configuration
    T0CON = 0b10000111; // Enable TIMER0 with 256 prescaler
    // Initialize TIMER0 to generate an interrupt every 1 second (for 20MHz)
    //TMR0 = 46005; //65536 -(1*(20*10^6))/(4*256)
    // Reload TIMER0 for the next 1-second interval. 46005 = B3B5
    TMR0H = 0xB3;
    TMR0L = 0xB5;
    //INTCONbits.TMR0IE = 1; // Enable TIMER0 interrupt (commented to enable later)
    INTCONbits.TMR0IF = 0; // Clear TIMER0 interrupt flag
}

// Interrupt Routine
void __interrupt() isr(void) {
    // Check if the interrupt was generated by the ADC
    if (PIR1bits.ADIF) {
        current = convert_current(); // Convert ADC reading to current
        voltage = convert_voltage(); // Convert ADC reading to voltage
        detect_peak(); // Detect current and voltage peaks
        PIR1bits.ADIF = 0; // Clear ADC interrupt flag
    }
    // Check if the interrupt was generated by TIMER0
    if (INTCONbits.TMR0IF) {
        // If the system is not overloaded
        if (!system_locked) {
            time = time + 1; // Increment time
            wattSeconds += calcPower(); // Accumulate energy in watt-seconds
            kwh = wattSeconds / 3600000.0; // Convert to kilowatt-hours
            costKWH = kwh * rate; // Calculate cost in $

            // Standby Detector
            standby_detector();
           
            // Alert LED control
            alert_leds();  
        }
        TMR0 = 46005; // Reload TIMER0 for the next 1-second interval
        INTCONbits.TMR0IF = 0; // Clear TIMER0 interrupt flag
    }
}
// Function to convert ADC potentiometer reading to current
double convert_current(void) {
    ADCON0bits.GO_DONE = 1; // Starts the A/D conversion
    while (ADCON0bits.GO_DONE); // Waits for the conversion to finish
    double result = (((ADRESH << 8) + ADRESL) / 1023.0) * 40.0;
    return result;
}

// Function to convert ADC potentiometer reading to voltage
int convert_voltage(void) {
    ADCON0bits.GO_DONE = 1; // Starts the A/D conversion
    while (ADCON0bits.GO_DONE); // Waits for the conversion to finish
    double result = (((ADRESH * 256 + ADRESL) / 1023.0) * 5.0) + 123.0;
    return (result <= 123) ? 0 : (int)(result + 0.5);
}

// Function to calculate power
int calcPower(void){
    return (int) current * voltage; // Power = Current * Voltage
}

void standby_detector(void){
    int power = calcPower(); // Calculate power
    if (power <= 200 && power > 1){
        PORTCbits.RC0 = 0; // Deactivate Standby LED
        PORTCbits.RC1 = 1; // Activate normal operation LED
    } else if(power >= 200) {
        PORTCbits.RC0 = 1; // Activate Standby LED
        PORTCbits.RC1 = 0; // Deactivate normal operation LED
    } else {
        PORTCbits.RC0 = 0; // Deactivate Standby LED
        PORTCbits.RC1 = 0; // Deactivate normal operation LED
    }
}

void alert_leds(void){
    if (led_active) {
        if (led_on_time > 0) {
            led_on_time -= 1; // Decrease LED time at each interrupt
        } else {
            PORTDbits.RD0 = 1; // Turn off all alert LEDs
            PORTDbits.RD1 = 1;
            PORTDbits.RD2 = 1;
            PORTDbits.RD3 = 1;
            led_active = 0; // Mark LED as inactive
        }
    }
}

// Function to send visual alert via LEDs
void send_alert(double diff) {
    if(diff >= 25){
        PORTDbits.RD0 = 0; // Activate LED D0
        PORTDbits.RD1 = 0; // Activate LED D1
        PORTDbits.RD2 = 0; // Activate LED D2
        PORTDbits.RD3 = 0; // Activate LED D3
        
        PORTCbits.RC6 = 0; // Deactivate the relay
        ADCON0bits.ADON = 0; // Turn off the ADC
        system_locked = 1; // Indicate that the system is locked
        clean_lcd(); // Clear the LCD
        WriteCmdXLCD(0x85); // Move the cursor to position 0x85
        putsXLCD("System"); // Display "System" on the LCD
        WriteCmdXLCD(0xC5); // Move the cursor to position 0xC4
        putsXLCD("Locked"); // Display "Locked" on the LCD
        __delay_ms(1000); // Wait for 1000ms
        clean_lcd(); // Clear the LCD
        WriteCmdXLCD(0x86); // Move the cursor to position 0x83
        putsXLCD("Enter"); // Display "Enter" on the LCD
        WriteCmdXLCD(0xC4); // Move the cursor to position 0xC5
        putsXLCD("Password"); // Display "Password" on the LCD
        __delay_ms(2000); // Wait for 2000ms
        request_password(); // Request password if the system is locked
    } else if(diff < 25 && diff >= 15){
        PORTDbits.RD0 = 0; // Activate LED D0
        PORTDbits.RD1 = 0; // Activate LED D1
        PORTDbits.RD2 = 0; // Activate LED D2
        PORTDbits.RD3 = 1; // Deactivate LED D3
    } else if(diff < 15 && diff >= 10){
        PORTDbits.RD0 = 0; // Activate LED D0
        PORTDbits.RD1 = 0; // Activate LED D1
        PORTDbits.RD2 = 1; // Deactivate LED D2
        PORTDbits.RD3 = 1; // Deactivate LED D3
    } else {
        PORTDbits.RD0 = 0; // Activate LED D0
        PORTDbits.RD1 = 1; // Deactivate LED D1
        PORTDbits.RD2 = 1; // Deactivate LED D2
        PORTDbits.RD3 = 1; // Deactivate LED D3
    } 
    
    led_on_time = 2; // Set LED activation time
    led_active = 1; // Indicate that LEDs are active
}

// Function to detect current peaks
void detect_peak(void) {
    double current_diff = fabs(current - prev_current); // Absolute current difference
    if (current_diff > CURRENT_THRESHOLD) {
        send_alert(current_diff); // Send alert if the difference exceeds the threshold
    }
    // Update previous readings
    prev_current = current;
}

// Function to turn on the buzzer
void buzzerON(void){
    PORTCbits.RC2 = 1; // Activate the buzzer
    __delay_ms(5); // Wait for 5ms
    PORTCbits.RC2 = 0; // Deactivate the buzzer
}

// Function to request password
void request_password(void) {
    char entered_password[PASSWORD_LENGTH + 1]; // Buffer to store the entered password

    clean_lcd(); // Clear the LCD
    WriteCmdXLCD(0x80); // Move cursor to position 0x80
    putsXLCD("Password:"); // Display "Password:" on LCD
    WriteCmdXLCD(0xC0); // Move cursor to position 0xC0

    while (1) {
        __delay_ms(300); // Wait for 300ms

        get_password(entered_password); // Get password entered by user
        
        if (check_password(entered_password)) { // Check if password is correct
            system_locked = 0; // Unlock the system
            PORTCbits.RC6 = 1; // Activate the relay
            ADCON0bits.ADON = 1; // Turn on the ADC
            clean_lcd(); // Clear the LCD
            WriteCmdXLCD(0x80); // Move cursor to position 0x80
            putsXLCD("Access Granted"); // Display "Access Granted" on LCD
            __delay_ms(2000); // Wait for 2000ms
            return; // Return from the function
        } else { // If password is incorrect
            clean_lcd(); // Clear the LCD
            WriteCmdXLCD(0x80); // Move cursor to position 0x80
            putsXLCD("Incorrect Password"); // Display "Incorrect Password" on LCD
            __delay_ms(2000); // Wait for 2000ms
            clean_lcd(); // Clear the LCD
            WriteCmdXLCD(0x80); // Move cursor to position 0x80
            putsXLCD("Password:"); // Display "Password:" on LCD
            __delay_ms(300); // Wait for 300ms
            WriteCmdXLCD(0xC0); // Move cursor to position 0xC0
        }
    }
}
// Function to read the matrix keypad
char read_keypad(void) {
    // Character matrix representing the keypad keys
    const char keys[4][4] = {
        {'A', 'B', 'C', 'D'},
        {'3', '6', '9', '#'},
        {'2', '5', '8', '0'},
        {'1', '4', '7', '*'}
    };
    int col = 0; // Variable to store the current column of the keypad
    do {
        switch(col) { // Selects the current column
            case 0:
                COL1 = 0; // Activate the first column
                COL2 = 1;
                COL3 = 1;
                COL4 = 1;
                break;
            case 1:
                COL1 = 1;
                COL2 = 0; // Activate the second column
                COL3 = 1;
                COL4 = 1;
                break;
            case 2:
                COL1 = 1;
                COL2 = 1;
                COL3 = 0; // Activate the third column
                COL4 = 1;
                break;
            case 3:
                COL1 = 1;
                COL2 = 1;
                COL3 = 1;
                COL4 = 0; // Activate the fourth column
                break;
        }
        // Check if any of the rows are low (key pressed)
        if (ROW1 == 0) {
            __delay_ms(100);
            return keys[col][0]; // Return the corresponding key value if the key in row 1 is pressed
        }
        if (ROW2 == 0) {
            __delay_ms(100);
            return keys[col][1]; // Return the corresponding key value if the key in row 2 is pressed
        }
        if (ROW3 == 0) {
            __delay_ms(100);
            return keys[col][2]; // Return the corresponding key value if the key in row 3 is pressed
        }
        if (ROW4 == 0) {
            __delay_ms(100);
            return keys[col][3]; // Return the corresponding key value if the key in row 4 is pressed
        }
        col++; // Increment to the next column
    } while (col < 4); // Loop until all columns are checked
    return '\0'; // Return null value if no key was pressed
}

// Function to clear the LCD
void clean_lcd(void) {
    WriteCmdXLCD(0x01); // Clear the LCD and return the cursor
    __delay_ms(5); // Delay 5ms to wait for command execution
}

// Function to display the initial screen
void initial_screen(void) {
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("1-Start");
    WriteCmdXLCD(0xC0);
    putsXLCD("2-Settings");
}

// Function to display the main screen
void main_screen(void) {
    PIE1bits.ADIE = 1; // Enable ADC interrupt
    INTCONbits.TMR0IE = 1; // Enable Timer0 interrupt
    PORTCbits.RC6 = 1; // Activate the relay
    int display_state = 0; // Display state
    int last_display_time = 0; // Last display update time
    char key; // Variable to store the pressed key
    
    while (1) {
        __delay_ms(80); // Wait 80ms
        current = convert_current(); // Convert and read current
        voltage = convert_voltage(); // Convert and read voltage
        char int_str[20]; // Buffer for display string
        
        key = read_keypad(); // Read the matrix keypad
        if (key == 'B') { // If the key 'B' is pressed
            return; // Return to the main function
        }
        
        if (wattSeconds > 100000) { // If the accumulated energy is too high
            buzzerON(); // Activate the buzzer
        }
        
        // If the time changed since the last update
        if (time != last_display_time) {
            // Update the screen every 4 seconds
            if (time % 4 == 0) {
                display_state = (display_state + 1) % 3; // Toggle between 0, 1, and 2
                last_display_time = time; // Update the time of the last screen change
            }
        }
        // Toggle between the information displayed on the screen
        switch (display_state) {
            case 0:
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x80); // Move the cursor to position 0x80
                sprintf(int_str, "Current: %.2fA", current); // Format the current string
                putsXLCD(int_str); // Display the current on the LCD
                __delay_ms(5); // Wait 5ms
                WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0
                sprintf(int_str, "Voltage: %dV", voltage); // Format the voltage string
                putsXLCD(int_str); // Display the voltage on the LCD
                break;
            case 1:
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x80); // Move the cursor to position 0x80
                sprintf(int_str, "Power: %dW", calcPower()); // Format the power string
                putsXLCD(int_str); // Display the power on the LCD
                __delay_ms(5); // Wait 5ms
                WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0
                sprintf(int_str, "kWh: %.4f", kwh); // Format the kWh string
                putsXLCD(int_str); // Display the kWh on the LCD
                break;
            case 2:
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x80); // Move the cursor to position 0x80
                sprintf(int_str, "Cost: R$%.4f", costKWH); // Format the cost string
                putsXLCD(int_str); // Display the cost on the LCD
                break;
        }
        PIE1bits.ADIE = 0; // Disable ADC interrupt
    }
}

// Function to display the rate configuration screen
void rate_config_screen(void) {
    char key; // Key pressed on the keypad
    char int_str[20]; // Buffer for display string
    clean_lcd(); // Clear the LCD
    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
    putsXLCD("(B)To return to"); // Display "(A)Confirm" on the LCD
    WriteCmdXLCD(0xC0); // Move the cursor to position 0xC2
    putsXLCD("the prior screen"); // Display "the prior screen" on the LCD
    __delay_ms(2000); // Wait
    while (1) {
        __delay_ms(100); // Wait 80ms
        clean_lcd(); // Clear the LCD
        WriteCmdXLCD(0x80); // Move the cursor to position 0x80
        putsXLCD("1-View Rate"); // Display "1-View Rate" on the LCD
        WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0
        putsXLCD("2-Change Rate"); // Display "2-Change Rate" on the LCD
        key = read_keypad(); // Read the matrix keypad
        if (key != '\0') { // If a key was pressed
            if (key == 'B') { // If the key 'B' is pressed
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x82); // Move the cursor to position 0x81
                putsXLCD("Returning to"); // Display "Returning to" on the LCD
                WriteCmdXLCD(0xC1); // Move the cursor to position 0xC2
                putsXLCD("previous screen"); // Display "previous screen" on the LCD
                __delay_ms(2000); // Wait 2000ms
                break; // Exit the loop
            }
            if (key == '1') { // If the key '1' is pressed
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x80); // Move the cursor to position 0x80
                sprintf(int_str, "Rate: %.4f", rate); // Format the rate string
                putsXLCD(int_str); // Display the rate on the LCD
                __delay_ms(2000); // Wait 2000ms
            }
            if (key == '2') { // If the key '2' is pressed
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x80); // Move the cursor to position 0x80
                putsXLCD("(A)Confirm"); // Display "(A)Confirm" on the LCD
                WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0
                putsXLCD("(*)Enter \xa5"); // Display "(*)Enter ." on the LCD
                __delay_ms(2000); // Wait 2000ms
                clean_lcd(); // Clear the LCD
                read_rate(); // Read the rate from the user
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x85); // Move the cursor to position 0x85
                putsXLCD("Rate"); // Display "Rate" on the LCD
                WriteCmdXLCD(0xC3); // Move the cursor to position 0xC3
                putsXLCD("Adjusted"); // Display "Adjusted" on the LCD
                __delay_ms(1000); // Wait 1000ms
            }
        }
    }
}
// Function to read the rate
void read_rate(void) {
    char key; // Character pressed on the keypad
    char rate_str[6] = {0}; // Buffer for the entered rate
    int index = 0; // Index for the entered rate

    clean_lcd(); // Clear the LCD
    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
    __delay_ms(20); // Wait for 20ms
    putsXLCD("Enter the rate:"); // Display "Enter the rate:" on the LCD
    WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0

    while (1) {
        __delay_ms(250); // Wait for 250ms
        key = read_keypad(); // Read the matrix keypad
        if (key != '\0') { // If a key was pressed
            if (key == 'A') { // If the key 'A' was pressed
                rate_str[index] = '\0'; // Add string terminator
                rate = atof(rate_str); // Convert the string to float
                break; // Exit the loop
            } else if (isdigit(key) || key == '*') { // Check if the pressed key is a digit or '*'
                if (index < 9) { // If the index is less than 9
                    if (key == '*') { // If the key '*' was pressed
                        rate_str[index++] = '.'; // Add '.' to the rate string
                    } else {
                        rate_str[index++] = key; // Add the digit to the rate string
                    }
                    WriteDataXLCD(key == '*' ? '.' : key); // Display the character on the LCD
                }
            }
        }
    }
}

// Function to display the configuration screen
void config_screen(void) {
    char key; // Character pressed on the keypad
    char int_str[20]; // Buffer for display string
    clean_lcd(); // Clear the LCD
    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
    putsXLCD("(B)To return to"); // Display "(B)To return to" on the LCD
    WriteCmdXLCD(0xC0); // Move the cursor to position 0xC2
    putsXLCD("the main screen"); // Display "the main screen" on the LCD
    __delay_ms(2000); // Wait
    while (1) {
        __delay_ms(100); // Wait for 100ms
        clean_lcd(); // Clear the LCD
        WriteCmdXLCD(0x80); // Move the cursor to position 0x80
        putsXLCD("1-Password"); // Display "1-Password" on the LCD
        WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0
        putsXLCD("2-Rate"); // Display "2-Rate" on the LCD
        key = read_keypad(); // Read the matrix keypad
        if (key != '\0') { // If a key was pressed
            if (key == 'B') { // If the key 'B' was pressed
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x82); // Move the cursor to position 0x81
                putsXLCD("Returning to"); // Display "Returning to" on the LCD
                WriteCmdXLCD(0xC2); // Move the cursor to position 0xC2
                putsXLCD("main screen"); // Display "main screen" on the LCD
                __delay_ms(2000); // Wait for 2000ms
                break; // Exit the loop
            }
            if (key == '1') { // If the key '1' was pressed
                config_password_screen(); // Display the password configuration screen
            }
            if (key == '2') { // If the key '2' was pressed
                rate_config_screen(); // Display the rate configuration screen
            }
        }
    }
}

// Function to display the password configuration screen
void config_password_screen(void) {
    char key; // Character pressed on the keypad
    char int_str[20]; // Buffer for display string
    char password[PASSWORD_LENGTH + 1];
    clean_lcd(); // Clear the LCD
    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
    putsXLCD("(B)To return to"); // Display "(B)To return to" on the LCD
    WriteCmdXLCD(0xC0); // Move the cursor to position 0xC2
    putsXLCD("the prior screen"); // Display "the prior screen" on the LCD
    __delay_ms(2000); // Wait
    while (1) {
        __delay_ms(300); // Wait for 300ms
        clean_lcd(); // Clear the LCD
        WriteCmdXLCD(0x80); // Move the cursor to position 0x80
        putsXLCD("1-Test Password"); // Display "1-Test Password" on the LCD
        WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0
        putsXLCD("2-Change Password"); // Display "2-Change Password" on the LCD
        key = read_keypad(); // Read the matrix keypad
        if (key != '\0') { // If a key was pressed
            if (key == 'B') { // If the key 'B' was pressed
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x82); // Move the cursor to position 0x81
                putsXLCD("Returning to"); // Display "Returning to" on the LCD
                WriteCmdXLCD(0xC1); // Move the cursor to position 0xC2
                putsXLCD("previous screen"); // Display "previous screen" on the LCD
                __delay_ms(2000); // Wait for 2000ms
                break; // Exit the loop
            }
            if (key == '1') { // If the key '1' was pressed
                clean_lcd(); // Clear the LCD
                WriteCmdXLCD(0x80); // Move the cursor to position 0x80
                putsXLCD("Password:"); // Display "Password:" on the LCD
                WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0

                get_password(password); // Get the user's password

                if (check_password(password)) { // Check if the password is correct
                    clean_lcd(); // Clear the LCD
                    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
                    putsXLCD("Correct Password"); // Display "Correct Password" on the LCD
                    __delay_ms(2000); // Wait for 2000ms
                } else {
                    clean_lcd(); // Clear the LCD
                    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
                    putsXLCD("Invalid Password"); // Display "Invalid Password" on the LCD
                    __delay_ms(2000); // Wait for 2000ms
                }
            }
            if (key == '2') { // If the key '2' was pressed
                set_password(); // Call the function to set a new password
            }
        }
    }
}
// Function to get the stored password
void get_password(char *password) {
    char key; // Character pressed on the keypad
    int index = 0; // Index for the entered password

    while (index < PASSWORD_LENGTH) {
        __delay_ms(200); // Wait for 200ms
        key = read_keypad(); // Read the matrix keypad

        if (key != '\0') { // If a key was pressed
            WriteCmdXLCD(0xC0 + index); // Move the cursor to the corresponding position on the LCD
            WriteDataXLCD(key); // Write the character of the pressed key on the LCD
            __delay_ms(200); // Wait for 200ms
            WriteCmdXLCD(0xC0 + index); // Move the cursor to the corresponding position on the LCD
            WriteDataXLCD('*'); // Show * on the LCD instead of the real number
            password[index++] = key; // Store the password character
        }
    }
    password[index] = '\0'; // Add null terminator at the end of the string
}

// Function to check if the entered password is correct
int check_password(char *input) {
    unsigned char stored_password[PASSWORD_LENGTH + 1]; // Buffer for the stored password
    EEPROM_read_user(EEPROM_ADDRESS_PASSWORD, stored_password); // Read the password from the EEPROM

    /*
    // Add debugging
    clean_lcd(); // Clear the LCD
    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
    putsXLCD("Stored:"); // Display "Stored:" on the LCD
    WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0
    putsXLCD(stored_password); // Display the stored password on the LCD
    __delay_ms(2000); // Wait for 2000ms
    */
    
    return strcmp(input, (const char*)stored_password) == 0;  // Compare the entered password with the stored password
}

// Function to set a new password
void set_password(void) {
    unsigned char new_password[PASSWORD_LENGTH + 1]; // Buffer for the new password

    clean_lcd(); // Clear the LCD
    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
    putsXLCD("New Password:"); // Display "New Password:" on the LCD
    WriteCmdXLCD(0xC0); // Move the cursor to position 0xC0

    get_password(new_password); // Get the new password from the user

    EEPROM_write_user(EEPROM_ADDRESS_PASSWORD, new_password); // Write the new password to the EEPROM
    clean_lcd(); // Clear the LCD
    WriteCmdXLCD(0x80); // Move the cursor to position 0x80
    putsXLCD("Password Changed"); // Display "Password Changed" on the LCD
    __delay_ms(2000); // Wait for 2000ms
}

// Function to assign a default password to the system
void assign_default_password(void) {
    unsigned char default_password[PASSWORD_LENGTH + 1] = "1234"; // Default password

    // Check if passwords are already assigned
    if (!has_passwords()) {
        EEPROM_write_user(EEPROM_ADDRESS_PASSWORD, default_password); // Write the default password to the EEPROM
    }
}

// Function to check if there are stored passwords
int has_passwords(void) {
    unsigned char address = 0; // Initial EEPROM address

    while (address < 200) {
        if (EEPROM_Read(address) != 0xFF) {
            return 1; // Password found
        }
        address++;
    }

    return 0; // No password found
}

// Function to write a password to the EEPROM memory
void EEPROM_write_user(unsigned char address, unsigned char *password) {
    for (unsigned char i = 0; i < PASSWORD_LENGTH + 1; i++) {
        EEPROM_Write(address, password[i]); // Write each character of the password to the EEPROM
        address++;
    }
}

// Function to read a password from the EEPROM memory
void EEPROM_read_user(unsigned char address, unsigned char *password) {
    for (unsigned char i = 0; i < PASSWORD_LENGTH + 1; i++) {
        password[i] = EEPROM_Read(address); // Read each character of the password from the EEPROM
        address++;
    }
}

// Prototype for the function to write a byte to the EEPROM memory
void EEPROM_Write(unsigned char address, unsigned char data) {
    while (WR) continue;       // Wait for any ongoing write operation
    EEADR = address;           // Load address
    EEDATA = data;             // Load data
    EECON1bits.EEPGD = 0;      // Select EEPROM memory
    EECON1bits.CFGS = 0;       // Access EEPROM memory
    EECON1bits.WREN = 1;       // Enable write
    INTCONbits.GIE = 0;        // Disable global interrupts

    EECON2 = 0x55;             // Required write sequence
    EECON2 = 0xAA;             // Required write sequence
    EECON1bits.WR = 1;         // Start write
    
    while (!PIR2bits.EEIF);    // Wait for write to complete
    INTCONbits.GIE = 1;        // Enable global interrupts
    PIR2bits.EEIF = 0;         // Clear write interrupt flag
    EECON1bits.WREN = 0;       // Disable write
}

// Prototype for the function to read a byte from the EEPROM memory
unsigned char EEPROM_Read(unsigned char address) {
    EEADR = address;            // Load address
    EECON1bits.EEPGD = 0;       // Select EEPROM memory
    EECON1bits.CFGS  = 0;       // Access EEPROM memory
    EECON1bits.RD    = 1;       // Request memory read
    return(EEDATA);           // Return read data
}

// Main function
void main(void) {
    
    initSystem(); // Initialize the system
    
    char key; // Variable to store the pressed key
    
    while (1) {
        __delay_ms(80); // Wait for 80ms
        current = convert_current(); // Convert and read the current
        voltage = convert_voltage(); // Convert and read the voltage
        key = read_keypad(); // Read the matrix keypad
        initial_screen(); // Show the initial screen
        if (key != '\0') { // If a key was pressed
            if (key == '1') { // If the key '1' was pressed
                main_screen(); // Display the main screen
            }
            if (key == '2') { // If the key '2' was pressed
                config_screen(); // Display the configuration screen
            }
        }
    }
}