module led (
    input sys_clk,
    input sys_rst_n,
     button,
// reset input
    output   reg led        //R
);
reg [23:0] counter;
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n)
        counter <= 24'd0;
    else if (counter < 24'd2700_000)       // 0.5s delay
        counter <= counter + 1;
    else
        counter <= 24'd0;
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n||button==1)
        led <= 1'b1;

        
    else if (counter == 24'd2700_000)       // 0.5s delay
        led <= ~led;                         // TogglePin
end

endmodule
