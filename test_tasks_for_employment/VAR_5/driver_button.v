module driver_button
#(
    // USER CODE START -->>

    // USER CODE STOP <<--
    parameter P_BUTTON_ACTIVE_LEVEL
)
(
    // INPUT interface
    input  wire gpio_button , //! input button gpio // входной сигнал от тактовой кнопки
    // USER CODE START -->>
    // OUTPUT interface for self-filling, for event or other

    // USER CODE STOP <<--
    // OUTPUT interface
    output wire button_signal   ,  //! выходной сигнал от тактовой кнопки
    output wire button_filtered ,  //! выходной отфильтрованный сигнал от тактовой кнопки
    // SYSTEM                    
    input  wire tick    , //! timer signal :____-____-____-____-  // сигнал таймера, раз в N тактов становиться 1'b1 на один такт, активный уровень == 1'b1
    input  wire en      , //! enable logic                        // сигнал разрешения работы логики - ассинхронен, приходит в любой момент времени, активный уровень == 1'b1
    input  wire reset   , //! synchronous reset                   // синхронный сброс логики - синхронен с aclk, приходит в любой момент времени, активный уровень == 1'b1
    input  wire aresetn , //! asynchronous reset                  // ассинхронный сброс логики - ассинхронен, приходит в любой момент времени, активный уровень == 1'b0
    input  wire aclk      //! clock for logic                     // тактирование логики - 25MHz, синхронизаиця логики происходит по положительному перепаду
);

    // USER CODE START -->>

    // USER CODE STOP <<--

endmodule
