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

#include <xc.h>
#include "nxlcd.h"
#include <string.h>
#include <stdio.h>
#include <math.h>
#include <ctype.h>



#define COL1 PORTBbits.RB0
#define COL2 PORTBbits.RB1
#define COL3 PORTBbits.RB2
#define COL4 PORTBbits.RB3
#define ROW1 PORTBbits.RB4
#define ROW2 PORTBbits.RB5
#define ROW3 PORTBbits.RB6
#define ROW4 PORTBbits.RB7

void initSystem();
char read_keypad(void);
void clean_lcd();
void set_password();
unsigned char EEPROM_Read(unsigned char address);
void EEPROM_Write(unsigned char address, unsigned char data);
void EEPROM_read_user(unsigned char address, unsigned char *password);
void EEPROM_write_user(unsigned char address, unsigned char *password);
void get_password(char *password);
int check_password(char *input);
void assign_default_password();
int has_passwords();
#define EEPROM_ADDRESS_PASSWORD 0x00
#define PASSWORD_LENGTH 4
#define _XTAL_FREQ 20000000
void initSystem() {
    TRISCbits.TRISC0 = 0;
    TRISCbits.TRISC1 = 0;
    TRISCbits.TRISC2 = 0;

    TRISA = 0xFF;
    TRISB = 0xF0;
    TRISD = 0xF0;

    RBPU = 0;

    ADCON0 = 0b00001111;
    ADCON1 = 0b00001101;
    ADCON2 = 0b10010101;

    PORTDbits.RD0 = 1;
    PORTDbits.RD1 = 1;
    PORTDbits.RD2 = 1;
    PORTDbits.RD3 = 1;

    OpenXLCD(FOUR_BIT & LINES_5X7);

    
}

void EEPROM_write_user(unsigned char address, unsigned char *password) {
    for (unsigned char i = 0; i < PASSWORD_LENGTH; i++) {
        EEPROM_Write(address + i, password[i]);
    }
}

void EEPROM_read_user(unsigned char address, unsigned char *password) {
    for (unsigned char i = 0; i < PASSWORD_LENGTH; i++) {
        password[i] = EEPROM_Read(address + i);
    }
}

void EEPROM_Write(unsigned char address, unsigned char data) {
    while (WR) continue;       // Aguarda qualquer operação de escrita em andamento
    EEADR = address;           // Carrega endereço
    EEDATA = data;             // Carrega dado
    EECON1bits.EEPGD = 0;      // Seleção da memória EEPROM
    EECON1bits.CFGS = 0;       // Acessar a memória EEPROM
    EECON1bits.WREN = 1;       // Habilita escrita
    INTCONbits.GIE = 0;        // Desabilita interrupções globais

    EECON2 = 0x55;             // Sequência de escrita obrigatória
    EECON2 = 0xAA;             // Sequência de escrita obrigatória
    EECON1bits.WR = 1;         // Inicia a escrita
    
    while (!PIR2bits.EEIF);    // Aguarda término da escrita
    INTCONbits.GIE = 1;        // Habilita interrupções globais
    PIR2bits.EEIF = 0;         // Limpa flag de interrupção de escrita
    EECON1bits.WREN = 0;       // Desabilita escrita
}

unsigned char EEPROM_Read(unsigned char address) {
    EEADR = address;            //Carrega endereço
    EECON1bits.EEPGD = 0;       //Seleção da memória EEPROM
    EECON1bits.CFGS  = 0;       //Acessar a memória EEPROM
    EECON1bits.RD    = 1;       //Solicita leitura da memória
    return(EEDATA);           //Retorna dado lido
}

char read_keypad(void) {
    const char keys[4][4] = {
        {'A', 'B', 'C', 'D'},
        {'3', '6', '9', '#'},
        {'2', '5', '8', '0'},
        {'1', '4', '7', '*'}
    };
    int col = 0;
    do {
        switch(col) {
            case 0:
                COL1 = 0;
                COL2 = 1;
                COL3 = 1;
                COL4 = 1;
                break;
            case 1:
                COL1 = 1;
                COL2 = 0;
                COL3 = 1;
                COL4 = 1;
                break;
            case 2:
                COL1 = 1;
                COL2 = 1;
                COL3 = 0;
                COL4 = 1;
                break;
            case 3:
                COL1 = 1;
                COL2 = 1;
                COL3 = 1;
                COL4 = 0;
                break;
        }
        if (ROW1 == 0) {
            __delay_ms(100);
            return keys[col][0];
        }
        if (ROW2 == 0) {
            __delay_ms(100);
            return keys[col][1];
        }
        if (ROW3 == 0) {
            __delay_ms(100);
            return keys[col][2];
        }
        if (ROW4 == 0) {
            __delay_ms(100);
            return keys[col][3];
        }
        col++;
    } while (col < 4);
    return '\0';
}

void clean_lcd() {
    WriteCmdXLCD(0x01);
    __delay_ms(5);
}

void show_initial() {
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("1-Iniciar");
    WriteCmdXLCD(0xC0);
    putsXLCD("2-Configuracoes");
    WriteCmdXLCD(0x94);
    putsXLCD("3-Alterar senha");
}

void get_password(char *password) {
    char key;
    int index = 0;
    while (index < PASSWORD_LENGTH) {
        __delay_ms(200);
        key = read_keypad();
        if (isdigit(key)) {
            password[index++] = key;
            WriteDataXLCD('*'); // Display '*' instead of the actual digit
        }
        
    }
    password[index] = '\0';
}

int check_password(char *input) {
    unsigned char stored_password[PASSWORD_LENGTH + 1];
    EEPROM_read_user(EEPROM_ADDRESS_PASSWORD, stored_password);
    return strcmp(input, stored_password) == 0;
}

void set_password() {
    unsigned char new_password[PASSWORD_LENGTH + 1];
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("Nova Senha:");
    WriteCmdXLCD(0xC0);

    get_password(new_password);

    EEPROM_write_user(EEPROM_ADDRESS_PASSWORD, new_password);
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("Senha Alterada");
    __delay_ms(2000);
}

void assign_default_password() {
    unsigned char default_password[PASSWORD_LENGTH + 1] = "1234";
    // Verifica se já existem senhas atribuídas
    if (!has_passwords()) {
        EEPROM_write_user(EEPROM_ADDRESS_PASSWORD, default_password);
    }
}

int has_passwords() {
    unsigned char address = 0;
    
    while (address < 200) {
        if (EEPROM_Read(address) != 0xFF) {
            return 1; // Senha encontrada
        }
        address++;
    }
    
    return 0; // Nenhuma senha encontrada
}

void main(void) {
    initSystem();
    assign_default_password();
    char key;
    char password[PASSWORD_LENGTH + 1];

    while (1) {
        __delay_ms(80);
        key = read_keypad();
        show_initial();
        char int_str[20];
        if (key != '\0') {
            if (key == '1') {
                clean_lcd();
                WriteCmdXLCD(0x80);
                putsXLCD("Teste1");
                __delay_ms(1000);
            }
            if (key == '2') {
                clean_lcd();
                WriteCmdXLCD(0x80);
                putsXLCD("Senha:");
                WriteCmdXLCD(0xC0);

                get_password(password);

                if (check_password(password)) {
                    clean_lcd();
                    WriteCmdXLCD(0x80);
                    putsXLCD("Senha Correta");
                    __delay_ms(2000);
                } else {
                    clean_lcd();
                    WriteCmdXLCD(0x80);
                    putsXLCD("Senha Invalida");
                    __delay_ms(2000);
                }
            }
            if (key == '3') {
                set_password();
            }
        }
    }
}


