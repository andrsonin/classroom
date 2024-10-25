module driver_sevenseg_dot_bus
(
    // INPUT interface
    input  wire [7:0] data    , //! input byte // данные для отображения на семисегментных индикаторах
    // OUTPUT interface
    output wire       LED_POSTCODE_0    , 
    output wire       LED_POSTCODE_1    , 
    output wire       LED_POSTCODE_2    , 
    output wire       LED_POSTCODE_3    , 
    output wire       LED_POSTCODE_4    , 
    output wire       LED_POSTCODE_5    , 
    output wire       LED_POSTCODE_6    , 
    output wire       LED_POSTCODE_7    , 
    output wire       FM_SEVEN_SEG_SEL0 , 
    output wire       FM_SEVEN_SEG_SEL1 , 
    // SYSTEM                    
    input  wire tick    , //! timer signal :____-____-____-____-  // сигнал таймера, раз в N тактов становиться 1'b1 на один такт, активный уровень == 1'b1
    input  wire en      , //! enable logic                        // сигнал разрешения работы логики - ассинхронен, приходит в любой момент времени, активный уровень == 1'b1
    input  wire reset   , //! synchronous reset                   // синхронный сброс логики - синхронен с aclk, приходит в любой момент времени, активный уровень == 1'b1
    input  wire aresetn , //! asynchronous reset                  // ассинхронный сброс логики - ассинхронен, приходит в любой момент времени, активный уровень == 1'b0
    input  wire aclk      //! clock for logic                     // тактирование логики - 20MHz, синхронизаиця логики происходит по положительному перепаду
);

    // USER CODE START -->>

    // USER CODE STOP <<--

endmodule
