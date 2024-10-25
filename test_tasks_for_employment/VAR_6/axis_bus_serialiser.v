module axis_bus_serialiser
#(
    // USER CODE START -->>

    // USER CODE STOP <<--
    parameter P_BUS_LENGTH = 8
)
(
    // INPUT interface
    output wire                           s_axis_bus0_tready , 
    input  wire [P_BUS_LENGTH -1: 00]     s_axis_bus0_tdata  , 
    input  wire [(P_BUS_LENGTH / 8) -1:0] s_axis_bus0_tkeep  , 
    input  wire [7:0]                     s_axis_bus0_tuser  , 
    input  wire                           s_axis_bus0_tvalid , 
    input  wire                           s_axis_bus0_tlast  , 
    // INPUT interface
    output wire                           s_axis_bus1_tready , 
    input  wire [P_BUS_LENGTH -1: 00]     s_axis_bus1_tdata  , 
    input  wire [(P_BUS_LENGTH / 8) -1:0] s_axis_bus1_tkeep  , 
    input  wire [7:0]                     s_axis_bus1_tuser  , 
    input  wire                           s_axis_bus1_tvalid , 
    input  wire                           s_axis_bus1_tlast  , 
    // OUTPUT interface
    input  wire                           m_axis_tready , 
    output wire [P_BUS_LENGTH -1: 00]     m_axis_tdata  , 
    output wire [(P_BUS_LENGTH / 8) -1:0] m_axis_tkeep  , 
    output wire [7:0]                     m_axis_tuser  , 
    output wire                           m_axis_tvalid , 
    output wire                           m_axis_tlast  , 
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
