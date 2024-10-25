/*
Техническое задание: необходимо отображать данные на светодиодах подключенных к микросхеме 74LV164D (см.рис).
1) Данные считываются с data interface когда сигнал i_valid == 1'b1
2) Если текущие данные не изменились относительно предыдущих, то не рекомендуется обновлять данные на 74LV164D
3) сигнал тактирования логики aclk == 20 МГц.
*/

module shifter 
#(
    // USER CODE START -->>

    // USER CODE STOP <<--
    parameter P_NUMBER_LEDS = 8
)
(
    // data interface
    input  wire [(P_NUMBER_LEDS -1):00] i_data                   , // данные отображения на LED's - синхронен с aclk, приходит в любой момент времени, считать истиным при i_valid == 1'b1
    input  wire	                        i_valid                  , // валиднось данных - синхронен с aclk, приходит в любой момент времени, активный уровень == 1'b1
    // 74LV164D interface
    output wire                         SGPIO_FPGA_DBG_CPU0_DATA , // DSA[1] & DSB[2] pins
    output wire                         SGPIO_FPGA_DBG_RST_N     , // MR_N[9] pin
    output wire                         SGPIO_FPGA_DBG_CLK_100k  , // CP[8] pin
    // system interface
    input  wire                         en                       , // сигнал разрешения работы логики - ассинхронен, приходит в любой момент времени, активный уровень == 1'b1
    input  wire                         reset                    , // синхронный сброс логики - синхронен с aclk, приходит в любой момент времени, активный уровень == 1'b1
    input  wire                         aresetn                  , // ассинхронный сброс логики - ассинхронен, приходит в любой момент времени, активный уровень == 1'b0
    input  wire                         aclk                       // тактирование логики - 20MHz
);

    // USER CODE START -->>

    // USER CODE STOP <<--

endmodule
