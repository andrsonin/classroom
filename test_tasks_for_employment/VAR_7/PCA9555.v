module PCA9555
#(
    // USER CODE START -->>

    // USER CODE STOP <<--
    parameter reg [3:0] P_I2C_ADDRESS_FIXED = 4'b0100  
)
(
    // INPUT CONFIGURE interface
    input  wire A0 , 
    input  wire A1 , 
    input  wire A2 , 
    // INPUT SYSTEM interface
    input  wire INT_N , 
    // INOUT interface
    inout  wire SCL ,
    inout  wire SDA ,
    // OUTPUT interface
    output wire IO0_0 , 
    output wire IO0_1 , 
    output wire IO0_2 , 
    output wire IO0_3 , 
    output wire IO0_4 , 
    output wire IO0_5 , 
    output wire IO0_6 , 
    output wire IO0_7 , 
    // OUTPUT interface
    output wire IO1_0 , 
    output wire IO1_1 , 
    output wire IO1_2 , 
    output wire IO1_3 , 
    output wire IO1_4 , 
    output wire IO1_5 , 
    output wire IO1_6 , 
    output wire IO1_7 , 
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
