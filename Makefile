SILICE_DIR = Silice/BUILD/build-silice

$(SILICE_DIR)/silice:
	git submodule update --init --recursive
	mkdir -p $(SILICE_DIR) && cd $(SILICE_DIR) && cmake ../.. && make -j$(nproc)

%.si.v: $(SILICE_DIR)/silice %.si
	$^ --output $@ --export frame_display \
		--frameworks_dir Silice/frameworks/ \
		--framework Silice/frameworks/boards/bare/bare.v \
		$(if $(SIMULATION),-P SIMULATION=1)
	rm -f $**.log $@*.lpp

%.vhd.v: %.vhd
	ghdl -i --std=08 $^ && ghdl -m --std=08 $* && \
		yosys -g -m ghdl -p "ghdl --std=08 $*; write_verilog $@" && \
		rm -f $*.o $* $*.cf
