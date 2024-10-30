module driver_sevenseg_dot
(
    // INPUT interface
    input  wire [7:0] data    , //! input byte or half byte // данные для отображения на семисегментном индикаторе
    // OUTPUT interface
    output wire       seg_a   , //! segment 'a'     // сегмент 'a'  семисегментного индикатора
    output wire       seg_b   , //! segment 'b'     // сегмент 'b'  семисегментного индикатора 
    output wire       seg_c   , //! segment 'c'     // сегмент 'c'  семисегментного индикатора 
    output wire       seg_d   , //! segment 'd'     // сегмент 'd'  семисегментного индикатора 
    output wire       seg_e   , //! segment 'e'     // сегмент 'e'  семисегментного индикатора 
    output wire       seg_f   , //! segment 'f'     // сегмент 'f'  семисегментного индикатора 
    output wire       seg_g   , //! segment 'g'     // сегмент 'g'  семисегментного индикатора 
    output wire       seg_dot , //! segment 'dp'    // сегмент 'dp' семисегментного индикатора
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
