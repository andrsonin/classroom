module led_line_ctrl 
#(
    // USER CODE START -->>

    // USER CODE STOP <<--
    parameter P_NUMBER_LEDS = 8
)
(
    // data interface
    input  wire [(P_NUMBER_LEDS -1):00]  led_data_0   , // input data for led line 0
    input  wire [(P_NUMBER_LEDS -1):00]  led_data_1   , // input data for led line 1
    input  wire [(P_NUMBER_LEDS -1):00]  led_data_2   , // input data for led line 2
    // LED interface
    output wire [(P_NUMBER_LEDS -1):00]	LED_LINE_DATA , // connect for leds in line 0 and line 1 and line2
    output wire                         LED_LINE_EN_0 , // enable leds in line 0
    output wire                         LED_LINE_EN_1 , // enable leds in line 1
    output wire                         LED_LINE_EN_2 , // enable leds in line 2
    // system interface
    input  wire                         en            , // сигнал разрешения работы логики - ассинхронен, приходит в любой момент времени, активный уровень == 1'b1
    input  wire                         reset         , // синхронный сброс логики - синхронен с aclk, приходит в любой момент времени, активный уровень == 1'b1
    input  wire                         aresetn       , // ассинхронный сброс логики - ассинхронен, приходит в любой момент времени, активный уровень == 1'b0
    input  wire                         aclk            // тактирование логики - 20MHz

);

    // USER CODE START -->>

    // USER CODE STOP <<--

endmodule
