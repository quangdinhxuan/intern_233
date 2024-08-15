library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity led is
    Port (
        sys_clk : in STD_LOGIC;
        sys_rst_n : in STD_LOGIC;
        button : in STD_LOGIC;
        led : out STD_LOGIC
    );
end led;

architecture Behavioral of led is
    signal counter : unsigned(23 downto 0) := (others => '0');
    signal led_reg : STD_LOGIC := '1';
begin

    process(sys_clk, sys_rst_n)
    begin
        if sys_rst_n = '0' then
            counter <= (others => '0');
        elsif rising_edge(sys_clk) then
            if counter < 1350000 then
                counter <= counter + 1;
            else
                counter <= (others => '0');
            end if;
        end if;
    end process;

    process(sys_clk, sys_rst_n)
    begin
        if sys_rst_n = '0' or button = '1' then
            led_reg <= '1';
        elsif rising_edge(sys_clk) then
            if counter = 1350000 then
                led_reg <= not led_reg;
            end if;
        end if;

    end process;

    led <= led_reg;

end Behavioral;
