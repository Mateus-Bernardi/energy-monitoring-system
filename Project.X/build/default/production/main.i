# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 285 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "main.c" 2

#pragma config PLLDIV = 1
#pragma config CPUDIV = OSC1_PLL2
#pragma config USBDIV = 1


#pragma config FOSC = HS
#pragma config FCMEN = OFF
#pragma config IESO = OFF


#pragma config PWRT = OFF
#pragma config BOR = OFF
#pragma config BORV = 3
#pragma config VREGEN = OFF


#pragma config WDT = OFF
#pragma config WDTPS = 32768


#pragma config CCP2MX = OFF
#pragma config PBADEN = OFF
#pragma config LPT1OSC = OFF
#pragma config MCLRE = ON


#pragma config STVREN = OFF
#pragma config LVP = OFF
#pragma config ICPRT = OFF
#pragma config XINST = OFF


#pragma config CP0 = OFF
#pragma config CP1 = OFF
#pragma config CP2 = OFF
#pragma config CP3 = OFF


#pragma config CPB = OFF
#pragma config CPD = OFF


#pragma config WRT0 = OFF
#pragma config WRT1 = OFF
#pragma config WRT2 = OFF
#pragma config WRT3 = OFF


#pragma config WRTC = OFF
#pragma config WRTB = OFF
#pragma config WRTD = OFF


#pragma config EBTR0 = OFF
#pragma config EBTR1 = OFF
#pragma config EBTR2 = OFF
#pragma config EBTR3 = OFF


#pragma config EBTRB = OFF



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 1 3
# 18 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);


# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/xc8debug.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/musl_xc8.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 2 3





# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/features.h" 1 3
# 11 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 2 3
# 21 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int wchar_t;
# 128 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned size_t;
# 174 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 int24_t;
# 210 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef __uint24 uint24_t;
# 22 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 2 3

int atoi (const char *);
long atol (const char *);

long long atoll (const char *);

double atof (const char *);


float strtof (const char *restrict, char **restrict);
double strtod (const char *restrict, char **restrict);
long double strtold (const char *restrict, char **restrict);



long strtol (const char *restrict, char **restrict, int);
unsigned long strtoul (const char *restrict, char **restrict, int);

long long strtoll (const char *restrict, char **restrict, int);
unsigned long long strtoull (const char *restrict, char **restrict, int);


unsigned long __strtoxl(const char * s, char ** endptr, int base, char is_signed);

unsigned long long __strtoxll(const char * s, char ** endptr, int base, char is_signed);
# 55 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdlib.h" 3
int rand (void);
void srand (unsigned);

void *malloc (size_t);
void *calloc (size_t, size_t);
void *realloc (void *, size_t);
void free (void *);

          void abort (void);
int atexit (void (*) (void));
          void exit (int);
          void _Exit (int);

void *bsearch (const void *, const void *, size_t, size_t, int (*)(const void *, const void *));







__attribute__((nonreentrant)) void qsort (void *, size_t, size_t, int (*)(const void *, const void *));

int abs (int);
long labs (long);

long long llabs (long long);


typedef struct { int quot, rem; } div_t;
typedef struct { long quot, rem; } ldiv_t;

typedef struct { long long quot, rem; } lldiv_t;


div_t div (int, int);
ldiv_t ldiv (long, long);

lldiv_t lldiv (long long, long long);


typedef struct { unsigned int quot, rem; } udiv_t;
typedef struct { unsigned long quot, rem; } uldiv_t;
udiv_t udiv (unsigned int, unsigned int);
uldiv_t uldiv (unsigned long, unsigned long);
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/xc8debug.h" 2 3







#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/builtins.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 1 3
# 26 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 133 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned __int24 uintptr_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 intptr_t;
# 164 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef signed char int8_t;




typedef short int16_t;
# 179 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef long int32_t;





typedef long long int64_t;
# 194 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef long long intmax_t;





typedef unsigned char uint8_t;




typedef unsigned short uint16_t;
# 215 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long uint32_t;





typedef unsigned long long uint64_t;
# 235 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef unsigned long long uintmax_t;
# 27 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 2 3

typedef int8_t int_fast8_t;

typedef int64_t int_fast64_t;


typedef int8_t int_least8_t;
typedef int16_t int_least16_t;

typedef int24_t int_least24_t;
typedef int24_t int_fast24_t;

typedef int32_t int_least32_t;

typedef int64_t int_least64_t;


typedef uint8_t uint_fast8_t;

typedef uint64_t uint_fast64_t;


typedef uint8_t uint_least8_t;
typedef uint16_t uint_least16_t;

typedef uint24_t uint_least24_t;
typedef uint24_t uint_fast24_t;

typedef uint32_t uint_least32_t;

typedef uint64_t uint_least64_t;
# 148 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/stdint.h" 1 3
typedef int16_t int_fast16_t;
typedef int32_t int_fast32_t;
typedef uint16_t uint_fast16_t;
typedef uint32_t uint_fast32_t;
# 149 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdint.h" 2 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/builtins.h" 2 3


#pragma intrinsic(__nop)
extern void __nop(void);

#pragma intrinsic(__nopf000)
extern void __nopf000(void);
#pragma intrinsic(__nopffff)
extern void __nopffff(void);
#pragma intrinsic(__nop0000)
extern void __nop0000(void);



#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(uint32_t);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(uint32_t);

#pragma intrinsic(_delay3)
extern __attribute__((nonreentrant)) void _delay3(uint8_t);
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 2 3








# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18.h" 1 3



# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 1 3
# 5 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18.h" 2 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18_chip_select.h" 1 3
# 789 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18_chip_select.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 1 3
# 50 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char SPPDATA __attribute__((address(0xF62)));

__asm("SPPDATA equ 0F62h");


typedef union {
    struct {
        unsigned DATA :8;
    };
} SPPDATAbits_t;
extern volatile SPPDATAbits_t SPPDATAbits __attribute__((address(0xF62)));
# 70 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char SPPCFG __attribute__((address(0xF63)));

__asm("SPPCFG equ 0F63h");


typedef union {
    struct {
        unsigned WS :4;
        unsigned CLK1EN :1;
        unsigned CSEN :1;
        unsigned CLKCFG :2;
    };
    struct {
        unsigned WS0 :1;
        unsigned WS1 :1;
        unsigned WS2 :1;
        unsigned WS3 :1;
        unsigned :2;
        unsigned CLKCFG0 :1;
        unsigned CLKCFG1 :1;
    };
} SPPCFGbits_t;
extern volatile SPPCFGbits_t SPPCFGbits __attribute__((address(0xF63)));
# 147 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char SPPEPS __attribute__((address(0xF64)));

__asm("SPPEPS equ 0F64h");


typedef union {
    struct {
        unsigned ADDR :4;
        unsigned SPPBUSY :1;
        unsigned :1;
        unsigned WRSPP :1;
        unsigned RDSPP :1;
    };
    struct {
        unsigned ADDR0 :1;
        unsigned ADDR1 :1;
        unsigned ADDR2 :1;
        unsigned ADDR3 :1;
    };
    struct {
        unsigned :4;
        unsigned BUSY :1;
    };
} SPPEPSbits_t;
extern volatile SPPEPSbits_t SPPEPSbits __attribute__((address(0xF64)));
# 221 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char SPPCON __attribute__((address(0xF65)));

__asm("SPPCON equ 0F65h");


typedef union {
    struct {
        unsigned SPPEN :1;
        unsigned SPPOWN :1;
    };
} SPPCONbits_t;
extern volatile SPPCONbits_t SPPCONbits __attribute__((address(0xF65)));
# 247 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short UFRM __attribute__((address(0xF66)));

__asm("UFRM equ 0F66h");




extern volatile unsigned char UFRML __attribute__((address(0xF66)));

__asm("UFRML equ 0F66h");


typedef union {
    struct {
        unsigned FRM :8;
    };
    struct {
        unsigned FRM0 :1;
        unsigned FRM1 :1;
        unsigned FRM2 :1;
        unsigned FRM3 :1;
        unsigned FRM4 :1;
        unsigned FRM5 :1;
        unsigned FRM6 :1;
        unsigned FRM7 :1;
    };
    struct {
        unsigned FRML :8;
    };
} UFRMLbits_t;
extern volatile UFRMLbits_t UFRMLbits __attribute__((address(0xF66)));
# 332 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UFRMH __attribute__((address(0xF67)));

__asm("UFRMH equ 0F67h");


typedef union {
    struct {
        unsigned FRM :3;
    };
    struct {
        unsigned FRM8 :1;
        unsigned FRM9 :1;
        unsigned FRM10 :1;
    };
} UFRMHbits_t;
extern volatile UFRMHbits_t UFRMHbits __attribute__((address(0xF67)));
# 372 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UIR __attribute__((address(0xF68)));

__asm("UIR equ 0F68h");


typedef union {
    struct {
        unsigned URSTIF :1;
        unsigned UERRIF :1;
        unsigned ACTVIF :1;
        unsigned TRNIF :1;
        unsigned IDLEIF :1;
        unsigned STALLIF :1;
        unsigned SOFIF :1;
    };
} UIRbits_t;
extern volatile UIRbits_t UIRbits __attribute__((address(0xF68)));
# 428 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UIE __attribute__((address(0xF69)));

__asm("UIE equ 0F69h");


typedef union {
    struct {
        unsigned URSTIE :1;
        unsigned UERRIE :1;
        unsigned ACTVIE :1;
        unsigned TRNIE :1;
        unsigned IDLEIE :1;
        unsigned STALLIE :1;
        unsigned SOFIE :1;
    };
} UIEbits_t;
extern volatile UIEbits_t UIEbits __attribute__((address(0xF69)));
# 484 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEIR __attribute__((address(0xF6A)));

__asm("UEIR equ 0F6Ah");


typedef union {
    struct {
        unsigned PIDEF :1;
        unsigned CRC5EF :1;
        unsigned CRC16EF :1;
        unsigned DFN8EF :1;
        unsigned BTOEF :1;
        unsigned :2;
        unsigned BTSEF :1;
    };
} UEIRbits_t;
extern volatile UEIRbits_t UEIRbits __attribute__((address(0xF6A)));
# 535 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEIE __attribute__((address(0xF6B)));

__asm("UEIE equ 0F6Bh");


typedef union {
    struct {
        unsigned PIDEE :1;
        unsigned CRC5EE :1;
        unsigned CRC16EE :1;
        unsigned DFN8EE :1;
        unsigned BTOEE :1;
        unsigned :2;
        unsigned BTSEE :1;
    };
} UEIEbits_t;
extern volatile UEIEbits_t UEIEbits __attribute__((address(0xF6B)));
# 586 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char USTAT __attribute__((address(0xF6C)));

__asm("USTAT equ 0F6Ch");


typedef union {
    struct {
        unsigned :1;
        unsigned PPBI :1;
        unsigned DIR :1;
        unsigned ENDP :4;
    };
    struct {
        unsigned :3;
        unsigned ENDP0 :1;
        unsigned ENDP1 :1;
        unsigned ENDP2 :1;
        unsigned ENDP3 :1;
    };
} USTATbits_t;
extern volatile USTATbits_t USTATbits __attribute__((address(0xF6C)));
# 646 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UCON __attribute__((address(0xF6D)));

__asm("UCON equ 0F6Dh");


typedef union {
    struct {
        unsigned :1;
        unsigned SUSPND :1;
        unsigned RESUME :1;
        unsigned USBEN :1;
        unsigned PKTDIS :1;
        unsigned SE0 :1;
        unsigned PPBRST :1;
    };
} UCONbits_t;
extern volatile UCONbits_t UCONbits __attribute__((address(0xF6D)));
# 697 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UADDR __attribute__((address(0xF6E)));

__asm("UADDR equ 0F6Eh");


typedef union {
    struct {
        unsigned ADDR :7;
    };
    struct {
        unsigned ADDR0 :1;
        unsigned ADDR1 :1;
        unsigned ADDR2 :1;
        unsigned ADDR3 :1;
        unsigned ADDR4 :1;
        unsigned ADDR5 :1;
        unsigned ADDR6 :1;
    };
} UADDRbits_t;
extern volatile UADDRbits_t UADDRbits __attribute__((address(0xF6E)));
# 761 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UCFG __attribute__((address(0xF6F)));

__asm("UCFG equ 0F6Fh");


typedef union {
    struct {
        unsigned PPB :2;
        unsigned FSEN :1;
        unsigned UTRDIS :1;
        unsigned UPUEN :1;
        unsigned :1;
        unsigned UOEMON :1;
        unsigned UTEYE :1;
    };
    struct {
        unsigned PPB0 :1;
        unsigned PPB1 :1;
    };
    struct {
        unsigned UPP0 :1;
        unsigned UPP1 :1;
    };
} UCFGbits_t;
extern volatile UCFGbits_t UCFGbits __attribute__((address(0xF6F)));
# 840 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP0 __attribute__((address(0xF70)));

__asm("UEP0 equ 0F70h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP0STALL :1;
        unsigned EP0INEN :1;
        unsigned EP0OUTEN :1;
        unsigned EP0CONDIS :1;
        unsigned EP0HSHK :1;
    };
    struct {
        unsigned EPSTALL0 :1;
        unsigned EPINEN0 :1;
        unsigned EPOUTEN0 :1;
        unsigned EPCONDIS0 :1;
        unsigned EPHSHK0 :1;
    };
} UEP0bits_t;
extern volatile UEP0bits_t UEP0bits __attribute__((address(0xF70)));
# 948 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP1 __attribute__((address(0xF71)));

__asm("UEP1 equ 0F71h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP1STALL :1;
        unsigned EP1INEN :1;
        unsigned EP1OUTEN :1;
        unsigned EP1CONDIS :1;
        unsigned EP1HSHK :1;
    };
    struct {
        unsigned EPSTALL1 :1;
        unsigned EPINEN1 :1;
        unsigned EPOUTEN1 :1;
        unsigned EPCONDIS1 :1;
        unsigned EPHSHK1 :1;
    };
} UEP1bits_t;
extern volatile UEP1bits_t UEP1bits __attribute__((address(0xF71)));
# 1056 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP2 __attribute__((address(0xF72)));

__asm("UEP2 equ 0F72h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP2STALL :1;
        unsigned EP2INEN :1;
        unsigned EP2OUTEN :1;
        unsigned EP2CONDIS :1;
        unsigned EP2HSHK :1;
    };
    struct {
        unsigned EPSTALL2 :1;
        unsigned EPINEN2 :1;
        unsigned EPOUTEN2 :1;
        unsigned EPCONDIS2 :1;
        unsigned EPHSHK2 :1;
    };
} UEP2bits_t;
extern volatile UEP2bits_t UEP2bits __attribute__((address(0xF72)));
# 1164 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP3 __attribute__((address(0xF73)));

__asm("UEP3 equ 0F73h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP3STALL :1;
        unsigned EP3INEN :1;
        unsigned EP3OUTEN :1;
        unsigned EP3CONDIS :1;
        unsigned EP3HSHK :1;
    };
    struct {
        unsigned EPSTALL3 :1;
        unsigned EPINEN3 :1;
        unsigned EPOUTEN3 :1;
        unsigned EPCONDIS3 :1;
        unsigned EPHSHK3 :1;
    };
} UEP3bits_t;
extern volatile UEP3bits_t UEP3bits __attribute__((address(0xF73)));
# 1272 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP4 __attribute__((address(0xF74)));

__asm("UEP4 equ 0F74h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP4STALL :1;
        unsigned EP4INEN :1;
        unsigned EP4OUTEN :1;
        unsigned EP4CONDIS :1;
        unsigned EP4HSHK :1;
    };
    struct {
        unsigned EPSTALL4 :1;
        unsigned EPINEN4 :1;
        unsigned EPOUTEN4 :1;
        unsigned EPCONDIS4 :1;
        unsigned EPHSHK4 :1;
    };
} UEP4bits_t;
extern volatile UEP4bits_t UEP4bits __attribute__((address(0xF74)));
# 1380 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP5 __attribute__((address(0xF75)));

__asm("UEP5 equ 0F75h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP5STALL :1;
        unsigned EP5INEN :1;
        unsigned EP5OUTEN :1;
        unsigned EP5CONDIS :1;
        unsigned EP5HSHK :1;
    };
    struct {
        unsigned EPSTALL5 :1;
        unsigned EPINEN5 :1;
        unsigned EPOUTEN5 :1;
        unsigned EPCONDIS5 :1;
        unsigned EPHSHK5 :1;
    };
} UEP5bits_t;
extern volatile UEP5bits_t UEP5bits __attribute__((address(0xF75)));
# 1488 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP6 __attribute__((address(0xF76)));

__asm("UEP6 equ 0F76h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP6STALL :1;
        unsigned EP6INEN :1;
        unsigned EP6OUTEN :1;
        unsigned EP6CONDIS :1;
        unsigned EP6HSHK :1;
    };
    struct {
        unsigned EPSTALL6 :1;
        unsigned EPINEN6 :1;
        unsigned EPOUTEN6 :1;
        unsigned EPCONDIS6 :1;
        unsigned EPHSHK6 :1;
    };
} UEP6bits_t;
extern volatile UEP6bits_t UEP6bits __attribute__((address(0xF76)));
# 1596 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP7 __attribute__((address(0xF77)));

__asm("UEP7 equ 0F77h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EP7STALL :1;
        unsigned EP7INEN :1;
        unsigned EP7OUTEN :1;
        unsigned EP7CONDIS :1;
        unsigned EP7HSHK :1;
    };
    struct {
        unsigned EPSTALL7 :1;
        unsigned EPINEN7 :1;
        unsigned EPOUTEN7 :1;
        unsigned EPCONDIS7 :1;
        unsigned EPHSHK7 :1;
    };
} UEP7bits_t;
extern volatile UEP7bits_t UEP7bits __attribute__((address(0xF77)));
# 1704 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP8 __attribute__((address(0xF78)));

__asm("UEP8 equ 0F78h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL8 :1;
        unsigned EPINEN8 :1;
        unsigned EPOUTEN8 :1;
        unsigned EPCONDIS8 :1;
        unsigned EPHSHK8 :1;
    };
} UEP8bits_t;
extern volatile UEP8bits_t UEP8bits __attribute__((address(0xF78)));
# 1780 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP9 __attribute__((address(0xF79)));

__asm("UEP9 equ 0F79h");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL9 :1;
        unsigned EPINEN9 :1;
        unsigned EPOUTEN9 :1;
        unsigned EPCONDIS9 :1;
        unsigned EPHSHK9 :1;
    };
} UEP9bits_t;
extern volatile UEP9bits_t UEP9bits __attribute__((address(0xF79)));
# 1856 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP10 __attribute__((address(0xF7A)));

__asm("UEP10 equ 0F7Ah");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL10 :1;
        unsigned EPINEN10 :1;
        unsigned EPOUTEN10 :1;
        unsigned EPCONDIS10 :1;
        unsigned EPHSHK10 :1;
    };
} UEP10bits_t;
extern volatile UEP10bits_t UEP10bits __attribute__((address(0xF7A)));
# 1932 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP11 __attribute__((address(0xF7B)));

__asm("UEP11 equ 0F7Bh");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL11 :1;
        unsigned EPINEN11 :1;
        unsigned EPOUTEN11 :1;
        unsigned EPCONDIS11 :1;
        unsigned EPHSHK11 :1;
    };
} UEP11bits_t;
extern volatile UEP11bits_t UEP11bits __attribute__((address(0xF7B)));
# 2008 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP12 __attribute__((address(0xF7C)));

__asm("UEP12 equ 0F7Ch");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL12 :1;
        unsigned EPINEN12 :1;
        unsigned EPOUTEN12 :1;
        unsigned EPCONDIS12 :1;
        unsigned EPHSHK12 :1;
    };
} UEP12bits_t;
extern volatile UEP12bits_t UEP12bits __attribute__((address(0xF7C)));
# 2084 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP13 __attribute__((address(0xF7D)));

__asm("UEP13 equ 0F7Dh");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL13 :1;
        unsigned EPINEN13 :1;
        unsigned EPOUTEN13 :1;
        unsigned EPCONDIS13 :1;
        unsigned EPHSHK13 :1;
    };
} UEP13bits_t;
extern volatile UEP13bits_t UEP13bits __attribute__((address(0xF7D)));
# 2160 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP14 __attribute__((address(0xF7E)));

__asm("UEP14 equ 0F7Eh");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL14 :1;
        unsigned EPINEN14 :1;
        unsigned EPOUTEN14 :1;
        unsigned EPCONDIS14 :1;
        unsigned EPHSHK14 :1;
    };
} UEP14bits_t;
extern volatile UEP14bits_t UEP14bits __attribute__((address(0xF7E)));
# 2236 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char UEP15 __attribute__((address(0xF7F)));

__asm("UEP15 equ 0F7Fh");


typedef union {
    struct {
        unsigned EPSTALL :1;
        unsigned EPINEN :1;
        unsigned EPOUTEN :1;
        unsigned EPCONDIS :1;
        unsigned EPHSHK :1;
    };
    struct {
        unsigned EPSTALL15 :1;
        unsigned EPINEN15 :1;
        unsigned EPOUTEN15 :1;
        unsigned EPCONDIS15 :1;
        unsigned EPHSHK15 :1;
    };
} UEP15bits_t;
extern volatile UEP15bits_t UEP15bits __attribute__((address(0xF7F)));
# 2312 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PORTA __attribute__((address(0xF80)));

__asm("PORTA equ 0F80h");


typedef union {
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
    };
    struct {
        unsigned AN0 :1;
        unsigned AN1 :1;
        unsigned AN2 :1;
        unsigned AN3 :1;
        unsigned T0CKI :1;
        unsigned AN4 :1;
        unsigned OSC2 :1;
    };
    struct {
        unsigned :2;
        unsigned VREFM :1;
        unsigned VREFP :1;
        unsigned :1;
        unsigned LVDIN :1;
    };
    struct {
        unsigned :5;
        unsigned HLVDIN :1;
    };
    struct {
        unsigned ULPWUIN :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0xF80)));
# 2451 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PORTB __attribute__((address(0xF81)));

__asm("PORTB equ 0F81h");


typedef union {
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
    struct {
        unsigned INT0 :1;
        unsigned INT1 :1;
        unsigned INT2 :1;
        unsigned :2;
        unsigned PGM :1;
        unsigned PGC :1;
        unsigned PGD :1;
    };
    struct {
        unsigned :3;
        unsigned CCP2_PA2 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0xF81)));
# 2561 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PORTC __attribute__((address(0xF82)));

__asm("PORTC equ 0F82h");


typedef union {
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned :1;
        unsigned RC4 :1;
        unsigned RC5 :1;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
    struct {
        unsigned T1OSO :1;
        unsigned T1OSI :1;
        unsigned CCP1 :1;
        unsigned :3;
        unsigned TX :1;
        unsigned RX :1;
    };
    struct {
        unsigned T13CKI :1;
        unsigned :1;
        unsigned P1A :1;
        unsigned :3;
        unsigned CK :1;
        unsigned DT :1;
    };
    struct {
        unsigned :1;
        unsigned CCP2 :1;
        unsigned PA1 :1;
    };
    struct {
        unsigned :1;
        unsigned PA2 :1;
    };
} PORTCbits_t;
extern volatile PORTCbits_t PORTCbits __attribute__((address(0xF82)));
# 2703 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PORTD __attribute__((address(0xF83)));

__asm("PORTD equ 0F83h");


typedef union {
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
    struct {
        unsigned SPP0 :1;
        unsigned SPP1 :1;
        unsigned SPP2 :1;
        unsigned SPP3 :1;
        unsigned SPP4 :1;
        unsigned SPP5 :1;
        unsigned SPP6 :1;
        unsigned SPP7 :1;
    };
    struct {
        unsigned :7;
        unsigned SS2 :1;
    };
} PORTDbits_t;
extern volatile PORTDbits_t PORTDbits __attribute__((address(0xF83)));
# 2824 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PORTE __attribute__((address(0xF84)));

__asm("PORTE equ 0F84h");


typedef union {
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
        unsigned RE3 :1;
        unsigned :3;
        unsigned RDPU :1;
    };
    struct {
        unsigned CK1SPP :1;
        unsigned CK2SPP :1;
        unsigned OESPP :1;
    };
    struct {
        unsigned PD2 :1;
        unsigned PC2 :1;
        unsigned CCP10 :1;
        unsigned CCP9E :1;
        unsigned :3;
        unsigned CCP2E :1;
    };
    struct {
        unsigned RDE :1;
        unsigned WRE :1;
        unsigned CS :1;
        unsigned PC3E :1;
        unsigned :3;
        unsigned PA2E :1;
    };
    struct {
        unsigned :2;
        unsigned PB2 :1;
        unsigned :4;
        unsigned RE7 :1;
    };
} PORTEbits_t;
extern volatile PORTEbits_t PORTEbits __attribute__((address(0xF84)));
# 2971 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char LATA __attribute__((address(0xF89)));

__asm("LATA equ 0F89h");


typedef union {
    struct {
        unsigned LATA0 :1;
        unsigned LATA1 :1;
        unsigned LATA2 :1;
        unsigned LATA3 :1;
        unsigned LATA4 :1;
        unsigned LATA5 :1;
        unsigned LATA6 :1;
    };
    struct {
        unsigned LA0 :1;
        unsigned LA1 :1;
        unsigned LA2 :1;
        unsigned LA3 :1;
        unsigned LA4 :1;
        unsigned LA5 :1;
        unsigned LA6 :1;
    };
} LATAbits_t;
extern volatile LATAbits_t LATAbits __attribute__((address(0xF89)));
# 3071 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char LATB __attribute__((address(0xF8A)));

__asm("LATB equ 0F8Ah");


typedef union {
    struct {
        unsigned LATB0 :1;
        unsigned LATB1 :1;
        unsigned LATB2 :1;
        unsigned LATB3 :1;
        unsigned LATB4 :1;
        unsigned LATB5 :1;
        unsigned LATB6 :1;
        unsigned LATB7 :1;
    };
    struct {
        unsigned LB0 :1;
        unsigned LB1 :1;
        unsigned LB2 :1;
        unsigned LB3 :1;
        unsigned LB4 :1;
        unsigned LB5 :1;
        unsigned LB6 :1;
        unsigned LB7 :1;
    };
} LATBbits_t;
extern volatile LATBbits_t LATBbits __attribute__((address(0xF8A)));
# 3183 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char LATC __attribute__((address(0xF8B)));

__asm("LATC equ 0F8Bh");


typedef union {
    struct {
        unsigned LATC0 :1;
        unsigned LATC1 :1;
        unsigned LATC2 :1;
        unsigned :3;
        unsigned LATC6 :1;
        unsigned LATC7 :1;
    };
    struct {
        unsigned LC0 :1;
        unsigned LC1 :1;
        unsigned LC2 :1;
        unsigned :3;
        unsigned LC6 :1;
        unsigned LC7 :1;
    };
} LATCbits_t;
extern volatile LATCbits_t LATCbits __attribute__((address(0xF8B)));
# 3261 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char LATD __attribute__((address(0xF8C)));

__asm("LATD equ 0F8Ch");


typedef union {
    struct {
        unsigned LATD0 :1;
        unsigned LATD1 :1;
        unsigned LATD2 :1;
        unsigned LATD3 :1;
        unsigned LATD4 :1;
        unsigned LATD5 :1;
        unsigned LATD6 :1;
        unsigned LATD7 :1;
    };
    struct {
        unsigned LD0 :1;
        unsigned LD1 :1;
        unsigned LD2 :1;
        unsigned LD3 :1;
        unsigned LD4 :1;
        unsigned LD5 :1;
        unsigned LD6 :1;
        unsigned LD7 :1;
    };
} LATDbits_t;
extern volatile LATDbits_t LATDbits __attribute__((address(0xF8C)));
# 3373 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char LATE __attribute__((address(0xF8D)));

__asm("LATE equ 0F8Dh");


typedef union {
    struct {
        unsigned LATE0 :1;
        unsigned LATE1 :1;
        unsigned LATE2 :1;
    };
    struct {
        unsigned LE0 :1;
        unsigned LE1 :1;
        unsigned LE2 :1;
    };
} LATEbits_t;
extern volatile LATEbits_t LATEbits __attribute__((address(0xF8D)));
# 3425 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char TRISA __attribute__((address(0xF92)));

__asm("TRISA equ 0F92h");


extern volatile unsigned char DDRA __attribute__((address(0xF92)));

__asm("DDRA equ 0F92h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
    };
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0xF92)));
# 3528 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned TRISA4 :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
    };
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned RA4 :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
    };
} DDRAbits_t;
extern volatile DDRAbits_t DDRAbits __attribute__((address(0xF92)));
# 3623 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char TRISB __attribute__((address(0xF93)));

__asm("TRISB equ 0F93h");


extern volatile unsigned char DDRB __attribute__((address(0xF93)));

__asm("DDRB equ 0F93h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0xF93)));
# 3738 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned TRISB2 :1;
        unsigned TRISB3 :1;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned RB2 :1;
        unsigned RB3 :1;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} DDRBbits_t;
extern volatile DDRBbits_t DDRBbits __attribute__((address(0xF93)));
# 3845 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char TRISC __attribute__((address(0xF94)));

__asm("TRISC equ 0F94h");


extern volatile unsigned char DDRC __attribute__((address(0xF94)));

__asm("DDRC equ 0F94h");


typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned :3;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned :3;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} TRISCbits_t;
extern volatile TRISCbits_t TRISCbits __attribute__((address(0xF94)));
# 3926 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned TRISC0 :1;
        unsigned TRISC1 :1;
        unsigned TRISC2 :1;
        unsigned :3;
        unsigned TRISC6 :1;
        unsigned TRISC7 :1;
    };
    struct {
        unsigned RC0 :1;
        unsigned RC1 :1;
        unsigned RC2 :1;
        unsigned :3;
        unsigned RC6 :1;
        unsigned RC7 :1;
    };
} DDRCbits_t;
extern volatile DDRCbits_t DDRCbits __attribute__((address(0xF94)));
# 3999 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char TRISD __attribute__((address(0xF95)));

__asm("TRISD equ 0F95h");


extern volatile unsigned char DDRD __attribute__((address(0xF95)));

__asm("DDRD equ 0F95h");


typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} TRISDbits_t;
extern volatile TRISDbits_t TRISDbits __attribute__((address(0xF95)));
# 4114 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned TRISD0 :1;
        unsigned TRISD1 :1;
        unsigned TRISD2 :1;
        unsigned TRISD3 :1;
        unsigned TRISD4 :1;
        unsigned TRISD5 :1;
        unsigned TRISD6 :1;
        unsigned TRISD7 :1;
    };
    struct {
        unsigned RD0 :1;
        unsigned RD1 :1;
        unsigned RD2 :1;
        unsigned RD3 :1;
        unsigned RD4 :1;
        unsigned RD5 :1;
        unsigned RD6 :1;
        unsigned RD7 :1;
    };
} DDRDbits_t;
extern volatile DDRDbits_t DDRDbits __attribute__((address(0xF95)));
# 4221 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char TRISE __attribute__((address(0xF96)));

__asm("TRISE equ 0F96h");


extern volatile unsigned char DDRE __attribute__((address(0xF96)));

__asm("DDRE equ 0F96h");


typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
    };
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} TRISEbits_t;
extern volatile TRISEbits_t TRISEbits __attribute__((address(0xF96)));
# 4276 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned TRISE0 :1;
        unsigned TRISE1 :1;
        unsigned TRISE2 :1;
    };
    struct {
        unsigned RE0 :1;
        unsigned RE1 :1;
        unsigned RE2 :1;
    };
} DDREbits_t;
extern volatile DDREbits_t DDREbits __attribute__((address(0xF96)));
# 4323 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0xF9B)));

__asm("OSCTUNE equ 0F9Bh");


typedef union {
    struct {
        unsigned TUN :5;
        unsigned :2;
        unsigned INTSRC :1;
    };
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0xF9B)));
# 4382 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0xF9D)));

__asm("PIE1 equ 0F9Dh");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CCP1IE :1;
        unsigned SSPIE :1;
        unsigned TXIE :1;
        unsigned RCIE :1;
        unsigned ADIE :1;
        unsigned SPPIE :1;
    };
    struct {
        unsigned :4;
        unsigned TX1IE :1;
        unsigned RC1IE :1;
        unsigned :1;
        unsigned PSPIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0xF9D)));
# 4466 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0xF9E)));

__asm("PIR1 equ 0F9Eh");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CCP1IF :1;
        unsigned SSPIF :1;
        unsigned TXIF :1;
        unsigned RCIF :1;
        unsigned ADIF :1;
        unsigned SPPIF :1;
    };
    struct {
        unsigned :4;
        unsigned TX1IF :1;
        unsigned RC1IF :1;
        unsigned :1;
        unsigned PSPIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0xF9E)));
# 4550 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char IPR1 __attribute__((address(0xF9F)));

__asm("IPR1 equ 0F9Fh");


typedef union {
    struct {
        unsigned TMR1IP :1;
        unsigned TMR2IP :1;
        unsigned CCP1IP :1;
        unsigned SSPIP :1;
        unsigned TXIP :1;
        unsigned RCIP :1;
        unsigned ADIP :1;
        unsigned SPPIP :1;
    };
    struct {
        unsigned :4;
        unsigned TX1IP :1;
        unsigned RC1IP :1;
        unsigned :1;
        unsigned PSPIP :1;
    };
} IPR1bits_t;
extern volatile IPR1bits_t IPR1bits __attribute__((address(0xF9F)));
# 4634 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0xFA0)));

__asm("PIE2 equ 0FA0h");


typedef union {
    struct {
        unsigned CCP2IE :1;
        unsigned TMR3IE :1;
        unsigned HLVDIE :1;
        unsigned BCLIE :1;
        unsigned EEIE :1;
        unsigned USBIE :1;
        unsigned CMIE :1;
        unsigned OSCFIE :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0xFA0)));
# 4705 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0xFA1)));

__asm("PIR2 equ 0FA1h");


typedef union {
    struct {
        unsigned CCP2IF :1;
        unsigned TMR3IF :1;
        unsigned HLVDIF :1;
        unsigned BCLIF :1;
        unsigned EEIF :1;
        unsigned USBIF :1;
        unsigned CMIF :1;
        unsigned OSCFIF :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0xFA1)));
# 4776 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char IPR2 __attribute__((address(0xFA2)));

__asm("IPR2 equ 0FA2h");


typedef union {
    struct {
        unsigned CCP2IP :1;
        unsigned TMR3IP :1;
        unsigned HLVDIP :1;
        unsigned BCLIP :1;
        unsigned EEIP :1;
        unsigned USBIP :1;
        unsigned CMIP :1;
        unsigned OSCFIP :1;
    };
    struct {
        unsigned :2;
        unsigned LVDIP :1;
    };
} IPR2bits_t;
extern volatile IPR2bits_t IPR2bits __attribute__((address(0xFA2)));
# 4847 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char EECON1 __attribute__((address(0xFA6)));

__asm("EECON1 equ 0FA6h");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned WRERR :1;
        unsigned FREE :1;
        unsigned :1;
        unsigned CFGS :1;
        unsigned EEPGD :1;
    };
    struct {
        unsigned :6;
        unsigned EEFS :1;
    };
} EECON1bits_t;
extern volatile EECON1bits_t EECON1bits __attribute__((address(0xFA6)));
# 4913 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char EECON2 __attribute__((address(0xFA7)));

__asm("EECON2 equ 0FA7h");




extern volatile unsigned char EEDATA __attribute__((address(0xFA8)));

__asm("EEDATA equ 0FA8h");




extern volatile unsigned char EEADR __attribute__((address(0xFA9)));

__asm("EEADR equ 0FA9h");




extern volatile unsigned char RCSTA __attribute__((address(0xFAB)));

__asm("RCSTA equ 0FABh");


extern volatile unsigned char RCSTA1 __attribute__((address(0xFAB)));

__asm("RCSTA1 equ 0FABh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned :3;
        unsigned ADEN :1;
    };
    struct {
        unsigned :5;
        unsigned SRENA :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
    struct {
        unsigned :6;
        unsigned RC9 :1;
    };
    struct {
        unsigned RCD8 :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0xFAB)));
# 5043 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
    struct {
        unsigned :3;
        unsigned ADEN :1;
    };
    struct {
        unsigned :5;
        unsigned SRENA :1;
    };
    struct {
        unsigned :6;
        unsigned RC8_9 :1;
    };
    struct {
        unsigned :6;
        unsigned RC9 :1;
    };
    struct {
        unsigned RCD8 :1;
    };
} RCSTA1bits_t;
extern volatile RCSTA1bits_t RCSTA1bits __attribute__((address(0xFAB)));
# 5144 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0xFAC)));

__asm("TXSTA equ 0FACh");


extern volatile unsigned char TXSTA1 __attribute__((address(0xFAC)));

__asm("TXSTA1 equ 0FACh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TX9D1 :1;
        unsigned TRMT1 :1;
        unsigned BRGH1 :1;
        unsigned SENDB1 :1;
        unsigned SYNC1 :1;
        unsigned TXEN1 :1;
        unsigned TX91 :1;
        unsigned CSRC1 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
    struct {
        unsigned TXD8 :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0xFAC)));
# 5276 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned SENDB :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
    struct {
        unsigned TX9D1 :1;
        unsigned TRMT1 :1;
        unsigned BRGH1 :1;
        unsigned SENDB1 :1;
        unsigned SYNC1 :1;
        unsigned TXEN1 :1;
        unsigned TX91 :1;
        unsigned CSRC1 :1;
    };
    struct {
        unsigned :6;
        unsigned TX8_9 :1;
    };
    struct {
        unsigned TXD8 :1;
    };
} TXSTA1bits_t;
extern volatile TXSTA1bits_t TXSTA1bits __attribute__((address(0xFAC)));
# 5400 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char TXREG __attribute__((address(0xFAD)));

__asm("TXREG equ 0FADh");


extern volatile unsigned char TXREG1 __attribute__((address(0xFAD)));

__asm("TXREG1 equ 0FADh");




extern volatile unsigned char RCREG __attribute__((address(0xFAE)));

__asm("RCREG equ 0FAEh");


extern volatile unsigned char RCREG1 __attribute__((address(0xFAE)));

__asm("RCREG1 equ 0FAEh");




extern volatile unsigned char SPBRG __attribute__((address(0xFAF)));

__asm("SPBRG equ 0FAFh");


extern volatile unsigned char SPBRG1 __attribute__((address(0xFAF)));

__asm("SPBRG1 equ 0FAFh");




extern volatile unsigned char SPBRGH __attribute__((address(0xFB0)));

__asm("SPBRGH equ 0FB0h");




extern volatile unsigned char T3CON __attribute__((address(0xFB1)));

__asm("T3CON equ 0FB1h");


typedef union {
    struct {
        unsigned :2;
        unsigned NOT_T3SYNC :1;
    };
    struct {
        unsigned TMR3ON :1;
        unsigned TMR3CS :1;
        unsigned nT3SYNC :1;
        unsigned T3CCP1 :1;
        unsigned T3CKPS :2;
        unsigned T3CCP2 :1;
        unsigned RD16 :1;
    };
    struct {
        unsigned :2;
        unsigned T3SYNC :1;
        unsigned :1;
        unsigned T3CKPS0 :1;
        unsigned T3CKPS1 :1;
    };
    struct {
        unsigned :2;
        unsigned T3NSYNC :1;
    };
    struct {
        unsigned :3;
        unsigned SOSCEN3 :1;
        unsigned :3;
        unsigned RD163 :1;
    };
    struct {
        unsigned :7;
        unsigned T3RD16 :1;
    };
} T3CONbits_t;
extern volatile T3CONbits_t T3CONbits __attribute__((address(0xFB1)));
# 5564 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short TMR3 __attribute__((address(0xFB2)));

__asm("TMR3 equ 0FB2h");




extern volatile unsigned char TMR3L __attribute__((address(0xFB2)));

__asm("TMR3L equ 0FB2h");




extern volatile unsigned char TMR3H __attribute__((address(0xFB3)));

__asm("TMR3H equ 0FB3h");




extern volatile unsigned char CMCON __attribute__((address(0xFB4)));

__asm("CMCON equ 0FB4h");


typedef union {
    struct {
        unsigned CM :3;
        unsigned CIS :1;
        unsigned C1INV :1;
        unsigned C2INV :1;
        unsigned C1OUT :1;
        unsigned C2OUT :1;
    };
    struct {
        unsigned CM0 :1;
        unsigned CM1 :1;
        unsigned CM2 :1;
    };
    struct {
        unsigned CMEN0 :1;
        unsigned CMEN1 :1;
        unsigned CMEN2 :1;
    };
} CMCONbits_t;
extern volatile CMCONbits_t CMCONbits __attribute__((address(0xFB4)));
# 5675 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char CVRCON __attribute__((address(0xFB5)));

__asm("CVRCON equ 0FB5h");


typedef union {
    struct {
        unsigned CVR :4;
        unsigned CVRSS :1;
        unsigned CVRR :1;
        unsigned CVROE :1;
        unsigned CVREN :1;
    };
    struct {
        unsigned CVR0 :1;
        unsigned CVR1 :1;
        unsigned CVR2 :1;
        unsigned CVR3 :1;
        unsigned CVREF :1;
    };
    struct {
        unsigned :6;
        unsigned CVROEN :1;
    };
} CVRCONbits_t;
extern volatile CVRCONbits_t CVRCONbits __attribute__((address(0xFB5)));
# 5760 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char ECCP1AS __attribute__((address(0xFB6)));

__asm("ECCP1AS equ 0FB6h");


extern volatile unsigned char CCP1AS __attribute__((address(0xFB6)));

__asm("CCP1AS equ 0FB6h");


typedef union {
    struct {
        unsigned PSSBD :2;
        unsigned PSSAC :2;
        unsigned ECCPAS :3;
        unsigned ECCPASE :1;
    };
    struct {
        unsigned PSSBD0 :1;
        unsigned PSSBD1 :1;
        unsigned PSSAC0 :1;
        unsigned PSSAC1 :1;
        unsigned ECCPAS0 :1;
        unsigned ECCPAS1 :1;
        unsigned ECCPAS2 :1;
    };
} ECCP1ASbits_t;
extern volatile ECCP1ASbits_t ECCP1ASbits __attribute__((address(0xFB6)));
# 5845 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned PSSBD :2;
        unsigned PSSAC :2;
        unsigned ECCPAS :3;
        unsigned ECCPASE :1;
    };
    struct {
        unsigned PSSBD0 :1;
        unsigned PSSBD1 :1;
        unsigned PSSAC0 :1;
        unsigned PSSAC1 :1;
        unsigned ECCPAS0 :1;
        unsigned ECCPAS1 :1;
        unsigned ECCPAS2 :1;
    };
} CCP1ASbits_t;
extern volatile CCP1ASbits_t CCP1ASbits __attribute__((address(0xFB6)));
# 5922 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char ECCP1DEL __attribute__((address(0xFB7)));

__asm("ECCP1DEL equ 0FB7h");


extern volatile unsigned char CCP1DEL __attribute__((address(0xFB7)));

__asm("CCP1DEL equ 0FB7h");


typedef union {
    struct {
        unsigned PDC :7;
        unsigned PRSEN :1;
    };
    struct {
        unsigned PDC0 :1;
        unsigned PDC1 :1;
        unsigned PDC2 :1;
        unsigned PDC3 :1;
        unsigned PDC4 :1;
        unsigned PDC5 :1;
        unsigned PDC6 :1;
    };
} ECCP1DELbits_t;
extern volatile ECCP1DELbits_t ECCP1DELbits __attribute__((address(0xFB7)));
# 5995 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned PDC :7;
        unsigned PRSEN :1;
    };
    struct {
        unsigned PDC0 :1;
        unsigned PDC1 :1;
        unsigned PDC2 :1;
        unsigned PDC3 :1;
        unsigned PDC4 :1;
        unsigned PDC5 :1;
        unsigned PDC6 :1;
    };
} CCP1DELbits_t;
extern volatile CCP1DELbits_t CCP1DELbits __attribute__((address(0xFB7)));
# 6060 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char BAUDCON __attribute__((address(0xFB8)));

__asm("BAUDCON equ 0FB8h");


extern volatile unsigned char BAUDCTL __attribute__((address(0xFB8)));

__asm("BAUDCTL equ 0FB8h");


typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCMT :1;
    };
    struct {
        unsigned :5;
        unsigned RXCKP :1;
    };
    struct {
        unsigned :1;
        unsigned W4E :1;
    };
} BAUDCONbits_t;
extern volatile BAUDCONbits_t BAUDCONbits __attribute__((address(0xFB8)));
# 6154 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned ABDEN :1;
        unsigned WUE :1;
        unsigned :1;
        unsigned BRG16 :1;
        unsigned TXCKP :1;
        unsigned RXDTP :1;
        unsigned RCIDL :1;
        unsigned ABDOVF :1;
    };
    struct {
        unsigned :4;
        unsigned SCKP :1;
        unsigned :1;
        unsigned RCMT :1;
    };
    struct {
        unsigned :5;
        unsigned RXCKP :1;
    };
    struct {
        unsigned :1;
        unsigned W4E :1;
    };
} BAUDCTLbits_t;
extern volatile BAUDCTLbits_t BAUDCTLbits __attribute__((address(0xFB8)));
# 6240 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char CCP2CON __attribute__((address(0xFBA)));

__asm("CCP2CON equ 0FBAh");


typedef union {
    struct {
        unsigned CCP2M :4;
        unsigned DC2B :2;
    };
    struct {
        unsigned CCP2M0 :1;
        unsigned CCP2M1 :1;
        unsigned CCP2M2 :1;
        unsigned CCP2M3 :1;
        unsigned DC2B0 :1;
        unsigned DC2B1 :1;
    };
} CCP2CONbits_t;
extern volatile CCP2CONbits_t CCP2CONbits __attribute__((address(0xFBA)));
# 6304 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short CCPR2 __attribute__((address(0xFBB)));

__asm("CCPR2 equ 0FBBh");




extern volatile unsigned char CCPR2L __attribute__((address(0xFBB)));

__asm("CCPR2L equ 0FBBh");




extern volatile unsigned char CCPR2H __attribute__((address(0xFBC)));

__asm("CCPR2H equ 0FBCh");




extern volatile unsigned char CCP1CON __attribute__((address(0xFBD)));

__asm("CCP1CON equ 0FBDh");


extern volatile unsigned char ECCP1CON __attribute__((address(0xFBD)));

__asm("ECCP1CON equ 0FBDh");


typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
        unsigned P1M :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
        unsigned P1M0 :1;
        unsigned P1M1 :1;
    };
} CCP1CONbits_t;
extern volatile CCP1CONbits_t CCP1CONbits __attribute__((address(0xFBD)));
# 6410 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned CCP1M :4;
        unsigned DC1B :2;
        unsigned P1M :2;
    };
    struct {
        unsigned CCP1M0 :1;
        unsigned CCP1M1 :1;
        unsigned CCP1M2 :1;
        unsigned CCP1M3 :1;
        unsigned DC1B0 :1;
        unsigned DC1B1 :1;
        unsigned P1M0 :1;
        unsigned P1M1 :1;
    };
} ECCP1CONbits_t;
extern volatile ECCP1CONbits_t ECCP1CONbits __attribute__((address(0xFBD)));
# 6487 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short CCPR1 __attribute__((address(0xFBE)));

__asm("CCPR1 equ 0FBEh");




extern volatile unsigned char CCPR1L __attribute__((address(0xFBE)));

__asm("CCPR1L equ 0FBEh");




extern volatile unsigned char CCPR1H __attribute__((address(0xFBF)));

__asm("CCPR1H equ 0FBFh");




extern volatile unsigned char ADCON2 __attribute__((address(0xFC0)));

__asm("ADCON2 equ 0FC0h");


typedef union {
    struct {
        unsigned ADCS :3;
        unsigned ACQT :3;
        unsigned :1;
        unsigned ADFM :1;
    };
    struct {
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
        unsigned ACQT0 :1;
        unsigned ACQT1 :1;
        unsigned ACQT2 :1;
    };
} ADCON2bits_t;
extern volatile ADCON2bits_t ADCON2bits __attribute__((address(0xFC0)));
# 6579 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0xFC1)));

__asm("ADCON1 equ 0FC1h");


typedef union {
    struct {
        unsigned PCFG :4;
        unsigned VCFG :2;
    };
    struct {
        unsigned PCFG0 :1;
        unsigned PCFG1 :1;
        unsigned PCFG2 :1;
        unsigned PCFG3 :1;
        unsigned VCFG0 :1;
        unsigned VCFG1 :1;
    };
    struct {
        unsigned :3;
        unsigned CHSN3 :1;
        unsigned VCFG01 :1;
        unsigned VCFG11 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0xFC1)));
# 6664 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0xFC2)));

__asm("ADCON0 equ 0FC2h");


typedef union {
    struct {
        unsigned :1;
        unsigned GO_NOT_DONE :1;
    };
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :4;
    };
    struct {
        unsigned :1;
        unsigned GO_DONE :1;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
    };
    struct {
        unsigned :1;
        unsigned DONE :1;
    };
    struct {
        unsigned :1;
        unsigned GO :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_DONE :1;
    };
    struct {
        unsigned :1;
        unsigned nDONE :1;
    };
    struct {
        unsigned :1;
        unsigned GODONE :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0xFC2)));
# 6783 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short ADRES __attribute__((address(0xFC3)));

__asm("ADRES equ 0FC3h");




extern volatile unsigned char ADRESL __attribute__((address(0xFC3)));

__asm("ADRESL equ 0FC3h");




extern volatile unsigned char ADRESH __attribute__((address(0xFC4)));

__asm("ADRESH equ 0FC4h");




extern volatile unsigned char SSPCON2 __attribute__((address(0xFC5)));

__asm("SSPCON2 equ 0FC5h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0xFC5)));
# 6866 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char SSPCON1 __attribute__((address(0xFC6)));

__asm("SSPCON1 equ 0FC6h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0xFC6)));
# 6936 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char SSPSTAT __attribute__((address(0xFC7)));

__asm("SSPSTAT equ 0FC7h");


typedef union {
    struct {
        unsigned :2;
        unsigned R_NOT_W :1;
    };
    struct {
        unsigned :5;
        unsigned D_NOT_A :1;
    };
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
    struct {
        unsigned :2;
        unsigned R_W :1;
        unsigned :2;
        unsigned D_A :1;
    };
    struct {
        unsigned :2;
        unsigned I2C_READ :1;
        unsigned I2C_START :1;
        unsigned I2C_STOP :1;
        unsigned I2C_DAT :1;
    };
    struct {
        unsigned :2;
        unsigned nW :1;
        unsigned :2;
        unsigned nA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_WRITE :1;
    };
    struct {
        unsigned :5;
        unsigned NOT_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned nWRITE :1;
        unsigned :2;
        unsigned nADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned READ_WRITE :1;
        unsigned :2;
        unsigned DATA_ADDRESS :1;
    };
    struct {
        unsigned :2;
        unsigned R :1;
        unsigned :2;
        unsigned D :1;
    };
    struct {
        unsigned :2;
        unsigned RW :1;
        unsigned START :1;
        unsigned STOP :1;
        unsigned DA :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_W :1;
        unsigned :2;
        unsigned NOT_A :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0xFC7)));
# 7184 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char SSPADD __attribute__((address(0xFC8)));

__asm("SSPADD equ 0FC8h");




extern volatile unsigned char SSPBUF __attribute__((address(0xFC9)));

__asm("SSPBUF equ 0FC9h");




extern volatile unsigned char T2CON __attribute__((address(0xFCA)));

__asm("T2CON equ 0FCAh");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
        unsigned TOUTPS :4;
    };
    struct {
        unsigned T2CKPS0 :1;
        unsigned T2CKPS1 :1;
        unsigned :1;
        unsigned T2OUTPS0 :1;
        unsigned T2OUTPS1 :1;
        unsigned T2OUTPS2 :1;
        unsigned T2OUTPS3 :1;
    };
    struct {
        unsigned :3;
        unsigned TOUTPS0 :1;
        unsigned TOUTPS1 :1;
        unsigned TOUTPS2 :1;
        unsigned TOUTPS3 :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0xFCA)));
# 7296 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char PR2 __attribute__((address(0xFCB)));

__asm("PR2 equ 0FCBh");


extern volatile unsigned char MEMCON __attribute__((address(0xFCB)));

__asm("MEMCON equ 0FCBh");


typedef union {
    struct {
        unsigned :7;
        unsigned EBDIS :1;
    };
    struct {
        unsigned :4;
        unsigned WAIT0 :1;
    };
    struct {
        unsigned :5;
        unsigned WAIT1 :1;
    };
    struct {
        unsigned WM0 :1;
    };
    struct {
        unsigned :1;
        unsigned WM1 :1;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0xFCB)));
# 7355 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned :7;
        unsigned EBDIS :1;
    };
    struct {
        unsigned :4;
        unsigned WAIT0 :1;
    };
    struct {
        unsigned :5;
        unsigned WAIT1 :1;
    };
    struct {
        unsigned WM0 :1;
    };
    struct {
        unsigned :1;
        unsigned WM1 :1;
    };
} MEMCONbits_t;
extern volatile MEMCONbits_t MEMCONbits __attribute__((address(0xFCB)));
# 7406 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0xFCC)));

__asm("TMR2 equ 0FCCh");




extern volatile unsigned char T1CON __attribute__((address(0xFCD)));

__asm("T1CON equ 0FCDh");


typedef union {
    struct {
        unsigned :2;
        unsigned NOT_T1SYNC :1;
    };
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned nT1SYNC :1;
        unsigned T1OSCEN :1;
        unsigned T1CKPS :2;
        unsigned T1RUN :1;
        unsigned RD16 :1;
    };
    struct {
        unsigned :2;
        unsigned T1SYNC :1;
        unsigned :1;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
    struct {
        unsigned :3;
        unsigned SOSCEN :1;
        unsigned :3;
        unsigned T1RD16 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0xFCD)));
# 7516 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0xFCE)));

__asm("TMR1 equ 0FCEh");




extern volatile unsigned char TMR1L __attribute__((address(0xFCE)));

__asm("TMR1L equ 0FCEh");




extern volatile unsigned char TMR1H __attribute__((address(0xFCF)));

__asm("TMR1H equ 0FCFh");




extern volatile unsigned char RCON __attribute__((address(0xFD0)));

__asm("RCON equ 0FD0h");


typedef union {
    struct {
        unsigned NOT_BOR :1;
    };
    struct {
        unsigned :1;
        unsigned NOT_POR :1;
    };
    struct {
        unsigned :2;
        unsigned NOT_PD :1;
    };
    struct {
        unsigned :3;
        unsigned NOT_TO :1;
    };
    struct {
        unsigned :4;
        unsigned NOT_RI :1;
    };
    struct {
        unsigned nBOR :1;
        unsigned nPOR :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned nRI :1;
        unsigned :1;
        unsigned SBOREN :1;
        unsigned IPEN :1;
    };
    struct {
        unsigned :7;
        unsigned NOT_IPEN :1;
    };
    struct {
        unsigned BOR :1;
        unsigned POR :1;
        unsigned PD :1;
        unsigned TO :1;
        unsigned RI :1;
        unsigned :2;
        unsigned nIPEN :1;
    };
} RCONbits_t;
extern volatile RCONbits_t RCONbits __attribute__((address(0xFD0)));
# 7686 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char WDTCON __attribute__((address(0xFD1)));

__asm("WDTCON equ 0FD1h");


typedef union {
    struct {
        unsigned SWDTEN :1;
    };
    struct {
        unsigned SWDTE :1;
    };
} WDTCONbits_t;
extern volatile WDTCONbits_t WDTCONbits __attribute__((address(0xFD1)));
# 7714 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char HLVDCON __attribute__((address(0xFD2)));

__asm("HLVDCON equ 0FD2h");


extern volatile unsigned char LVDCON __attribute__((address(0xFD2)));

__asm("LVDCON equ 0FD2h");


typedef union {
    struct {
        unsigned HLVDL :4;
        unsigned HLVDEN :1;
        unsigned IRVST :1;
        unsigned :1;
        unsigned VDIRMAG :1;
    };
    struct {
        unsigned HLVDL0 :1;
        unsigned HLVDL1 :1;
        unsigned HLVDL2 :1;
        unsigned HLVDL3 :1;
    };
    struct {
        unsigned LVDL0 :1;
        unsigned LVDL1 :1;
        unsigned LVDL2 :1;
        unsigned LVDL3 :1;
        unsigned LVDEN :1;
        unsigned IVRST :1;
    };
    struct {
        unsigned LVV0 :1;
        unsigned LVV1 :1;
        unsigned LVV2 :1;
        unsigned LVV3 :1;
        unsigned :1;
        unsigned BGST :1;
    };
} HLVDCONbits_t;
extern volatile HLVDCONbits_t HLVDCONbits __attribute__((address(0xFD2)));
# 7853 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
typedef union {
    struct {
        unsigned HLVDL :4;
        unsigned HLVDEN :1;
        unsigned IRVST :1;
        unsigned :1;
        unsigned VDIRMAG :1;
    };
    struct {
        unsigned HLVDL0 :1;
        unsigned HLVDL1 :1;
        unsigned HLVDL2 :1;
        unsigned HLVDL3 :1;
    };
    struct {
        unsigned LVDL0 :1;
        unsigned LVDL1 :1;
        unsigned LVDL2 :1;
        unsigned LVDL3 :1;
        unsigned LVDEN :1;
        unsigned IVRST :1;
    };
    struct {
        unsigned LVV0 :1;
        unsigned LVV1 :1;
        unsigned LVV2 :1;
        unsigned LVV3 :1;
        unsigned :1;
        unsigned BGST :1;
    };
} LVDCONbits_t;
extern volatile LVDCONbits_t LVDCONbits __attribute__((address(0xFD2)));
# 7984 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char OSCCON __attribute__((address(0xFD3)));

__asm("OSCCON equ 0FD3h");


typedef union {
    struct {
        unsigned SCS :2;
        unsigned IOFS :1;
        unsigned OSTS :1;
        unsigned IRCF :3;
        unsigned IDLEN :1;
    };
    struct {
        unsigned SCS0 :1;
        unsigned SCS1 :1;
        unsigned FLTS :1;
        unsigned :1;
        unsigned IRCF0 :1;
        unsigned IRCF1 :1;
        unsigned IRCF2 :1;
    };
} OSCCONbits_t;
extern volatile OSCCONbits_t OSCCONbits __attribute__((address(0xFD3)));
# 8067 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char T0CON __attribute__((address(0xFD5)));

__asm("T0CON equ 0FD5h");


typedef union {
    struct {
        unsigned T0PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned T08BIT :1;
        unsigned TMR0ON :1;
    };
    struct {
        unsigned T0PS0 :1;
        unsigned T0PS1 :1;
        unsigned T0PS2 :1;
    };
} T0CONbits_t;
extern volatile T0CONbits_t T0CONbits __attribute__((address(0xFD5)));
# 8137 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short TMR0 __attribute__((address(0xFD6)));

__asm("TMR0 equ 0FD6h");




extern volatile unsigned char TMR0L __attribute__((address(0xFD6)));

__asm("TMR0L equ 0FD6h");




extern volatile unsigned char TMR0H __attribute__((address(0xFD7)));

__asm("TMR0H equ 0FD7h");




extern volatile unsigned char STATUS __attribute__((address(0xFD8)));

__asm("STATUS equ 0FD8h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned OV :1;
        unsigned N :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
        unsigned OVERFLOW :1;
        unsigned NEGATIVE :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0xFD8)));
# 8229 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short FSR2 __attribute__((address(0xFD9)));

__asm("FSR2 equ 0FD9h");




extern volatile unsigned char FSR2L __attribute__((address(0xFD9)));

__asm("FSR2L equ 0FD9h");




extern volatile unsigned char FSR2H __attribute__((address(0xFDA)));

__asm("FSR2H equ 0FDAh");




extern volatile unsigned char PLUSW2 __attribute__((address(0xFDB)));

__asm("PLUSW2 equ 0FDBh");




extern volatile unsigned char PREINC2 __attribute__((address(0xFDC)));

__asm("PREINC2 equ 0FDCh");




extern volatile unsigned char POSTDEC2 __attribute__((address(0xFDD)));

__asm("POSTDEC2 equ 0FDDh");




extern volatile unsigned char POSTINC2 __attribute__((address(0xFDE)));

__asm("POSTINC2 equ 0FDEh");




extern volatile unsigned char INDF2 __attribute__((address(0xFDF)));

__asm("INDF2 equ 0FDFh");




extern volatile unsigned char BSR __attribute__((address(0xFE0)));

__asm("BSR equ 0FE0h");




extern volatile unsigned short FSR1 __attribute__((address(0xFE1)));

__asm("FSR1 equ 0FE1h");




extern volatile unsigned char FSR1L __attribute__((address(0xFE1)));

__asm("FSR1L equ 0FE1h");




extern volatile unsigned char FSR1H __attribute__((address(0xFE2)));

__asm("FSR1H equ 0FE2h");




extern volatile unsigned char PLUSW1 __attribute__((address(0xFE3)));

__asm("PLUSW1 equ 0FE3h");




extern volatile unsigned char PREINC1 __attribute__((address(0xFE4)));

__asm("PREINC1 equ 0FE4h");




extern volatile unsigned char POSTDEC1 __attribute__((address(0xFE5)));

__asm("POSTDEC1 equ 0FE5h");




extern volatile unsigned char POSTINC1 __attribute__((address(0xFE6)));

__asm("POSTINC1 equ 0FE6h");




extern volatile unsigned char INDF1 __attribute__((address(0xFE7)));

__asm("INDF1 equ 0FE7h");




extern volatile unsigned char WREG __attribute__((address(0xFE8)));

__asm("WREG equ 0FE8h");




extern volatile unsigned short FSR0 __attribute__((address(0xFE9)));

__asm("FSR0 equ 0FE9h");




extern volatile unsigned char FSR0L __attribute__((address(0xFE9)));

__asm("FSR0L equ 0FE9h");




extern volatile unsigned char FSR0H __attribute__((address(0xFEA)));

__asm("FSR0H equ 0FEAh");




extern volatile unsigned char PLUSW0 __attribute__((address(0xFEB)));

__asm("PLUSW0 equ 0FEBh");




extern volatile unsigned char PREINC0 __attribute__((address(0xFEC)));

__asm("PREINC0 equ 0FECh");




extern volatile unsigned char POSTDEC0 __attribute__((address(0xFED)));

__asm("POSTDEC0 equ 0FEDh");




extern volatile unsigned char POSTINC0 __attribute__((address(0xFEE)));

__asm("POSTINC0 equ 0FEEh");




extern volatile unsigned char INDF0 __attribute__((address(0xFEF)));

__asm("INDF0 equ 0FEFh");




extern volatile unsigned char INTCON3 __attribute__((address(0xFF0)));

__asm("INTCON3 equ 0FF0h");


typedef union {
    struct {
        unsigned INT1IF :1;
        unsigned INT2IF :1;
        unsigned :1;
        unsigned INT1IE :1;
        unsigned INT2IE :1;
        unsigned :1;
        unsigned INT1IP :1;
        unsigned INT2IP :1;
    };
    struct {
        unsigned INT1F :1;
        unsigned INT2F :1;
        unsigned :1;
        unsigned INT1E :1;
        unsigned INT2E :1;
        unsigned :1;
        unsigned INT1P :1;
        unsigned INT2P :1;
    };
} INTCON3bits_t;
extern volatile INTCON3bits_t INTCON3bits __attribute__((address(0xFF0)));
# 8503 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char INTCON2 __attribute__((address(0xFF1)));

__asm("INTCON2 equ 0FF1h");


typedef union {
    struct {
        unsigned :7;
        unsigned NOT_RBPU :1;
    };
    struct {
        unsigned RBIP :1;
        unsigned :1;
        unsigned TMR0IP :1;
        unsigned :1;
        unsigned INTEDG2 :1;
        unsigned INTEDG1 :1;
        unsigned INTEDG0 :1;
        unsigned nRBPU :1;
    };
    struct {
        unsigned :2;
        unsigned T0IP :1;
        unsigned :4;
        unsigned RBPU :1;
    };
} INTCON2bits_t;
extern volatile INTCON2bits_t INTCON2bits __attribute__((address(0xFF1)));
# 8580 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned char INTCON __attribute__((address(0xFF2)));

__asm("INTCON equ 0FF2h");


typedef union {
    struct {
        unsigned RBIF :1;
        unsigned INT0IF :1;
        unsigned TMR0IF :1;
        unsigned RBIE :1;
        unsigned INT0IE :1;
        unsigned TMR0IE :1;
        unsigned PEIE_GIEL :1;
        unsigned GIE_GIEH :1;
    };
    struct {
        unsigned :1;
        unsigned INT0F :1;
        unsigned T0IF :1;
        unsigned :1;
        unsigned INT0E :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
    struct {
        unsigned :6;
        unsigned GIEL :1;
        unsigned GIEH :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0xFF2)));
# 8697 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile unsigned short PROD __attribute__((address(0xFF3)));

__asm("PROD equ 0FF3h");




extern volatile unsigned char PRODL __attribute__((address(0xFF3)));

__asm("PRODL equ 0FF3h");




extern volatile unsigned char PRODH __attribute__((address(0xFF4)));

__asm("PRODH equ 0FF4h");




extern volatile unsigned char TABLAT __attribute__((address(0xFF5)));

__asm("TABLAT equ 0FF5h");





extern volatile __uint24 TBLPTR __attribute__((address(0xFF6)));


__asm("TBLPTR equ 0FF6h");




extern volatile unsigned char TBLPTRL __attribute__((address(0xFF6)));

__asm("TBLPTRL equ 0FF6h");




extern volatile unsigned char TBLPTRH __attribute__((address(0xFF7)));

__asm("TBLPTRH equ 0FF7h");




extern volatile unsigned char TBLPTRU __attribute__((address(0xFF8)));

__asm("TBLPTRU equ 0FF8h");





extern volatile __uint24 PCLAT __attribute__((address(0xFF9)));


__asm("PCLAT equ 0FF9h");



extern volatile __uint24 PC __attribute__((address(0xFF9)));


__asm("PC equ 0FF9h");




extern volatile unsigned char PCL __attribute__((address(0xFF9)));

__asm("PCL equ 0FF9h");




extern volatile unsigned char PCLATH __attribute__((address(0xFFA)));

__asm("PCLATH equ 0FFAh");




extern volatile unsigned char PCLATU __attribute__((address(0xFFB)));

__asm("PCLATU equ 0FFBh");




extern volatile unsigned char STKPTR __attribute__((address(0xFFC)));

__asm("STKPTR equ 0FFCh");


typedef union {
    struct {
        unsigned STKPTR :5;
        unsigned :1;
        unsigned STKUNF :1;
        unsigned STKFUL :1;
    };
    struct {
        unsigned STKPTR0 :1;
        unsigned STKPTR1 :1;
        unsigned STKPTR2 :1;
        unsigned STKPTR3 :1;
        unsigned STKPTR4 :1;
    };
    struct {
        unsigned :7;
        unsigned STKOVF :1;
    };
} STKPTRbits_t;
extern volatile STKPTRbits_t STKPTRbits __attribute__((address(0xFFC)));
# 8867 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile __uint24 TOS __attribute__((address(0xFFD)));


__asm("TOS equ 0FFDh");




extern volatile unsigned char TOSL __attribute__((address(0xFFD)));

__asm("TOSL equ 0FFDh");




extern volatile unsigned char TOSH __attribute__((address(0xFFE)));

__asm("TOSH equ 0FFEh");




extern volatile unsigned char TOSU __attribute__((address(0xFFF)));

__asm("TOSU equ 0FFFh");





extern const unsigned char _CONFIGs[14] __attribute__((address(0x300000)));

extern const unsigned char _CONFIG1L __attribute__((address(0x300000)));

typedef union {
    struct {
        unsigned PLLDIV :3;
        unsigned CPUDIV :2;
        unsigned USBDIV :1;
    };
} _CONFIG1Lbits_t;
extern const _CONFIG1Lbits_t _CONFIG1Lbits __attribute__((address(0x300000)));


extern const unsigned char _CONFIG1H __attribute__((address(0x300001)));

typedef union {
    struct {
        unsigned FOSC :4;
        unsigned :2;
        unsigned FCMEN :1;
        unsigned IESO :1;
    };
} _CONFIG1Hbits_t;
extern const _CONFIG1Hbits_t _CONFIG1Hbits __attribute__((address(0x300001)));


extern const unsigned char _CONFIG2L __attribute__((address(0x300002)));

typedef union {
    struct {
        unsigned PWRT :1;
        unsigned BOR :2;
        unsigned BORV :2;
        unsigned VREGEN :1;
    };
} _CONFIG2Lbits_t;
extern const _CONFIG2Lbits_t _CONFIG2Lbits __attribute__((address(0x300002)));


extern const unsigned char _CONFIG2H __attribute__((address(0x300003)));

typedef union {
    struct {
        unsigned WDT :1;
        unsigned WDTPS :4;
    };
} _CONFIG2Hbits_t;
extern const _CONFIG2Hbits_t _CONFIG2Hbits __attribute__((address(0x300003)));


extern const unsigned char _CONFIG3H __attribute__((address(0x300005)));

typedef union {
    struct {
        unsigned CCP2MX :1;
        unsigned PBADEN :1;
        unsigned LPT1OSC :1;
        unsigned :4;
        unsigned MCLRE :1;
    };
} _CONFIG3Hbits_t;
extern const _CONFIG3Hbits_t _CONFIG3Hbits __attribute__((address(0x300005)));


extern const unsigned char _CONFIG4L __attribute__((address(0x300006)));

typedef union {
    struct {
        unsigned STVREN :1;
        unsigned :1;
        unsigned LVP :1;
        unsigned :2;
        unsigned ICPRT :1;
        unsigned XINST :1;
        unsigned _DEBUG :1;
    };
} _CONFIG4Lbits_t;
extern const _CONFIG4Lbits_t _CONFIG4Lbits __attribute__((address(0x300006)));


extern const unsigned char _CONFIG5L __attribute__((address(0x300008)));

typedef union {
    struct {
        unsigned CP0 :1;
        unsigned CP1 :1;
        unsigned CP2 :1;
        unsigned CP3 :1;
    };
} _CONFIG5Lbits_t;
extern const _CONFIG5Lbits_t _CONFIG5Lbits __attribute__((address(0x300008)));


extern const unsigned char _CONFIG5H __attribute__((address(0x300009)));

typedef union {
    struct {
        unsigned :6;
        unsigned CPB :1;
        unsigned CPD :1;
    };
} _CONFIG5Hbits_t;
extern const _CONFIG5Hbits_t _CONFIG5Hbits __attribute__((address(0x300009)));


extern const unsigned char _CONFIG6L __attribute__((address(0x30000A)));

typedef union {
    struct {
        unsigned WRT0 :1;
        unsigned WRT1 :1;
        unsigned WRT2 :1;
        unsigned WRT3 :1;
    };
} _CONFIG6Lbits_t;
extern const _CONFIG6Lbits_t _CONFIG6Lbits __attribute__((address(0x30000A)));


extern const unsigned char _CONFIG6H __attribute__((address(0x30000B)));

typedef union {
    struct {
        unsigned :5;
        unsigned WRTC :1;
        unsigned WRTB :1;
        unsigned WRTD :1;
    };
} _CONFIG6Hbits_t;
extern const _CONFIG6Hbits_t _CONFIG6Hbits __attribute__((address(0x30000B)));


extern const unsigned char _CONFIG7L __attribute__((address(0x30000C)));

typedef union {
    struct {
        unsigned EBTR0 :1;
        unsigned EBTR1 :1;
        unsigned EBTR2 :1;
        unsigned EBTR3 :1;
    };
} _CONFIG7Lbits_t;
extern const _CONFIG7Lbits_t _CONFIG7Lbits __attribute__((address(0x30000C)));


extern const unsigned char _CONFIG7H __attribute__((address(0x30000D)));

typedef union {
    struct {
        unsigned :6;
        unsigned EBTRB :1;
    };
} _CONFIG7Hbits_t;
extern const _CONFIG7Hbits_t _CONFIG7Hbits __attribute__((address(0x30000D)));

extern const unsigned char _IDLOCs[8] __attribute__((address(0x200000)));

extern const unsigned char _IDLOC0 __attribute__((address(0x200000)));


extern const unsigned char _IDLOC1 __attribute__((address(0x200001)));


extern const unsigned char _IDLOC2 __attribute__((address(0x200002)));


extern const unsigned char _IDLOC3 __attribute__((address(0x200003)));


extern const unsigned char _IDLOC4 __attribute__((address(0x200004)));


extern const unsigned char _IDLOC5 __attribute__((address(0x200005)));


extern const unsigned char _IDLOC6 __attribute__((address(0x200006)));


extern const unsigned char _IDLOC7 __attribute__((address(0x200007)));




extern const unsigned short _DEVID __attribute__((address(0x3FFFFE)));
# 9094 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\proc/pic18f4550.h" 3
extern volatile __bit ABDEN __attribute__((address(0x7DC0)));


extern volatile __bit ABDOVF __attribute__((address(0x7DC7)));


extern volatile __bit ACKDT __attribute__((address(0x7E2D)));


extern volatile __bit ACKEN __attribute__((address(0x7E2C)));


extern volatile __bit ACKSTAT __attribute__((address(0x7E2E)));


extern volatile __bit ACQT0 __attribute__((address(0x7E03)));


extern volatile __bit ACQT1 __attribute__((address(0x7E04)));


extern volatile __bit ACQT2 __attribute__((address(0x7E05)));


extern volatile __bit ACTVIE __attribute__((address(0x7B4A)));


extern volatile __bit ACTVIF __attribute__((address(0x7B42)));


extern volatile __bit ADCS0 __attribute__((address(0x7E00)));


extern volatile __bit ADCS1 __attribute__((address(0x7E01)));


extern volatile __bit ADCS2 __attribute__((address(0x7E02)));


extern volatile __bit ADDEN __attribute__((address(0x7D5B)));


extern volatile __bit __attribute__((__deprecated__)) ADDR0 __attribute__((address(0x7B20)));


extern volatile __bit __attribute__((__deprecated__)) ADDR1 __attribute__((address(0x7B21)));


extern volatile __bit __attribute__((__deprecated__)) ADDR2 __attribute__((address(0x7B22)));


extern volatile __bit __attribute__((__deprecated__)) ADDR3 __attribute__((address(0x7B23)));


extern volatile __bit ADDR4 __attribute__((address(0x7B74)));


extern volatile __bit ADDR5 __attribute__((address(0x7B75)));


extern volatile __bit ADDR6 __attribute__((address(0x7B76)));


extern volatile __bit ADEN __attribute__((address(0x7D5B)));


extern volatile __bit ADFM __attribute__((address(0x7E07)));


extern volatile __bit ADIE __attribute__((address(0x7CEE)));


extern volatile __bit ADIF __attribute__((address(0x7CF6)));


extern volatile __bit ADIP __attribute__((address(0x7CFE)));


extern volatile __bit ADON __attribute__((address(0x7E10)));


extern volatile __bit AN0 __attribute__((address(0x7C00)));


extern volatile __bit AN1 __attribute__((address(0x7C01)));


extern volatile __bit AN2 __attribute__((address(0x7C02)));


extern volatile __bit AN3 __attribute__((address(0x7C03)));


extern volatile __bit AN4 __attribute__((address(0x7C05)));


extern volatile __bit BCLIE __attribute__((address(0x7D03)));


extern volatile __bit BCLIF __attribute__((address(0x7D0B)));


extern volatile __bit BCLIP __attribute__((address(0x7D13)));


extern volatile __bit BF __attribute__((address(0x7E38)));


extern volatile __bit BGST __attribute__((address(0x7E95)));


extern volatile __bit BOR __attribute__((address(0x7E80)));


extern volatile __bit BRG16 __attribute__((address(0x7DC3)));


extern volatile __bit BRGH __attribute__((address(0x7D62)));


extern volatile __bit BRGH1 __attribute__((address(0x7D62)));


extern volatile __bit BTOEE __attribute__((address(0x7B5C)));


extern volatile __bit BTOEF __attribute__((address(0x7B54)));


extern volatile __bit BTSEE __attribute__((address(0x7B5F)));


extern volatile __bit BTSEF __attribute__((address(0x7B57)));


extern volatile __bit BUSY __attribute__((address(0x7B24)));


extern volatile __bit C1INV __attribute__((address(0x7DA4)));


extern volatile __bit C1OUT __attribute__((address(0x7DA6)));


extern volatile __bit C2INV __attribute__((address(0x7DA5)));


extern volatile __bit C2OUT __attribute__((address(0x7DA7)));


extern volatile __bit CARRY __attribute__((address(0x7EC0)));


extern volatile __bit CCP1 __attribute__((address(0x7C12)));


extern volatile __bit CCP10 __attribute__((address(0x7C22)));


extern volatile __bit CCP1IE __attribute__((address(0x7CEA)));


extern volatile __bit CCP1IF __attribute__((address(0x7CF2)));


extern volatile __bit CCP1IP __attribute__((address(0x7CFA)));


extern volatile __bit CCP1M0 __attribute__((address(0x7DE8)));


extern volatile __bit CCP1M1 __attribute__((address(0x7DE9)));


extern volatile __bit CCP1M2 __attribute__((address(0x7DEA)));


extern volatile __bit CCP1M3 __attribute__((address(0x7DEB)));


extern volatile __bit CCP2 __attribute__((address(0x7C11)));


extern volatile __bit CCP2E __attribute__((address(0x7C27)));


extern volatile __bit CCP2IE __attribute__((address(0x7D00)));


extern volatile __bit CCP2IF __attribute__((address(0x7D08)));


extern volatile __bit CCP2IP __attribute__((address(0x7D10)));


extern volatile __bit CCP2M0 __attribute__((address(0x7DD0)));


extern volatile __bit CCP2M1 __attribute__((address(0x7DD1)));


extern volatile __bit CCP2M2 __attribute__((address(0x7DD2)));


extern volatile __bit CCP2M3 __attribute__((address(0x7DD3)));


extern volatile __bit CCP2_PA2 __attribute__((address(0x7C0B)));


extern volatile __bit CCP9E __attribute__((address(0x7C23)));


extern volatile __bit CFGS __attribute__((address(0x7D36)));


extern volatile __bit CHS0 __attribute__((address(0x7E12)));


extern volatile __bit CHS1 __attribute__((address(0x7E13)));


extern volatile __bit CHS2 __attribute__((address(0x7E14)));


extern volatile __bit CHS3 __attribute__((address(0x7E15)));


extern volatile __bit CHSN3 __attribute__((address(0x7E0B)));


extern volatile __bit CIS __attribute__((address(0x7DA3)));


extern volatile __bit CK __attribute__((address(0x7C16)));


extern volatile __bit CK1SPP __attribute__((address(0x7C20)));


extern volatile __bit CK2SPP __attribute__((address(0x7C21)));


extern volatile __bit CKE __attribute__((address(0x7E3E)));


extern volatile __bit CKP __attribute__((address(0x7E34)));


extern volatile __bit CLK1EN __attribute__((address(0x7B1C)));


extern volatile __bit CLKCFG0 __attribute__((address(0x7B1E)));


extern volatile __bit CLKCFG1 __attribute__((address(0x7B1F)));


extern volatile __bit CM0 __attribute__((address(0x7DA0)));


extern volatile __bit CM1 __attribute__((address(0x7DA1)));


extern volatile __bit CM2 __attribute__((address(0x7DA2)));


extern volatile __bit CMEN0 __attribute__((address(0x7DA0)));


extern volatile __bit CMEN1 __attribute__((address(0x7DA1)));


extern volatile __bit CMEN2 __attribute__((address(0x7DA2)));


extern volatile __bit CMIE __attribute__((address(0x7D06)));


extern volatile __bit CMIF __attribute__((address(0x7D0E)));


extern volatile __bit CMIP __attribute__((address(0x7D16)));


extern volatile __bit CRC16EE __attribute__((address(0x7B5A)));


extern volatile __bit CRC16EF __attribute__((address(0x7B52)));


extern volatile __bit CRC5EE __attribute__((address(0x7B59)));


extern volatile __bit CRC5EF __attribute__((address(0x7B51)));


extern volatile __bit CREN __attribute__((address(0x7D5C)));


extern volatile __bit CS __attribute__((address(0x7C22)));


extern volatile __bit CSEN __attribute__((address(0x7B1D)));


extern volatile __bit CSRC __attribute__((address(0x7D67)));


extern volatile __bit CSRC1 __attribute__((address(0x7D67)));


extern volatile __bit CVR0 __attribute__((address(0x7DA8)));


extern volatile __bit CVR1 __attribute__((address(0x7DA9)));


extern volatile __bit CVR2 __attribute__((address(0x7DAA)));


extern volatile __bit CVR3 __attribute__((address(0x7DAB)));


extern volatile __bit CVREF __attribute__((address(0x7DAC)));


extern volatile __bit CVREN __attribute__((address(0x7DAF)));


extern volatile __bit CVROE __attribute__((address(0x7DAE)));


extern volatile __bit CVROEN __attribute__((address(0x7DAE)));


extern volatile __bit CVRR __attribute__((address(0x7DAD)));


extern volatile __bit CVRSS __attribute__((address(0x7DAC)));


extern volatile __bit DA __attribute__((address(0x7E3D)));


extern volatile __bit DATA_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit DC __attribute__((address(0x7EC1)));


extern volatile __bit DC1B0 __attribute__((address(0x7DEC)));


extern volatile __bit DC1B1 __attribute__((address(0x7DED)));


extern volatile __bit DC2B0 __attribute__((address(0x7DD4)));


extern volatile __bit DC2B1 __attribute__((address(0x7DD5)));


extern volatile __bit DFN8EE __attribute__((address(0x7B5B)));


extern volatile __bit DFN8EF __attribute__((address(0x7B53)));


extern volatile __bit DIR __attribute__((address(0x7B62)));


extern volatile __bit DONE __attribute__((address(0x7E11)));


extern volatile __bit DT __attribute__((address(0x7C17)));


extern volatile __bit D_A __attribute__((address(0x7E3D)));


extern volatile __bit D_NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit D_nA __attribute__((address(0x7E3D)));


extern volatile __bit EBDIS __attribute__((address(0x7E5F)));


extern volatile __bit ECCPAS0 __attribute__((address(0x7DB4)));


extern volatile __bit ECCPAS1 __attribute__((address(0x7DB5)));


extern volatile __bit ECCPAS2 __attribute__((address(0x7DB6)));


extern volatile __bit ECCPASE __attribute__((address(0x7DB7)));


extern volatile __bit EEFS __attribute__((address(0x7D36)));


extern volatile __bit EEIE __attribute__((address(0x7D04)));


extern volatile __bit EEIF __attribute__((address(0x7D0C)));


extern volatile __bit EEIP __attribute__((address(0x7D14)));


extern volatile __bit EEPGD __attribute__((address(0x7D37)));


extern volatile __bit ENDP0 __attribute__((address(0x7B63)));


extern volatile __bit ENDP1 __attribute__((address(0x7B64)));


extern volatile __bit ENDP2 __attribute__((address(0x7B65)));


extern volatile __bit ENDP3 __attribute__((address(0x7B66)));


extern volatile __bit EP0CONDIS __attribute__((address(0x7B83)));


extern volatile __bit EP0HSHK __attribute__((address(0x7B84)));


extern volatile __bit EP0INEN __attribute__((address(0x7B81)));


extern volatile __bit EP0OUTEN __attribute__((address(0x7B82)));


extern volatile __bit EP0STALL __attribute__((address(0x7B80)));


extern volatile __bit EP1CONDIS __attribute__((address(0x7B8B)));


extern volatile __bit EP1HSHK __attribute__((address(0x7B8C)));


extern volatile __bit EP1INEN __attribute__((address(0x7B89)));


extern volatile __bit EP1OUTEN __attribute__((address(0x7B8A)));


extern volatile __bit EP1STALL __attribute__((address(0x7B88)));


extern volatile __bit EP2CONDIS __attribute__((address(0x7B93)));


extern volatile __bit EP2HSHK __attribute__((address(0x7B94)));


extern volatile __bit EP2INEN __attribute__((address(0x7B91)));


extern volatile __bit EP2OUTEN __attribute__((address(0x7B92)));


extern volatile __bit EP2STALL __attribute__((address(0x7B90)));


extern volatile __bit EP3CONDIS __attribute__((address(0x7B9B)));


extern volatile __bit EP3HSHK __attribute__((address(0x7B9C)));


extern volatile __bit EP3INEN __attribute__((address(0x7B99)));


extern volatile __bit EP3OUTEN __attribute__((address(0x7B9A)));


extern volatile __bit EP3STALL __attribute__((address(0x7B98)));


extern volatile __bit EP4CONDIS __attribute__((address(0x7BA3)));


extern volatile __bit EP4HSHK __attribute__((address(0x7BA4)));


extern volatile __bit EP4INEN __attribute__((address(0x7BA1)));


extern volatile __bit EP4OUTEN __attribute__((address(0x7BA2)));


extern volatile __bit EP4STALL __attribute__((address(0x7BA0)));


extern volatile __bit EP5CONDIS __attribute__((address(0x7BAB)));


extern volatile __bit EP5HSHK __attribute__((address(0x7BAC)));


extern volatile __bit EP5INEN __attribute__((address(0x7BA9)));


extern volatile __bit EP5OUTEN __attribute__((address(0x7BAA)));


extern volatile __bit EP5STALL __attribute__((address(0x7BA8)));


extern volatile __bit EP6CONDIS __attribute__((address(0x7BB3)));


extern volatile __bit EP6HSHK __attribute__((address(0x7BB4)));


extern volatile __bit EP6INEN __attribute__((address(0x7BB1)));


extern volatile __bit EP6OUTEN __attribute__((address(0x7BB2)));


extern volatile __bit EP6STALL __attribute__((address(0x7BB0)));


extern volatile __bit EP7CONDIS __attribute__((address(0x7BBB)));


extern volatile __bit EP7HSHK __attribute__((address(0x7BBC)));


extern volatile __bit EP7INEN __attribute__((address(0x7BB9)));


extern volatile __bit EP7OUTEN __attribute__((address(0x7BBA)));


extern volatile __bit EP7STALL __attribute__((address(0x7BB8)));


extern volatile __bit EPCONDIS0 __attribute__((address(0x7B83)));


extern volatile __bit EPCONDIS1 __attribute__((address(0x7B8B)));


extern volatile __bit EPCONDIS10 __attribute__((address(0x7BD3)));


extern volatile __bit EPCONDIS11 __attribute__((address(0x7BDB)));


extern volatile __bit EPCONDIS12 __attribute__((address(0x7BE3)));


extern volatile __bit EPCONDIS13 __attribute__((address(0x7BEB)));


extern volatile __bit EPCONDIS14 __attribute__((address(0x7BF3)));


extern volatile __bit EPCONDIS15 __attribute__((address(0x7BFB)));


extern volatile __bit EPCONDIS2 __attribute__((address(0x7B93)));


extern volatile __bit EPCONDIS3 __attribute__((address(0x7B9B)));


extern volatile __bit EPCONDIS4 __attribute__((address(0x7BA3)));


extern volatile __bit EPCONDIS5 __attribute__((address(0x7BAB)));


extern volatile __bit EPCONDIS6 __attribute__((address(0x7BB3)));


extern volatile __bit EPCONDIS7 __attribute__((address(0x7BBB)));


extern volatile __bit EPCONDIS8 __attribute__((address(0x7BC3)));


extern volatile __bit EPCONDIS9 __attribute__((address(0x7BCB)));


extern volatile __bit EPHSHK0 __attribute__((address(0x7B84)));


extern volatile __bit EPHSHK1 __attribute__((address(0x7B8C)));


extern volatile __bit EPHSHK10 __attribute__((address(0x7BD4)));


extern volatile __bit EPHSHK11 __attribute__((address(0x7BDC)));


extern volatile __bit EPHSHK12 __attribute__((address(0x7BE4)));


extern volatile __bit EPHSHK13 __attribute__((address(0x7BEC)));


extern volatile __bit EPHSHK14 __attribute__((address(0x7BF4)));


extern volatile __bit EPHSHK15 __attribute__((address(0x7BFC)));


extern volatile __bit EPHSHK2 __attribute__((address(0x7B94)));


extern volatile __bit EPHSHK3 __attribute__((address(0x7B9C)));


extern volatile __bit EPHSHK4 __attribute__((address(0x7BA4)));


extern volatile __bit EPHSHK5 __attribute__((address(0x7BAC)));


extern volatile __bit EPHSHK6 __attribute__((address(0x7BB4)));


extern volatile __bit EPHSHK7 __attribute__((address(0x7BBC)));


extern volatile __bit EPHSHK8 __attribute__((address(0x7BC4)));


extern volatile __bit EPHSHK9 __attribute__((address(0x7BCC)));


extern volatile __bit EPINEN0 __attribute__((address(0x7B81)));


extern volatile __bit EPINEN1 __attribute__((address(0x7B89)));


extern volatile __bit EPINEN10 __attribute__((address(0x7BD1)));


extern volatile __bit EPINEN11 __attribute__((address(0x7BD9)));


extern volatile __bit EPINEN12 __attribute__((address(0x7BE1)));


extern volatile __bit EPINEN13 __attribute__((address(0x7BE9)));


extern volatile __bit EPINEN14 __attribute__((address(0x7BF1)));


extern volatile __bit EPINEN15 __attribute__((address(0x7BF9)));


extern volatile __bit EPINEN2 __attribute__((address(0x7B91)));


extern volatile __bit EPINEN3 __attribute__((address(0x7B99)));


extern volatile __bit EPINEN4 __attribute__((address(0x7BA1)));


extern volatile __bit EPINEN5 __attribute__((address(0x7BA9)));


extern volatile __bit EPINEN6 __attribute__((address(0x7BB1)));


extern volatile __bit EPINEN7 __attribute__((address(0x7BB9)));


extern volatile __bit EPINEN8 __attribute__((address(0x7BC1)));


extern volatile __bit EPINEN9 __attribute__((address(0x7BC9)));


extern volatile __bit EPOUTEN0 __attribute__((address(0x7B82)));


extern volatile __bit EPOUTEN1 __attribute__((address(0x7B8A)));


extern volatile __bit EPOUTEN10 __attribute__((address(0x7BD2)));


extern volatile __bit EPOUTEN11 __attribute__((address(0x7BDA)));


extern volatile __bit EPOUTEN12 __attribute__((address(0x7BE2)));


extern volatile __bit EPOUTEN13 __attribute__((address(0x7BEA)));


extern volatile __bit EPOUTEN14 __attribute__((address(0x7BF2)));


extern volatile __bit EPOUTEN15 __attribute__((address(0x7BFA)));


extern volatile __bit EPOUTEN2 __attribute__((address(0x7B92)));


extern volatile __bit EPOUTEN3 __attribute__((address(0x7B9A)));


extern volatile __bit EPOUTEN4 __attribute__((address(0x7BA2)));


extern volatile __bit EPOUTEN5 __attribute__((address(0x7BAA)));


extern volatile __bit EPOUTEN6 __attribute__((address(0x7BB2)));


extern volatile __bit EPOUTEN7 __attribute__((address(0x7BBA)));


extern volatile __bit EPOUTEN8 __attribute__((address(0x7BC2)));


extern volatile __bit EPOUTEN9 __attribute__((address(0x7BCA)));


extern volatile __bit EPSTALL0 __attribute__((address(0x7B80)));


extern volatile __bit EPSTALL1 __attribute__((address(0x7B88)));


extern volatile __bit EPSTALL10 __attribute__((address(0x7BD0)));


extern volatile __bit EPSTALL11 __attribute__((address(0x7BD8)));


extern volatile __bit EPSTALL12 __attribute__((address(0x7BE0)));


extern volatile __bit EPSTALL13 __attribute__((address(0x7BE8)));


extern volatile __bit EPSTALL14 __attribute__((address(0x7BF0)));


extern volatile __bit EPSTALL15 __attribute__((address(0x7BF8)));


extern volatile __bit EPSTALL2 __attribute__((address(0x7B90)));


extern volatile __bit EPSTALL3 __attribute__((address(0x7B98)));


extern volatile __bit EPSTALL4 __attribute__((address(0x7BA0)));


extern volatile __bit EPSTALL5 __attribute__((address(0x7BA8)));


extern volatile __bit EPSTALL6 __attribute__((address(0x7BB0)));


extern volatile __bit EPSTALL7 __attribute__((address(0x7BB8)));


extern volatile __bit EPSTALL8 __attribute__((address(0x7BC0)));


extern volatile __bit EPSTALL9 __attribute__((address(0x7BC8)));


extern volatile __bit FERR __attribute__((address(0x7D5A)));


extern volatile __bit FLTS __attribute__((address(0x7E9A)));


extern volatile __bit FREE __attribute__((address(0x7D34)));


extern volatile __bit FRM0 __attribute__((address(0x7B30)));


extern volatile __bit FRM1 __attribute__((address(0x7B31)));


extern volatile __bit FRM10 __attribute__((address(0x7B3A)));


extern volatile __bit FRM2 __attribute__((address(0x7B32)));


extern volatile __bit FRM3 __attribute__((address(0x7B33)));


extern volatile __bit FRM4 __attribute__((address(0x7B34)));


extern volatile __bit FRM5 __attribute__((address(0x7B35)));


extern volatile __bit FRM6 __attribute__((address(0x7B36)));


extern volatile __bit FRM7 __attribute__((address(0x7B37)));


extern volatile __bit FRM8 __attribute__((address(0x7B38)));


extern volatile __bit FRM9 __attribute__((address(0x7B39)));


extern volatile __bit FSEN __attribute__((address(0x7B7A)));


extern volatile __bit GCEN __attribute__((address(0x7E2F)));


extern volatile __bit GIE __attribute__((address(0x7F97)));


extern volatile __bit GIEH __attribute__((address(0x7F97)));


extern volatile __bit GIEL __attribute__((address(0x7F96)));


extern volatile __bit GIE_GIEH __attribute__((address(0x7F97)));


extern volatile __bit GO __attribute__((address(0x7E11)));


extern volatile __bit GODONE __attribute__((address(0x7E11)));


extern volatile __bit GO_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit GO_nDONE __attribute__((address(0x7E11)));


extern volatile __bit HLVDEN __attribute__((address(0x7E94)));


extern volatile __bit HLVDIE __attribute__((address(0x7D02)));


extern volatile __bit HLVDIF __attribute__((address(0x7D0A)));


extern volatile __bit HLVDIN __attribute__((address(0x7C05)));


extern volatile __bit HLVDIP __attribute__((address(0x7D12)));


extern volatile __bit HLVDL0 __attribute__((address(0x7E90)));


extern volatile __bit HLVDL1 __attribute__((address(0x7E91)));


extern volatile __bit HLVDL2 __attribute__((address(0x7E92)));


extern volatile __bit HLVDL3 __attribute__((address(0x7E93)));


extern volatile __bit I2C_DAT __attribute__((address(0x7E3D)));


extern volatile __bit I2C_READ __attribute__((address(0x7E3A)));


extern volatile __bit I2C_START __attribute__((address(0x7E3B)));


extern volatile __bit I2C_STOP __attribute__((address(0x7E3C)));


extern volatile __bit IDLEIE __attribute__((address(0x7B4C)));


extern volatile __bit IDLEIF __attribute__((address(0x7B44)));


extern volatile __bit IDLEN __attribute__((address(0x7E9F)));


extern volatile __bit INT0 __attribute__((address(0x7C08)));


extern volatile __bit INT0E __attribute__((address(0x7F94)));


extern volatile __bit INT0F __attribute__((address(0x7F91)));


extern volatile __bit INT0IE __attribute__((address(0x7F94)));


extern volatile __bit INT0IF __attribute__((address(0x7F91)));


extern volatile __bit INT1 __attribute__((address(0x7C09)));


extern volatile __bit INT1E __attribute__((address(0x7F83)));


extern volatile __bit INT1F __attribute__((address(0x7F80)));


extern volatile __bit INT1IE __attribute__((address(0x7F83)));


extern volatile __bit INT1IF __attribute__((address(0x7F80)));


extern volatile __bit INT1IP __attribute__((address(0x7F86)));


extern volatile __bit INT1P __attribute__((address(0x7F86)));


extern volatile __bit INT2 __attribute__((address(0x7C0A)));


extern volatile __bit INT2E __attribute__((address(0x7F84)));


extern volatile __bit INT2F __attribute__((address(0x7F81)));


extern volatile __bit INT2IE __attribute__((address(0x7F84)));


extern volatile __bit INT2IF __attribute__((address(0x7F81)));


extern volatile __bit INT2IP __attribute__((address(0x7F87)));


extern volatile __bit INT2P __attribute__((address(0x7F87)));


extern volatile __bit INTEDG0 __attribute__((address(0x7F8E)));


extern volatile __bit INTEDG1 __attribute__((address(0x7F8D)));


extern volatile __bit INTEDG2 __attribute__((address(0x7F8C)));


extern volatile __bit INTSRC __attribute__((address(0x7CDF)));


extern volatile __bit IOFS __attribute__((address(0x7E9A)));


extern volatile __bit IPEN __attribute__((address(0x7E87)));


extern volatile __bit IRCF0 __attribute__((address(0x7E9C)));


extern volatile __bit IRCF1 __attribute__((address(0x7E9D)));


extern volatile __bit IRCF2 __attribute__((address(0x7E9E)));


extern volatile __bit IRVST __attribute__((address(0x7E95)));


extern volatile __bit IVRST __attribute__((address(0x7E95)));


extern volatile __bit LA0 __attribute__((address(0x7C48)));


extern volatile __bit LA1 __attribute__((address(0x7C49)));


extern volatile __bit LA2 __attribute__((address(0x7C4A)));


extern volatile __bit LA3 __attribute__((address(0x7C4B)));


extern volatile __bit LA4 __attribute__((address(0x7C4C)));


extern volatile __bit LA5 __attribute__((address(0x7C4D)));


extern volatile __bit LA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATA0 __attribute__((address(0x7C48)));


extern volatile __bit LATA1 __attribute__((address(0x7C49)));


extern volatile __bit LATA2 __attribute__((address(0x7C4A)));


extern volatile __bit LATA3 __attribute__((address(0x7C4B)));


extern volatile __bit LATA4 __attribute__((address(0x7C4C)));


extern volatile __bit LATA5 __attribute__((address(0x7C4D)));


extern volatile __bit LATA6 __attribute__((address(0x7C4E)));


extern volatile __bit LATB0 __attribute__((address(0x7C50)));


extern volatile __bit LATB1 __attribute__((address(0x7C51)));


extern volatile __bit LATB2 __attribute__((address(0x7C52)));


extern volatile __bit LATB3 __attribute__((address(0x7C53)));


extern volatile __bit LATB4 __attribute__((address(0x7C54)));


extern volatile __bit LATB5 __attribute__((address(0x7C55)));


extern volatile __bit LATB6 __attribute__((address(0x7C56)));


extern volatile __bit LATB7 __attribute__((address(0x7C57)));


extern volatile __bit LATC0 __attribute__((address(0x7C58)));


extern volatile __bit LATC1 __attribute__((address(0x7C59)));


extern volatile __bit LATC2 __attribute__((address(0x7C5A)));


extern volatile __bit LATC6 __attribute__((address(0x7C5E)));


extern volatile __bit LATC7 __attribute__((address(0x7C5F)));


extern volatile __bit LATD0 __attribute__((address(0x7C60)));


extern volatile __bit LATD1 __attribute__((address(0x7C61)));


extern volatile __bit LATD2 __attribute__((address(0x7C62)));


extern volatile __bit LATD3 __attribute__((address(0x7C63)));


extern volatile __bit LATD4 __attribute__((address(0x7C64)));


extern volatile __bit LATD5 __attribute__((address(0x7C65)));


extern volatile __bit LATD6 __attribute__((address(0x7C66)));


extern volatile __bit LATD7 __attribute__((address(0x7C67)));


extern volatile __bit LATE0 __attribute__((address(0x7C68)));


extern volatile __bit LATE1 __attribute__((address(0x7C69)));


extern volatile __bit LATE2 __attribute__((address(0x7C6A)));


extern volatile __bit LB0 __attribute__((address(0x7C50)));


extern volatile __bit LB1 __attribute__((address(0x7C51)));


extern volatile __bit LB2 __attribute__((address(0x7C52)));


extern volatile __bit LB3 __attribute__((address(0x7C53)));


extern volatile __bit LB4 __attribute__((address(0x7C54)));


extern volatile __bit LB5 __attribute__((address(0x7C55)));


extern volatile __bit LB6 __attribute__((address(0x7C56)));


extern volatile __bit LB7 __attribute__((address(0x7C57)));


extern volatile __bit LC0 __attribute__((address(0x7C58)));


extern volatile __bit LC1 __attribute__((address(0x7C59)));


extern volatile __bit LC2 __attribute__((address(0x7C5A)));


extern volatile __bit LC6 __attribute__((address(0x7C5E)));


extern volatile __bit LC7 __attribute__((address(0x7C5F)));


extern volatile __bit LD0 __attribute__((address(0x7C60)));


extern volatile __bit LD1 __attribute__((address(0x7C61)));


extern volatile __bit LD2 __attribute__((address(0x7C62)));


extern volatile __bit LD3 __attribute__((address(0x7C63)));


extern volatile __bit LD4 __attribute__((address(0x7C64)));


extern volatile __bit LD5 __attribute__((address(0x7C65)));


extern volatile __bit LD6 __attribute__((address(0x7C66)));


extern volatile __bit LD7 __attribute__((address(0x7C67)));


extern volatile __bit LE0 __attribute__((address(0x7C68)));


extern volatile __bit LE1 __attribute__((address(0x7C69)));


extern volatile __bit LE2 __attribute__((address(0x7C6A)));


extern volatile __bit LVDEN __attribute__((address(0x7E94)));


extern volatile __bit LVDIE __attribute__((address(0x7D02)));


extern volatile __bit LVDIF __attribute__((address(0x7D0A)));


extern volatile __bit LVDIN __attribute__((address(0x7C05)));


extern volatile __bit LVDIP __attribute__((address(0x7D12)));


extern volatile __bit LVDL0 __attribute__((address(0x7E90)));


extern volatile __bit LVDL1 __attribute__((address(0x7E91)));


extern volatile __bit LVDL2 __attribute__((address(0x7E92)));


extern volatile __bit LVDL3 __attribute__((address(0x7E93)));


extern volatile __bit LVV0 __attribute__((address(0x7E90)));


extern volatile __bit LVV1 __attribute__((address(0x7E91)));


extern volatile __bit LVV2 __attribute__((address(0x7E92)));


extern volatile __bit LVV3 __attribute__((address(0x7E93)));


extern volatile __bit NEGATIVE __attribute__((address(0x7EC4)));


extern volatile __bit NOT_A __attribute__((address(0x7E3D)));


extern volatile __bit NOT_ADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit NOT_BOR __attribute__((address(0x7E80)));


extern volatile __bit NOT_DONE __attribute__((address(0x7E11)));


extern volatile __bit NOT_IPEN __attribute__((address(0x7E87)));


extern volatile __bit NOT_PD __attribute__((address(0x7E82)));


extern volatile __bit NOT_POR __attribute__((address(0x7E81)));


extern volatile __bit NOT_RBPU __attribute__((address(0x7F8F)));


extern volatile __bit NOT_RI __attribute__((address(0x7E84)));


extern volatile __bit NOT_T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit NOT_T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit NOT_TO __attribute__((address(0x7E83)));


extern volatile __bit NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit NOT_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit OERR __attribute__((address(0x7D59)));


extern volatile __bit OESPP __attribute__((address(0x7C22)));


extern volatile __bit OSC2 __attribute__((address(0x7C06)));


extern volatile __bit OSCFIE __attribute__((address(0x7D07)));


extern volatile __bit OSCFIF __attribute__((address(0x7D0F)));


extern volatile __bit OSCFIP __attribute__((address(0x7D17)));


extern volatile __bit OSTS __attribute__((address(0x7E9B)));


extern volatile __bit OV __attribute__((address(0x7EC3)));


extern volatile __bit OVERFLOW __attribute__((address(0x7EC3)));


extern volatile __bit P1A __attribute__((address(0x7C12)));


extern volatile __bit P1M0 __attribute__((address(0x7DEE)));


extern volatile __bit P1M1 __attribute__((address(0x7DEF)));


extern volatile __bit PA1 __attribute__((address(0x7C12)));


extern volatile __bit PA2 __attribute__((address(0x7C11)));


extern volatile __bit PA2E __attribute__((address(0x7C27)));


extern volatile __bit PB2 __attribute__((address(0x7C22)));


extern volatile __bit PC2 __attribute__((address(0x7C21)));


extern volatile __bit PC3E __attribute__((address(0x7C23)));


extern volatile __bit PCFG0 __attribute__((address(0x7E08)));


extern volatile __bit PCFG1 __attribute__((address(0x7E09)));


extern volatile __bit PCFG2 __attribute__((address(0x7E0A)));


extern volatile __bit PCFG3 __attribute__((address(0x7E0B)));


extern volatile __bit PD __attribute__((address(0x7E82)));


extern volatile __bit PD2 __attribute__((address(0x7C20)));


extern volatile __bit PDC0 __attribute__((address(0x7DB8)));


extern volatile __bit PDC1 __attribute__((address(0x7DB9)));


extern volatile __bit PDC2 __attribute__((address(0x7DBA)));


extern volatile __bit PDC3 __attribute__((address(0x7DBB)));


extern volatile __bit PDC4 __attribute__((address(0x7DBC)));


extern volatile __bit PDC5 __attribute__((address(0x7DBD)));


extern volatile __bit PDC6 __attribute__((address(0x7DBE)));


extern volatile __bit PEIE __attribute__((address(0x7F96)));


extern volatile __bit PEIE_GIEL __attribute__((address(0x7F96)));


extern volatile __bit PEN __attribute__((address(0x7E2A)));


extern volatile __bit PGC __attribute__((address(0x7C0E)));


extern volatile __bit PGD __attribute__((address(0x7C0F)));


extern volatile __bit PGM __attribute__((address(0x7C0D)));


extern volatile __bit PIDEE __attribute__((address(0x7B58)));


extern volatile __bit PIDEF __attribute__((address(0x7B50)));


extern volatile __bit PKTDIS __attribute__((address(0x7B6C)));


extern volatile __bit POR __attribute__((address(0x7E81)));


extern volatile __bit PPB0 __attribute__((address(0x7B78)));


extern volatile __bit PPB1 __attribute__((address(0x7B79)));


extern volatile __bit PPBI __attribute__((address(0x7B61)));


extern volatile __bit PPBRST __attribute__((address(0x7B6E)));


extern volatile __bit PRSEN __attribute__((address(0x7DBF)));


extern volatile __bit PSA __attribute__((address(0x7EAB)));


extern volatile __bit PSPIE __attribute__((address(0x7CEF)));


extern volatile __bit PSPIF __attribute__((address(0x7CF7)));


extern volatile __bit PSPIP __attribute__((address(0x7CFF)));


extern volatile __bit PSSAC0 __attribute__((address(0x7DB2)));


extern volatile __bit PSSAC1 __attribute__((address(0x7DB3)));


extern volatile __bit PSSBD0 __attribute__((address(0x7DB0)));


extern volatile __bit PSSBD1 __attribute__((address(0x7DB1)));


extern volatile __bit __attribute__((__deprecated__)) RA0 __attribute__((address(0x7C00)));


extern volatile __bit __attribute__((__deprecated__)) RA1 __attribute__((address(0x7C01)));


extern volatile __bit __attribute__((__deprecated__)) RA2 __attribute__((address(0x7C02)));


extern volatile __bit __attribute__((__deprecated__)) RA3 __attribute__((address(0x7C03)));


extern volatile __bit __attribute__((__deprecated__)) RA4 __attribute__((address(0x7C04)));


extern volatile __bit __attribute__((__deprecated__)) RA5 __attribute__((address(0x7C05)));


extern volatile __bit __attribute__((__deprecated__)) RA6 __attribute__((address(0x7C06)));


extern volatile __bit __attribute__((__deprecated__)) RB0 __attribute__((address(0x7C08)));


extern volatile __bit __attribute__((__deprecated__)) RB1 __attribute__((address(0x7C09)));


extern volatile __bit __attribute__((__deprecated__)) RB2 __attribute__((address(0x7C0A)));


extern volatile __bit __attribute__((__deprecated__)) RB3 __attribute__((address(0x7C0B)));


extern volatile __bit __attribute__((__deprecated__)) RB4 __attribute__((address(0x7C0C)));


extern volatile __bit __attribute__((__deprecated__)) RB5 __attribute__((address(0x7C0D)));


extern volatile __bit __attribute__((__deprecated__)) RB6 __attribute__((address(0x7C0E)));


extern volatile __bit __attribute__((__deprecated__)) RB7 __attribute__((address(0x7C0F)));


extern volatile __bit RBIE __attribute__((address(0x7F93)));


extern volatile __bit RBIF __attribute__((address(0x7F90)));


extern volatile __bit RBIP __attribute__((address(0x7F88)));


extern volatile __bit RBPU __attribute__((address(0x7F8F)));


extern volatile __bit __attribute__((__deprecated__)) RC0 __attribute__((address(0x7C10)));


extern volatile __bit __attribute__((__deprecated__)) RC1 __attribute__((address(0x7C11)));


extern volatile __bit RC1IE __attribute__((address(0x7CED)));


extern volatile __bit RC1IF __attribute__((address(0x7CF5)));


extern volatile __bit RC1IP __attribute__((address(0x7CFD)));


extern volatile __bit __attribute__((__deprecated__)) RC2 __attribute__((address(0x7C12)));


extern volatile __bit RC4 __attribute__((address(0x7C14)));


extern volatile __bit RC5 __attribute__((address(0x7C15)));


extern volatile __bit __attribute__((__deprecated__)) RC6 __attribute__((address(0x7C16)));


extern volatile __bit __attribute__((__deprecated__)) RC7 __attribute__((address(0x7C17)));


extern volatile __bit RC8_9 __attribute__((address(0x7D5E)));


extern volatile __bit RC9 __attribute__((address(0x7D5E)));


extern volatile __bit RCD8 __attribute__((address(0x7D58)));


extern volatile __bit RCEN __attribute__((address(0x7E2B)));


extern volatile __bit RCIDL __attribute__((address(0x7DC6)));


extern volatile __bit RCIE __attribute__((address(0x7CED)));


extern volatile __bit RCIF __attribute__((address(0x7CF5)));


extern volatile __bit RCIP __attribute__((address(0x7CFD)));


extern volatile __bit RCMT __attribute__((address(0x7DC6)));


extern volatile __bit RD __attribute__((address(0x7D30)));


extern volatile __bit __attribute__((__deprecated__)) RD0 __attribute__((address(0x7C18)));


extern volatile __bit __attribute__((__deprecated__)) RD1 __attribute__((address(0x7C19)));


extern volatile __bit RD163 __attribute__((address(0x7D8F)));


extern volatile __bit __attribute__((__deprecated__)) RD2 __attribute__((address(0x7C1A)));


extern volatile __bit __attribute__((__deprecated__)) RD3 __attribute__((address(0x7C1B)));


extern volatile __bit __attribute__((__deprecated__)) RD4 __attribute__((address(0x7C1C)));


extern volatile __bit __attribute__((__deprecated__)) RD5 __attribute__((address(0x7C1D)));


extern volatile __bit __attribute__((__deprecated__)) RD6 __attribute__((address(0x7C1E)));


extern volatile __bit __attribute__((__deprecated__)) RD7 __attribute__((address(0x7C1F)));


extern volatile __bit RDE __attribute__((address(0x7C20)));


extern volatile __bit RDPU __attribute__((address(0x7C27)));


extern volatile __bit RDSPP __attribute__((address(0x7B27)));


extern volatile __bit __attribute__((__deprecated__)) RE0 __attribute__((address(0x7C20)));


extern volatile __bit __attribute__((__deprecated__)) RE1 __attribute__((address(0x7C21)));


extern volatile __bit __attribute__((__deprecated__)) RE2 __attribute__((address(0x7C22)));


extern volatile __bit RE3 __attribute__((address(0x7C23)));


extern volatile __bit RE7 __attribute__((address(0x7C27)));


extern volatile __bit READ_WRITE __attribute__((address(0x7E3A)));


extern volatile __bit RESUME __attribute__((address(0x7B6A)));


extern volatile __bit RI __attribute__((address(0x7E84)));


extern volatile __bit RSEN __attribute__((address(0x7E29)));


extern volatile __bit RW __attribute__((address(0x7E3A)));


extern volatile __bit RX __attribute__((address(0x7C17)));


extern volatile __bit RX9 __attribute__((address(0x7D5E)));


extern volatile __bit RX9D __attribute__((address(0x7D58)));


extern volatile __bit RXCKP __attribute__((address(0x7DC5)));


extern volatile __bit RXDTP __attribute__((address(0x7DC5)));


extern volatile __bit R_NOT_W __attribute__((address(0x7E3A)));


extern volatile __bit R_W __attribute__((address(0x7E3A)));


extern volatile __bit R_nW __attribute__((address(0x7E3A)));


extern volatile __bit SBOREN __attribute__((address(0x7E86)));


extern volatile __bit SCKP __attribute__((address(0x7DC4)));


extern volatile __bit SCS0 __attribute__((address(0x7E98)));


extern volatile __bit SCS1 __attribute__((address(0x7E99)));


extern volatile __bit SE0 __attribute__((address(0x7B6D)));


extern volatile __bit SEN __attribute__((address(0x7E28)));


extern volatile __bit SENDB __attribute__((address(0x7D63)));


extern volatile __bit SENDB1 __attribute__((address(0x7D63)));


extern volatile __bit SMP __attribute__((address(0x7E3F)));


extern volatile __bit SOFIE __attribute__((address(0x7B4E)));


extern volatile __bit SOFIF __attribute__((address(0x7B46)));


extern volatile __bit SOSCEN __attribute__((address(0x7E6B)));


extern volatile __bit SOSCEN3 __attribute__((address(0x7D8B)));


extern volatile __bit SPEN __attribute__((address(0x7D5F)));


extern volatile __bit SPP0 __attribute__((address(0x7C18)));


extern volatile __bit SPP1 __attribute__((address(0x7C19)));


extern volatile __bit SPP2 __attribute__((address(0x7C1A)));


extern volatile __bit SPP3 __attribute__((address(0x7C1B)));


extern volatile __bit SPP4 __attribute__((address(0x7C1C)));


extern volatile __bit SPP5 __attribute__((address(0x7C1D)));


extern volatile __bit SPP6 __attribute__((address(0x7C1E)));


extern volatile __bit SPP7 __attribute__((address(0x7C1F)));


extern volatile __bit SPPBUSY __attribute__((address(0x7B24)));


extern volatile __bit SPPEN __attribute__((address(0x7B28)));


extern volatile __bit SPPIE __attribute__((address(0x7CEF)));


extern volatile __bit SPPIF __attribute__((address(0x7CF7)));


extern volatile __bit SPPIP __attribute__((address(0x7CFF)));


extern volatile __bit SPPOWN __attribute__((address(0x7B29)));


extern volatile __bit SREN __attribute__((address(0x7D5D)));


extern volatile __bit SRENA __attribute__((address(0x7D5D)));


extern volatile __bit SS2 __attribute__((address(0x7C1F)));


extern volatile __bit SSPEN __attribute__((address(0x7E35)));


extern volatile __bit SSPIE __attribute__((address(0x7CEB)));


extern volatile __bit SSPIF __attribute__((address(0x7CF3)));


extern volatile __bit SSPIP __attribute__((address(0x7CFB)));


extern volatile __bit SSPM0 __attribute__((address(0x7E30)));


extern volatile __bit SSPM1 __attribute__((address(0x7E31)));


extern volatile __bit SSPM2 __attribute__((address(0x7E32)));


extern volatile __bit SSPM3 __attribute__((address(0x7E33)));


extern volatile __bit SSPOV __attribute__((address(0x7E36)));


extern volatile __bit STALLIE __attribute__((address(0x7B4D)));


extern volatile __bit STALLIF __attribute__((address(0x7B45)));


extern volatile __bit START __attribute__((address(0x7E3B)));


extern volatile __bit STKFUL __attribute__((address(0x7FE7)));


extern volatile __bit STKOVF __attribute__((address(0x7FE7)));


extern volatile __bit STKPTR0 __attribute__((address(0x7FE0)));


extern volatile __bit STKPTR1 __attribute__((address(0x7FE1)));


extern volatile __bit STKPTR2 __attribute__((address(0x7FE2)));


extern volatile __bit STKPTR3 __attribute__((address(0x7FE3)));


extern volatile __bit STKPTR4 __attribute__((address(0x7FE4)));


extern volatile __bit STKUNF __attribute__((address(0x7FE6)));


extern volatile __bit STOP __attribute__((address(0x7E3C)));


extern volatile __bit SUSPND __attribute__((address(0x7B69)));


extern volatile __bit SWDTE __attribute__((address(0x7E88)));


extern volatile __bit SWDTEN __attribute__((address(0x7E88)));


extern volatile __bit SYNC __attribute__((address(0x7D64)));


extern volatile __bit SYNC1 __attribute__((address(0x7D64)));


extern volatile __bit T08BIT __attribute__((address(0x7EAE)));


extern volatile __bit T0CKI __attribute__((address(0x7C04)));


extern volatile __bit T0CS __attribute__((address(0x7EAD)));


extern volatile __bit T0IE __attribute__((address(0x7F95)));


extern volatile __bit T0IF __attribute__((address(0x7F92)));


extern volatile __bit T0IP __attribute__((address(0x7F8A)));


extern volatile __bit T0PS0 __attribute__((address(0x7EA8)));


extern volatile __bit T0PS1 __attribute__((address(0x7EA9)));


extern volatile __bit T0PS2 __attribute__((address(0x7EAA)));


extern volatile __bit T0SE __attribute__((address(0x7EAC)));


extern volatile __bit T13CKI __attribute__((address(0x7C10)));


extern volatile __bit T1CKPS0 __attribute__((address(0x7E6C)));


extern volatile __bit T1CKPS1 __attribute__((address(0x7E6D)));


extern volatile __bit T1OSCEN __attribute__((address(0x7E6B)));


extern volatile __bit T1OSI __attribute__((address(0x7C11)));


extern volatile __bit T1OSO __attribute__((address(0x7C10)));


extern volatile __bit T1RD16 __attribute__((address(0x7E6F)));


extern volatile __bit T1RUN __attribute__((address(0x7E6E)));


extern volatile __bit T1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit T2CKPS0 __attribute__((address(0x7E50)));


extern volatile __bit T2CKPS1 __attribute__((address(0x7E51)));


extern volatile __bit T2OUTPS0 __attribute__((address(0x7E53)));


extern volatile __bit T2OUTPS1 __attribute__((address(0x7E54)));


extern volatile __bit T2OUTPS2 __attribute__((address(0x7E55)));


extern volatile __bit T2OUTPS3 __attribute__((address(0x7E56)));


extern volatile __bit T3CCP1 __attribute__((address(0x7D8B)));


extern volatile __bit T3CCP2 __attribute__((address(0x7D8E)));


extern volatile __bit T3CKPS0 __attribute__((address(0x7D8C)));


extern volatile __bit T3CKPS1 __attribute__((address(0x7D8D)));


extern volatile __bit T3NSYNC __attribute__((address(0x7D8A)));


extern volatile __bit T3RD16 __attribute__((address(0x7D8F)));


extern volatile __bit T3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit TMR0IE __attribute__((address(0x7F95)));


extern volatile __bit TMR0IF __attribute__((address(0x7F92)));


extern volatile __bit TMR0IP __attribute__((address(0x7F8A)));


extern volatile __bit TMR0ON __attribute__((address(0x7EAF)));


extern volatile __bit TMR1CS __attribute__((address(0x7E69)));


extern volatile __bit TMR1IE __attribute__((address(0x7CE8)));


extern volatile __bit TMR1IF __attribute__((address(0x7CF0)));


extern volatile __bit TMR1IP __attribute__((address(0x7CF8)));


extern volatile __bit TMR1ON __attribute__((address(0x7E68)));


extern volatile __bit TMR2IE __attribute__((address(0x7CE9)));


extern volatile __bit TMR2IF __attribute__((address(0x7CF1)));


extern volatile __bit TMR2IP __attribute__((address(0x7CF9)));


extern volatile __bit TMR2ON __attribute__((address(0x7E52)));


extern volatile __bit TMR3CS __attribute__((address(0x7D89)));


extern volatile __bit TMR3IE __attribute__((address(0x7D01)));


extern volatile __bit TMR3IF __attribute__((address(0x7D09)));


extern volatile __bit TMR3IP __attribute__((address(0x7D11)));


extern volatile __bit TMR3ON __attribute__((address(0x7D88)));


extern volatile __bit TO __attribute__((address(0x7E83)));


extern volatile __bit TOUTPS0 __attribute__((address(0x7E53)));


extern volatile __bit TOUTPS1 __attribute__((address(0x7E54)));


extern volatile __bit TOUTPS2 __attribute__((address(0x7E55)));


extern volatile __bit TOUTPS3 __attribute__((address(0x7E56)));


extern volatile __bit TRISA0 __attribute__((address(0x7C90)));


extern volatile __bit TRISA1 __attribute__((address(0x7C91)));


extern volatile __bit TRISA2 __attribute__((address(0x7C92)));


extern volatile __bit TRISA3 __attribute__((address(0x7C93)));


extern volatile __bit TRISA4 __attribute__((address(0x7C94)));


extern volatile __bit TRISA5 __attribute__((address(0x7C95)));


extern volatile __bit TRISA6 __attribute__((address(0x7C96)));


extern volatile __bit TRISB0 __attribute__((address(0x7C98)));


extern volatile __bit TRISB1 __attribute__((address(0x7C99)));


extern volatile __bit TRISB2 __attribute__((address(0x7C9A)));


extern volatile __bit TRISB3 __attribute__((address(0x7C9B)));


extern volatile __bit TRISB4 __attribute__((address(0x7C9C)));


extern volatile __bit TRISB5 __attribute__((address(0x7C9D)));


extern volatile __bit TRISB6 __attribute__((address(0x7C9E)));


extern volatile __bit TRISB7 __attribute__((address(0x7C9F)));


extern volatile __bit TRISC0 __attribute__((address(0x7CA0)));


extern volatile __bit TRISC1 __attribute__((address(0x7CA1)));


extern volatile __bit TRISC2 __attribute__((address(0x7CA2)));


extern volatile __bit TRISC6 __attribute__((address(0x7CA6)));


extern volatile __bit TRISC7 __attribute__((address(0x7CA7)));


extern volatile __bit TRISD0 __attribute__((address(0x7CA8)));


extern volatile __bit TRISD1 __attribute__((address(0x7CA9)));


extern volatile __bit TRISD2 __attribute__((address(0x7CAA)));


extern volatile __bit TRISD3 __attribute__((address(0x7CAB)));


extern volatile __bit TRISD4 __attribute__((address(0x7CAC)));


extern volatile __bit TRISD5 __attribute__((address(0x7CAD)));


extern volatile __bit TRISD6 __attribute__((address(0x7CAE)));


extern volatile __bit TRISD7 __attribute__((address(0x7CAF)));


extern volatile __bit TRISE0 __attribute__((address(0x7CB0)));


extern volatile __bit TRISE1 __attribute__((address(0x7CB1)));


extern volatile __bit TRISE2 __attribute__((address(0x7CB2)));


extern volatile __bit TRMT __attribute__((address(0x7D61)));


extern volatile __bit TRMT1 __attribute__((address(0x7D61)));


extern volatile __bit TRNIE __attribute__((address(0x7B4B)));


extern volatile __bit TRNIF __attribute__((address(0x7B43)));


extern volatile __bit TUN0 __attribute__((address(0x7CD8)));


extern volatile __bit TUN1 __attribute__((address(0x7CD9)));


extern volatile __bit TUN2 __attribute__((address(0x7CDA)));


extern volatile __bit TUN3 __attribute__((address(0x7CDB)));


extern volatile __bit TUN4 __attribute__((address(0x7CDC)));


extern volatile __bit TX __attribute__((address(0x7C16)));


extern volatile __bit TX1IE __attribute__((address(0x7CEC)));


extern volatile __bit TX1IF __attribute__((address(0x7CF4)));


extern volatile __bit TX1IP __attribute__((address(0x7CFC)));


extern volatile __bit TX8_9 __attribute__((address(0x7D66)));


extern volatile __bit TX9 __attribute__((address(0x7D66)));


extern volatile __bit TX91 __attribute__((address(0x7D66)));


extern volatile __bit TX9D __attribute__((address(0x7D60)));


extern volatile __bit TX9D1 __attribute__((address(0x7D60)));


extern volatile __bit TXCKP __attribute__((address(0x7DC4)));


extern volatile __bit TXD8 __attribute__((address(0x7D60)));


extern volatile __bit TXEN __attribute__((address(0x7D65)));


extern volatile __bit TXEN1 __attribute__((address(0x7D65)));


extern volatile __bit TXIE __attribute__((address(0x7CEC)));


extern volatile __bit TXIF __attribute__((address(0x7CF4)));


extern volatile __bit TXIP __attribute__((address(0x7CFC)));


extern volatile __bit UA __attribute__((address(0x7E39)));


extern volatile __bit UERRIE __attribute__((address(0x7B49)));


extern volatile __bit UERRIF __attribute__((address(0x7B41)));


extern volatile __bit ULPWUIN __attribute__((address(0x7C00)));


extern volatile __bit UOEMON __attribute__((address(0x7B7E)));


extern volatile __bit UPP0 __attribute__((address(0x7B78)));


extern volatile __bit UPP1 __attribute__((address(0x7B79)));


extern volatile __bit UPUEN __attribute__((address(0x7B7C)));


extern volatile __bit URSTIE __attribute__((address(0x7B48)));


extern volatile __bit URSTIF __attribute__((address(0x7B40)));


extern volatile __bit USBEN __attribute__((address(0x7B6B)));


extern volatile __bit USBIE __attribute__((address(0x7D05)));


extern volatile __bit USBIF __attribute__((address(0x7D0D)));


extern volatile __bit USBIP __attribute__((address(0x7D15)));


extern volatile __bit UTEYE __attribute__((address(0x7B7F)));


extern volatile __bit UTRDIS __attribute__((address(0x7B7B)));


extern volatile __bit VCFG0 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG01 __attribute__((address(0x7E0C)));


extern volatile __bit VCFG1 __attribute__((address(0x7E0D)));


extern volatile __bit VCFG11 __attribute__((address(0x7E0D)));


extern volatile __bit VDIRMAG __attribute__((address(0x7E97)));


extern volatile __bit VREFM __attribute__((address(0x7C02)));


extern volatile __bit VREFP __attribute__((address(0x7C03)));


extern volatile __bit W4E __attribute__((address(0x7DC1)));


extern volatile __bit WAIT0 __attribute__((address(0x7E5C)));


extern volatile __bit WAIT1 __attribute__((address(0x7E5D)));


extern volatile __bit WCOL __attribute__((address(0x7E37)));


extern volatile __bit WM0 __attribute__((address(0x7E58)));


extern volatile __bit WM1 __attribute__((address(0x7E59)));


extern volatile __bit WR __attribute__((address(0x7D31)));


extern volatile __bit WRE __attribute__((address(0x7C21)));


extern volatile __bit WREN __attribute__((address(0x7D32)));


extern volatile __bit WRERR __attribute__((address(0x7D33)));


extern volatile __bit WRSPP __attribute__((address(0x7B26)));


extern volatile __bit WS0 __attribute__((address(0x7B18)));


extern volatile __bit WS1 __attribute__((address(0x7B19)));


extern volatile __bit WS2 __attribute__((address(0x7B1A)));


extern volatile __bit WS3 __attribute__((address(0x7B1B)));


extern volatile __bit WUE __attribute__((address(0x7DC1)));


extern volatile __bit ZERO __attribute__((address(0x7EC2)));


extern volatile __bit nA __attribute__((address(0x7E3D)));


extern volatile __bit nADDRESS __attribute__((address(0x7E3D)));


extern volatile __bit nBOR __attribute__((address(0x7E80)));


extern volatile __bit nDONE __attribute__((address(0x7E11)));


extern volatile __bit nIPEN __attribute__((address(0x7E87)));


extern volatile __bit nPD __attribute__((address(0x7E82)));


extern volatile __bit nPOR __attribute__((address(0x7E81)));


extern volatile __bit nRBPU __attribute__((address(0x7F8F)));


extern volatile __bit nRI __attribute__((address(0x7E84)));


extern volatile __bit nT1SYNC __attribute__((address(0x7E6A)));


extern volatile __bit nT3SYNC __attribute__((address(0x7D8A)));


extern volatile __bit nTO __attribute__((address(0x7E83)));


extern volatile __bit nW __attribute__((address(0x7E3A)));


extern volatile __bit nWRITE __attribute__((address(0x7E3A)));
# 790 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18_chip_select.h" 2 3
# 6 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18.h" 2 3
# 15 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18.h" 3
__attribute__((__unsupported__("The " "flash_write" " routine is no longer supported. Please use the MPLAB X MCC."))) void flash_write(const unsigned char *, unsigned int, __far unsigned char *);
__attribute__((__unsupported__("The " "EraseFlash" " routine is no longer supported. Please use the MPLAB X MCC."))) void EraseFlash(unsigned long startaddr, unsigned long endaddr);






# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/errata.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18.h" 2 3
# 139 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18.h" 3
__attribute__((__unsupported__("The " "Read_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) unsigned char Read_b_eep(unsigned int badd);
__attribute__((__unsupported__("The " "Busy_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Busy_eep(void);
__attribute__((__unsupported__("The " "Write_b_eep" " routine is no longer supported. Please use the MPLAB X MCC."))) void Write_b_eep(unsigned int badd, unsigned char bdat);
# 175 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/pic18.h" 3
unsigned char __t1rd16on(void);
unsigned char __t3rd16on(void);
# 34 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include/xc.h" 2 3
# 66 "main.c" 2
# 1 "./nxlcd.h" 1
# 92 "./nxlcd.h"
void DelayFor18TCY(void);
void DelayPORXLCD(void);
void DelayXLCD(void);




void OpenXLCD( unsigned char);




void SetCGRamAddr( unsigned char);




void SetDDRamAddr( unsigned char);




unsigned char BusyXLCD(void);




unsigned char ReadAddrXLCD(void);




char ReadDataXLCD(void);




void WriteCmdXLCD( unsigned char);




void WriteDataXLCD( char);
# 144 "./nxlcd.h"
void putsXLCD( char *);




void putrsXLCD(const char *);
# 67 "main.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/string.h" 1 3
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/string.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 421 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef struct __locale_struct * locale_t;
# 26 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/string.h" 2 3

void *memcpy (void *restrict, const void *restrict, size_t);
void *memmove (void *, const void *, size_t);
void *memset (void *, int, size_t);
int memcmp (const void *, const void *, size_t);
void *memchr (const void *, int, size_t);

char *strcpy (char *restrict, const char *restrict);
char *strncpy (char *restrict, const char *restrict, size_t);

char *strcat (char *restrict, const char *restrict);
char *strncat (char *restrict, const char *restrict, size_t);

int strcmp (const char *, const char *);
int strncmp (const char *, const char *, size_t);

int strcoll (const char *, const char *);
size_t strxfrm (char *restrict, const char *restrict, size_t);

char *strchr (const char *, int);
char *strrchr (const char *, int);

size_t strcspn (const char *, const char *);
size_t strspn (const char *, const char *);
char *strpbrk (const char *, const char *);
char *strstr (const char *, const char *);
char *strtok (char *restrict, const char *restrict);

size_t strlen (const char *);

char *strerror (int);




char *strtok_r (char *restrict, const char *restrict, char **restrict);
int strerror_r (int, char *, size_t);
char *stpcpy(char *restrict, const char *restrict);
char *stpncpy(char *restrict, const char *restrict, size_t);
size_t strnlen (const char *, size_t);
char *strdup (const char *);
char *strndup (const char *, size_t);
char *strsignal(int);
char *strerror_l (int, locale_t);
int strcoll_l (const char *, const char *, locale_t);
size_t strxfrm_l (char *restrict, const char *restrict, size_t, locale_t);




void *memccpy (void *restrict, const void *restrict, int, size_t);
# 68 "main.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdio.h" 1 3
# 24 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdio.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 12 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef void * va_list[1];




typedef void * __isoc_va_list[1];
# 143 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef __int24 ssize_t;
# 255 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef long long off_t;
# 409 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef struct _IO_FILE FILE;
# 25 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdio.h" 2 3
# 52 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/stdio.h" 3
typedef union _G_fpos64_t {
 char __opaque[16];
 double __align;
} fpos_t;

extern FILE *const stdin;
extern FILE *const stdout;
extern FILE *const stderr;





FILE *fopen(const char *restrict, const char *restrict);
FILE *freopen(const char *restrict, const char *restrict, FILE *restrict);
int fclose(FILE *);

int remove(const char *);
int rename(const char *, const char *);

int feof(FILE *);
int ferror(FILE *);
int fflush(FILE *);
void clearerr(FILE *);

int fseek(FILE *, long, int);
long ftell(FILE *);
void rewind(FILE *);

int fgetpos(FILE *restrict, fpos_t *restrict);
int fsetpos(FILE *, const fpos_t *);

size_t fread(void *restrict, size_t, size_t, FILE *restrict);
size_t fwrite(const void *restrict, size_t, size_t, FILE *restrict);

int fgetc(FILE *);
int getc(FILE *);
int getchar(void);





int ungetc(int, FILE *);
int getch(void);

int fputc(int, FILE *);
int putc(int, FILE *);
int putchar(int);





void putch(char);

char *fgets(char *restrict, int, FILE *restrict);

char *gets(char *);


int fputs(const char *restrict, FILE *restrict);
int puts(const char *);

__attribute__((__format__(__printf__, 1, 2)))
int printf(const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int fprintf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 2, 3)))
int sprintf(char *restrict, const char *restrict, ...);
__attribute__((__format__(__printf__, 3, 4)))
int snprintf(char *restrict, size_t, const char *restrict, ...);

__attribute__((__format__(__printf__, 1, 0)))
int vprintf(const char *restrict, __isoc_va_list);
int vfprintf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 2, 0)))
int vsprintf(char *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__printf__, 3, 0)))
int vsnprintf(char *restrict, size_t, const char *restrict, __isoc_va_list);

__attribute__((__format__(__scanf__, 1, 2)))
int scanf(const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int fscanf(FILE *restrict, const char *restrict, ...);
__attribute__((__format__(__scanf__, 2, 3)))
int sscanf(const char *restrict, const char *restrict, ...);

__attribute__((__format__(__scanf__, 1, 0)))
int vscanf(const char *restrict, __isoc_va_list);
int vfscanf(FILE *restrict, const char *restrict, __isoc_va_list);
__attribute__((__format__(__scanf__, 2, 0)))
int vsscanf(const char *restrict, const char *restrict, __isoc_va_list);

void perror(const char *);

int setvbuf(FILE *restrict, char *restrict, int, size_t);
void setbuf(FILE *restrict, char *restrict);

char *tmpnam(char *);
FILE *tmpfile(void);




FILE *fmemopen(void *restrict, size_t, const char *restrict);
FILE *open_memstream(char **, size_t *);
FILE *fdopen(int, const char *);
FILE *popen(const char *, const char *);
int pclose(FILE *);
int fileno(FILE *);
int fseeko(FILE *, off_t, int);
off_t ftello(FILE *);
int dprintf(int, const char *restrict, ...);
int vdprintf(int, const char *restrict, __isoc_va_list);
void flockfile(FILE *);
int ftrylockfile(FILE *);
void funlockfile(FILE *);
int getc_unlocked(FILE *);
int getchar_unlocked(void);
int putc_unlocked(int, FILE *);
int putchar_unlocked(int);
ssize_t getdelim(char **restrict, size_t *restrict, int, FILE *restrict);
ssize_t getline(char **restrict, size_t *restrict, FILE *restrict);
int renameat(int, const char *, int, const char *);
char *ctermid(char *);







char *tempnam(const char *, const char *);
# 69 "main.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/math.h" 1 3
# 15 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/math.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 39 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 3
typedef float float_t;




typedef double double_t;
# 16 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/math.h" 2 3
# 42 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/math.h" 3
int __fpclassifyf(float);







int __signbitf(float);
# 59 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/math.h" 3
double acos(double);
float acosf(float);
long double acosl(long double);



double acosh(double);
float acoshf(float);
long double acoshl(long double);



double asin(double);
float asinf(float);
long double asinl(long double);



double asinh(double);
float asinhf(float);
long double asinhl(long double);



double atan(double);
float atanf(float);
long double atanl(long double);



double atan2(double, double);
float atan2f(float, float);
long double atan2l(long double, long double);



double atanh(double);
float atanhf(float);
long double atanhl(long double);



double cbrt(double);
float cbrtf(float);
long double cbrtl(long double);



double ceil(double);
float ceilf(float);
long double ceill(long double);



double copysign(double, double);
float copysignf(float, float);
long double copysignl(long double, long double);



double cos(double);
float cosf(float);
long double cosl(long double);



double cosh(double);
float coshf(float);
long double coshl(long double);



double erf(double);
float erff(float);
long double erfl(long double);



double erfc(double);
float erfcf(float);
long double erfcl(long double);



double exp(double);
float expf(float);
long double expl(long double);



double exp2(double);
float exp2f(float);
long double exp2l(long double);



double expm1(double);
float expm1f(float);
long double expm1l(long double);



double fabs(double);
float fabsf(float);
long double fabsl(long double);



double fdim(double, double);
float fdimf(float, float);
long double fdiml(long double, long double);



double floor(double);
float floorf(float);
long double floorl(long double);



double fma(double, double, double);
float fmaf(float, float, float);
long double fmal(long double, long double, long double);



double fmax(double, double);
float fmaxf(float, float);
long double fmaxl(long double, long double);



double fmin(double, double);
float fminf(float, float);
long double fminl(long double, long double);



double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);



double frexp(double, int *);
float frexpf(float, int *);
long double frexpl(long double, int *);



double hypot(double, double);
float hypotf(float, float);
long double hypotl(long double, long double);



int ilogb(double);
int ilogbf(float);
int ilogbl(long double);



double ldexp(double, int);
float ldexpf(float, int);
long double ldexpl(long double, int);




double lgamma(double);
float lgammaf(float);
long double lgammal(long double);




long long llrint(double);
long long llrintf(float);
long long llrintl(long double);



long long llround(double);
long long llroundf(float);
long long llroundl(long double);




double log(double);
float logf(float);
long double logl(long double);



double log10(double);
float log10f(float);
long double log10l(long double);



double log1p(double);
float log1pf(float);
long double log1pl(long double);



double log2(double);
float log2f(float);
long double log2l(long double);



double logb(double);
float logbf(float);
long double logbl(long double);



long lrint(double);
long lrintf(float);
long lrintl(long double);



long lround(double);
long lroundf(float);
long lroundl(long double);



double modf(double, double *);
float modff(float, float *);
long double modfl(long double, long double *);



double nan(const char *);
float nanf(const char *);
long double nanl(const char *);



double nearbyint(double);
float nearbyintf(float);
long double nearbyintl(long double);



double nextafter(double, double);
float nextafterf(float, float);
long double nextafterl(long double, long double);



double nexttoward(double, long double);
float nexttowardf(float, long double);
long double nexttowardl(long double, long double);
# 326 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/math.h" 3
double pow(double, double);
__attribute__((nonreentrant)) float powf(float, float);
long double powl(long double, long double);



double remainder(double, double);
float remainderf(float, float);
long double remainderl(long double, long double);



double remquo(double, double, int *);
float remquof(float, float, int *);
long double remquol(long double, long double, int *);



double rint(double);
float rintf(float);
long double rintl(long double);



double round(double);
float roundf(float);
long double roundl(long double);



double scalbln(double, long);
float scalblnf(float, long);
long double scalblnl(long double, long);



double scalbn(double, int);
float scalbnf(float, int);
long double scalbnl(long double, int);



double sin(double);
float sinf(float);
long double sinl(long double);



double sinh(double);
float sinhf(float);
long double sinhl(long double);



double sqrt(double);
float sqrtf(float);
long double sqrtl(long double);



double tan(double);
float tanf(float);
long double tanl(long double);



double tanh(double);
float tanhf(float);
long double tanhl(long double);



double tgamma(double);
float tgammaf(float);
long double tgammal(long double);



double trunc(double);
float truncf(float);
long double truncl(long double);
# 431 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/math.h" 3
extern int signgam;

double j0(double);
double j1(double);
double jn(int, double);

double y0(double);
double y1(double);
double yn(int, double);
# 70 "main.c" 2
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/ctype.h" 1 3
# 10 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/ctype.h" 3
int isalnum(int);
int isalpha(int);
int isblank(int);
int iscntrl(int);
int isdigit(int);
int isgraph(int);
int islower(int);
int isprint(int);
int ispunct(int);
int isspace(int);
int isupper(int);
int isxdigit(int);
int tolower(int);
int toupper(int);
# 48 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/ctype.h" 3
# 1 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/bits/alltypes.h" 1 3
# 49 "C:\\Program Files\\Microchip\\xc8\\v3.00\\pic\\include\\c99/ctype.h" 2 3

int isalnum_l(int, locale_t);
int isalpha_l(int, locale_t);
int isblank_l(int, locale_t);
int iscntrl_l(int, locale_t);
int isdigit_l(int, locale_t);
int isgraph_l(int, locale_t);
int islower_l(int, locale_t);
int isprint_l(int, locale_t);
int ispunct_l(int, locale_t);
int isspace_l(int, locale_t);
int isupper_l(int, locale_t);
int isxdigit_l(int, locale_t);
int tolower_l(int, locale_t);
int toupper_l(int, locale_t);
# 71 "main.c" 2
# 89 "main.c"
double current = 0;
int voltage = 0;
long wattSeconds = 0;
double kwh = 0.0;
double costKWH = 0.0;
int time = 0;
short int screen = 0;
char default_password[5] = "1234";
short int system_locked = 0;
double rate = 0.639;
double prev_current = 0;
int led_on_time = 0;
int led_active = 0;


double convert_current(void);
int convert_voltage(void);
int calcPower(void);
void initSystem(void);
void __attribute__((picinterrupt(("")))) isr(void);
char read_keypad(void);
void clean_lcd(void);
void initial_screen(void);
void main_screen(void);
void config_rate_screen(void);
void read_rate(void);
void send_alert(double diff);
void detect_peak(void);
void request_password(void);
void standby_detector(void);
void alert_leds(void);
void buzzerON(void);
void config_screen(void);
void config_password_screen(void);
unsigned char EEPROM_Read(unsigned char address);
void EEPROM_Write(unsigned char address, unsigned char data);
void EEPROM_read_user(unsigned char address, unsigned char *password);
void EEPROM_write_user(unsigned char address, unsigned char *password);
void set_password(void);
void get_password(char *password);
int check_password(char *input);
void assign_default_password(void);
int has_passwords(void);


void initSystem(void) {


    TRISCbits.TRISC0 = 0;
    TRISCbits.TRISC1 = 0;
    TRISCbits.TRISC2 = 0;
    TRISCbits.TRISC6 = 0;


    TRISA = 0xFF;
    TRISB = 0xF0;
    TRISD = 0xF0;

    RBPU = 0;


    ADCON0 = 0b00001101;
    ADCON1 = 0b00001011;
    ADCON2 = 0b10010101;


    PORTDbits.RD0 = 1;
    PORTDbits.RD1 = 1;
    PORTDbits.RD2 = 1;
    PORTDbits.RD3 = 1;

    PORTCbits.RC6 = 0;

    OpenXLCD(0b00101100 & 0b00111000);

    assign_default_password();

    RCONbits.IPEN = 0;
    INTCONbits.GIE = 1;

    PIE1bits.ADIE = 1;


    T0CON = 0b10000111;



    TMR0H = 0xB3;
    TMR0L = 0xB5;

    INTCONbits.TMR0IF = 0;
}


void __attribute__((picinterrupt(("")))) isr(void) {

    if (PIR1bits.ADIF) {
        current = convert_current();
        voltage = convert_voltage();
        detect_peak();
        PIR1bits.ADIF = 0;
    }

    if (INTCONbits.TMR0IF) {

        if (!system_locked) {
            time = time + 1;
            wattSeconds += calcPower();
            kwh = wattSeconds / 3600000.0;
            costKWH = kwh * rate;


            standby_detector();


            alert_leds();
        }
        TMR0 = 46005;
        INTCONbits.TMR0IF = 0;
    }
}

double convert_current(void) {
    ADCON0bits.GO_DONE = 1;
    while (ADCON0bits.GO_DONE);
    double result = (((ADRESH << 8) + ADRESL) / 1023.0) * 40.0;
    return result;
}


int convert_voltage(void) {
    ADCON0bits.GO_DONE = 1;
    while (ADCON0bits.GO_DONE);
    double result = (((ADRESH * 256 + ADRESL) / 1023.0) * 5.0) + 123.0;
    return (result <= 123) ? 0 : (int)(result + 0.5);
}


int calcPower(void){
    return (int) current * voltage;
}

void standby_detector(void){
    int power = calcPower();
    if (power <= 200 && power > 1){
        PORTCbits.RC0 = 0;
        PORTCbits.RC1 = 1;
    } else if(power >= 200) {
        PORTCbits.RC0 = 1;
        PORTCbits.RC1 = 0;
    } else {
        PORTCbits.RC0 = 0;
        PORTCbits.RC1 = 0;
    }
}

void alert_leds(void){
    if (led_active) {
        if (led_on_time > 0) {
            led_on_time -= 1;
        } else {
            PORTDbits.RD0 = 1;
            PORTDbits.RD1 = 1;
            PORTDbits.RD2 = 1;
            PORTDbits.RD3 = 1;
            led_active = 0;
        }
    }
}


void send_alert(double diff) {
    if(diff >= 25){
        PORTDbits.RD0 = 0;
        PORTDbits.RD1 = 0;
        PORTDbits.RD2 = 0;
        PORTDbits.RD3 = 0;

        PORTCbits.RC6 = 0;
        ADCON0bits.ADON = 0;
        system_locked = 1;
        clean_lcd();
        WriteCmdXLCD(0x85);
        putsXLCD("System");
        WriteCmdXLCD(0xC5);
        putsXLCD("Locked");
        _delay((unsigned long)((1000)*(20000000/4000.0)));
        clean_lcd();
        WriteCmdXLCD(0x86);
        putsXLCD("Enter");
        WriteCmdXLCD(0xC4);
        putsXLCD("Password");
        _delay((unsigned long)((2000)*(20000000/4000.0)));
        request_password();
    } else if(diff < 25 && diff >= 15){
        PORTDbits.RD0 = 0;
        PORTDbits.RD1 = 0;
        PORTDbits.RD2 = 0;
        PORTDbits.RD3 = 1;
    } else if(diff < 15 && diff >= 10){
        PORTDbits.RD0 = 0;
        PORTDbits.RD1 = 0;
        PORTDbits.RD2 = 1;
        PORTDbits.RD3 = 1;
    } else {
        PORTDbits.RD0 = 0;
        PORTDbits.RD1 = 1;
        PORTDbits.RD2 = 1;
        PORTDbits.RD3 = 1;
    }

    led_on_time = 2;
    led_active = 1;
}


void detect_peak(void) {
    double current_diff = fabsf(current - prev_current);
    if (current_diff > 5.0) {
        send_alert(current_diff);
    }

    prev_current = current;
}


void buzzerON(void){
    PORTCbits.RC2 = 1;
    _delay((unsigned long)((5)*(20000000/4000.0)));
    PORTCbits.RC2 = 0;
}


void request_password(void) {
    char entered_password[4 + 1];

    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("Password:");
    WriteCmdXLCD(0xC0);

    while (1) {
        _delay((unsigned long)((300)*(20000000/4000.0)));

        get_password(entered_password);

        if (check_password(entered_password)) {
            system_locked = 0;
            PORTCbits.RC6 = 1;
            ADCON0bits.ADON = 1;
            clean_lcd();
            WriteCmdXLCD(0x80);
            putsXLCD("Access Granted");
            _delay((unsigned long)((2000)*(20000000/4000.0)));
            return;
        } else {
            clean_lcd();
            WriteCmdXLCD(0x80);
            putsXLCD("Incorrect Password");
            _delay((unsigned long)((2000)*(20000000/4000.0)));
            clean_lcd();
            WriteCmdXLCD(0x80);
            putsXLCD("Password:");
            _delay((unsigned long)((300)*(20000000/4000.0)));
            WriteCmdXLCD(0xC0);
        }
    }
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
                PORTBbits.RB0 = 0;
                PORTBbits.RB1 = 1;
                PORTBbits.RB2 = 1;
                PORTBbits.RB3 = 1;
                break;
            case 1:
                PORTBbits.RB0 = 1;
                PORTBbits.RB1 = 0;
                PORTBbits.RB2 = 1;
                PORTBbits.RB3 = 1;
                break;
            case 2:
                PORTBbits.RB0 = 1;
                PORTBbits.RB1 = 1;
                PORTBbits.RB2 = 0;
                PORTBbits.RB3 = 1;
                break;
            case 3:
                PORTBbits.RB0 = 1;
                PORTBbits.RB1 = 1;
                PORTBbits.RB2 = 1;
                PORTBbits.RB3 = 0;
                break;
        }

        if (PORTBbits.RB4 == 0) {
            _delay((unsigned long)((100)*(20000000/4000.0)));
            return keys[col][0];
        }
        if (PORTBbits.RB5 == 0) {
            _delay((unsigned long)((100)*(20000000/4000.0)));
            return keys[col][1];
        }
        if (PORTBbits.RB6 == 0) {
            _delay((unsigned long)((100)*(20000000/4000.0)));
            return keys[col][2];
        }
        if (PORTBbits.RB7 == 0) {
            _delay((unsigned long)((100)*(20000000/4000.0)));
            return keys[col][3];
        }
        col++;
    } while (col < 4);
    return '\0';
}


void clean_lcd(void) {
    WriteCmdXLCD(0x01);
    _delay((unsigned long)((5)*(20000000/4000.0)));
}


void initial_screen(void) {
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("1-Start");
    WriteCmdXLCD(0xC0);
    putsXLCD("2-Settings");
}


void main_screen(void) {
    PIE1bits.ADIE = 1;
    INTCONbits.TMR0IE = 1;
    PORTCbits.RC6 = 1;
    int display_state = 0;
    int last_display_time = 0;
    char key;

    while (1) {
        _delay((unsigned long)((80)*(20000000/4000.0)));
        current = convert_current();
        voltage = convert_voltage();
        char int_str[20];

        key = read_keypad();
        if (key == 'B') {
            return;
        }

        if (wattSeconds > 100000) {
            buzzerON();
        }


        if (time != last_display_time) {

            if (time % 4 == 0) {
                display_state = (display_state + 1) % 3;
                last_display_time = time;
            }
        }

        switch (display_state) {
            case 0:
                clean_lcd();
                WriteCmdXLCD(0x80);
                sprintf(int_str, "Current: %.2fA", current);
                putsXLCD(int_str);
                _delay((unsigned long)((5)*(20000000/4000.0)));
                WriteCmdXLCD(0xC0);
                sprintf(int_str, "Voltage: %dV", voltage);
                putsXLCD(int_str);
                break;
            case 1:
                clean_lcd();
                WriteCmdXLCD(0x80);
                sprintf(int_str, "Power: %dW", calcPower());
                putsXLCD(int_str);
                _delay((unsigned long)((5)*(20000000/4000.0)));
                WriteCmdXLCD(0xC0);
                sprintf(int_str, "kWh: %.4f", kwh);
                putsXLCD(int_str);
                break;
            case 2:
                clean_lcd();
                WriteCmdXLCD(0x80);
                sprintf(int_str, "Cost: R$%.4f", costKWH);
                putsXLCD(int_str);
                break;
        }
        PIE1bits.ADIE = 0;
    }
}


void rate_config_screen(void) {
    char key;
    char int_str[20];
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("(B)To return to");
    WriteCmdXLCD(0xC0);
    putsXLCD("the prior screen");
    _delay((unsigned long)((2000)*(20000000/4000.0)));
    while (1) {
        _delay((unsigned long)((100)*(20000000/4000.0)));
        clean_lcd();
        WriteCmdXLCD(0x80);
        putsXLCD("1-View Rate");
        WriteCmdXLCD(0xC0);
        putsXLCD("2-Change Rate");
        key = read_keypad();
        if (key != '\0') {
            if (key == 'B') {
                clean_lcd();
                WriteCmdXLCD(0x82);
                putsXLCD("Returning to");
                WriteCmdXLCD(0xC1);
                putsXLCD("previous screen");
                _delay((unsigned long)((2000)*(20000000/4000.0)));
                break;
            }
            if (key == '1') {
                clean_lcd();
                WriteCmdXLCD(0x80);
                sprintf(int_str, "Rate: %.4f", rate);
                putsXLCD(int_str);
                _delay((unsigned long)((2000)*(20000000/4000.0)));
            }
            if (key == '2') {
                clean_lcd();
                WriteCmdXLCD(0x80);
                putsXLCD("(A)Confirm");
                WriteCmdXLCD(0xC0);
                putsXLCD("(*)Enter \xa5");
                _delay((unsigned long)((2000)*(20000000/4000.0)));
                clean_lcd();
                read_rate();
                clean_lcd();
                WriteCmdXLCD(0x85);
                putsXLCD("Rate");
                WriteCmdXLCD(0xC3);
                putsXLCD("Adjusted");
                _delay((unsigned long)((1000)*(20000000/4000.0)));
            }
        }
    }
}

void read_rate(void) {
    char key;
    char rate_str[6] = {0};
    int index = 0;

    clean_lcd();
    WriteCmdXLCD(0x80);
    _delay((unsigned long)((20)*(20000000/4000.0)));
    putsXLCD("Enter the rate:");
    WriteCmdXLCD(0xC0);

    while (1) {
        _delay((unsigned long)((250)*(20000000/4000.0)));
        key = read_keypad();
        if (key != '\0') {
            if (key == 'A') {
                rate_str[index] = '\0';
                rate = strtof(rate_str,0);
                break;
            } else if ((((unsigned char)((key)-'0')) < 10) || key == '*') {
                if (index < 9) {
                    if (key == '*') {
                        rate_str[index++] = '.';
                    } else {
                        rate_str[index++] = key;
                    }
                    WriteDataXLCD(key == '*' ? '.' : key);
                }
            }
        }
    }
}


void config_screen(void) {
    char key;
    char int_str[20];
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("(B)To return to");
    WriteCmdXLCD(0xC0);
    putsXLCD("the main screen");
    _delay((unsigned long)((2000)*(20000000/4000.0)));
    while (1) {
        _delay((unsigned long)((100)*(20000000/4000.0)));
        clean_lcd();
        WriteCmdXLCD(0x80);
        putsXLCD("1-Password");
        WriteCmdXLCD(0xC0);
        putsXLCD("2-Rate");
        key = read_keypad();
        if (key != '\0') {
            if (key == 'B') {
                clean_lcd();
                WriteCmdXLCD(0x82);
                putsXLCD("Returning to");
                WriteCmdXLCD(0xC2);
                putsXLCD("main screen");
                _delay((unsigned long)((2000)*(20000000/4000.0)));
                break;
            }
            if (key == '1') {
                config_password_screen();
            }
            if (key == '2') {
                rate_config_screen();
            }
        }
    }
}


void config_password_screen(void) {
    char key;
    char int_str[20];
    char password[4 + 1];
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("(B)To return to");
    WriteCmdXLCD(0xC0);
    putsXLCD("the prior screen");
    _delay((unsigned long)((2000)*(20000000/4000.0)));
    while (1) {
        _delay((unsigned long)((300)*(20000000/4000.0)));
        clean_lcd();
        WriteCmdXLCD(0x80);
        putsXLCD("1-Test Password");
        WriteCmdXLCD(0xC0);
        putsXLCD("2-Change Password");
        key = read_keypad();
        if (key != '\0') {
            if (key == 'B') {
                clean_lcd();
                WriteCmdXLCD(0x82);
                putsXLCD("Returning to");
                WriteCmdXLCD(0xC1);
                putsXLCD("previous screen");
                _delay((unsigned long)((2000)*(20000000/4000.0)));
                break;
            }
            if (key == '1') {
                clean_lcd();
                WriteCmdXLCD(0x80);
                putsXLCD("Password:");
                WriteCmdXLCD(0xC0);

                get_password(password);

                if (check_password(password)) {
                    clean_lcd();
                    WriteCmdXLCD(0x80);
                    putsXLCD("Correct Password");
                    _delay((unsigned long)((2000)*(20000000/4000.0)));
                } else {
                    clean_lcd();
                    WriteCmdXLCD(0x80);
                    putsXLCD("Invalid Password");
                    _delay((unsigned long)((2000)*(20000000/4000.0)));
                }
            }
            if (key == '2') {
                set_password();
            }
        }
    }
}

void get_password(char *password) {
    char key;
    int index = 0;

    while (index < 4) {
        _delay((unsigned long)((200)*(20000000/4000.0)));
        key = read_keypad();

        if (key != '\0') {
            WriteCmdXLCD(0xC0 + index);
            WriteDataXLCD(key);
            _delay((unsigned long)((200)*(20000000/4000.0)));
            WriteCmdXLCD(0xC0 + index);
            WriteDataXLCD('*');
            password[index++] = key;
        }
    }
    password[index] = '\0';
}


int check_password(char *input) {
    unsigned char stored_password[4 + 1];
    EEPROM_read_user(0x00, stored_password);
# 713 "main.c"
    return strcmp(input, (const char*)stored_password) == 0;
}


void set_password(void) {
    unsigned char new_password[4 + 1];

    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("New Password:");
    WriteCmdXLCD(0xC0);

    get_password(new_password);

    EEPROM_write_user(0x00, new_password);
    clean_lcd();
    WriteCmdXLCD(0x80);
    putsXLCD("Password Changed");
    _delay((unsigned long)((2000)*(20000000/4000.0)));
}


void assign_default_password(void) {
    unsigned char default_password[4 + 1] = "1234";


    if (!has_passwords()) {
        EEPROM_write_user(0x00, default_password);
    }
}


int has_passwords(void) {
    unsigned char address = 0;

    while (address < 200) {
        if (EEPROM_Read(address) != 0xFF) {
            return 1;
        }
        address++;
    }

    return 0;
}


void EEPROM_write_user(unsigned char address, unsigned char *password) {
    for (unsigned char i = 0; i < 4 + 1; i++) {
        EEPROM_Write(address, password[i]);
        address++;
    }
}


void EEPROM_read_user(unsigned char address, unsigned char *password) {
    for (unsigned char i = 0; i < 4 + 1; i++) {
        password[i] = EEPROM_Read(address);
        address++;
    }
}


void EEPROM_Write(unsigned char address, unsigned char data) {
    while (WR) continue;
    EEADR = address;
    EEDATA = data;
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.WREN = 1;
    INTCONbits.GIE = 0;

    EECON2 = 0x55;
    EECON2 = 0xAA;
    EECON1bits.WR = 1;

    while (!PIR2bits.EEIF);
    INTCONbits.GIE = 1;
    PIR2bits.EEIF = 0;
    EECON1bits.WREN = 0;
}


unsigned char EEPROM_Read(unsigned char address) {
    EEADR = address;
    EECON1bits.EEPGD = 0;
    EECON1bits.CFGS = 0;
    EECON1bits.RD = 1;
    return(EEDATA);
}


void main(void) {

    initSystem();

    char key;

    while (1) {
        _delay((unsigned long)((80)*(20000000/4000.0)));
        current = convert_current();
        voltage = convert_voltage();
        key = read_keypad();
        initial_screen();
        if (key != '\0') {
            if (key == '1') {
                main_screen();
            }
            if (key == '2') {
                config_screen();
            }
        }
    }
}
