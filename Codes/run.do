vlib work

vlog {RTL design\instantiation.v}
vlog {RTL design\SPI.v}
vlog {RTL design\RAM.v}

vlog {testbench\tb_instantiation.sv}
vlog {testbench\tb_SPI.sv}
vlog {testbench\tb_ram.sv}
vlog {testbench\ram.dat}

vsim -voptargs=+acc work.tb_instantiation
add wave *
run -all
# quit -sim