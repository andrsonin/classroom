`timescale 1ns / 1ps
module tb_shifter();

    reg [07:00]  i_data;  
    reg	         i_valid; 
                                         
    wire         SGPIO_FPGA_DBG_CPU0_DATA;       
    wire         SGPIO_FPGA_DBG_RST_N;
    wire         SGPIO_FPGA_DBG_CLK_100k;     
                                          
    reg          en;                              
    reg          reset;                               
    reg          aresetn;                               
    reg          aclk; 
    
    reg [7:0]    shiftr_data;
    reg [4:0]    cnt;
    
    wire         f_cnt_end;

    assign f_cnt_end = (cnt == 8) ? (1'b1) : (1'b0);
    
    shifter 
    shifter_inst
    (
        .i_data                   (i_data                   ),
        .i_valid                  (i_valid                  ),                               
        .SGPIO_FPGA_DBG_CPU0_DATA (SGPIO_FPGA_DBG_CPU0_DATA ),
        .SGPIO_FPGA_DBG_RST_N     (SGPIO_FPGA_DBG_RST_N     ),
        .SGPIO_FPGA_DBG_CLK_100k  (SGPIO_FPGA_DBG_CLK_100k  ),                                     
        .en                       (en                       ),                              
        .reset                    (reset                    ),                               
        .aresetn                  (aresetn                  ),                               
        .aclk                     (aclk                     )
    );   
    
    initial begin 
        en = 1;
        aclk = 0;
        reset = 0;                              
        aresetn = 1;
        cnt = 'd0;
        i_valid = 0;
        i_data = 'd0;
        # 15;                          
        aresetn = 0;
        # 172;                          
        aresetn = 1;
    end
    
    always #10 begin
       aclk =~aclk;
    end
    
    always begin
        @(posedge aclk) begin 
            i_data  = $random ;
            i_valid = 1'b1;
        end
        @(negedge aclk)begin
            i_data = 'd0;
            i_valid = 1'b0;
        end
        #(40*200*20) ; 
    end

always@(posedge SGPIO_FPGA_DBG_CLK_100k, negedge SGPIO_FPGA_DBG_RST_N)begin
    if(!SGPIO_FPGA_DBG_RST_N)begin
        shiftr_data <= 'd0;
        cnt <= 'd0;
    end
    else begin
        shiftr_data[7:0] <= {shiftr_data[6:0], SGPIO_FPGA_DBG_CPU0_DATA};
        if(cnt < 8)begin
             cnt <= cnt + 'd1;
        end 
        else begin
             cnt <= 'd0;
        end
    end
end

initial begin
    repeat(5) @(posedge f_cnt_end)begin
        if(cnt == 'd8)begin
            $display("<<<< LED DATA = 0x%0h", shiftr_data);
        end 
    end
    $finish;
end

initial begin
    repeat(500) @(posedge i_valid)begin
        $display(">>>> INPUT DATA = 0x%0h", i_data);
    end
end

    // USER CODE START -->>

    // USER CODE STOP <<--

endmodule
