SILICE_DIR = Silice/BUILD/build-silice
SILICE_TOP = frame_display

$(SILICE_DIR)/silice:
	git submodule update --init --recursive
	mkdir -p $(SILICE_DIR) && cd $(SILICE_DIR) && cmake ../.. && make -j$(nproc)

%.si.v: $(SILICE_DIR)/silice %.si
	$^ --output $@ --export $(SILICE_TOP) \
		--frameworks_dir Silice/frameworks/ \
		--framework Silice/frameworks/boards/bare/bare.v \
		-P SD_DONE_SIGNED=0 \
		-P SD_DONE_WIDTH=1 \
		-P SD_DONE_INIT=0 \
		-P SD_DATA_OUT_SIGNED=0 \
		-P SD_DATA_OUT_WIDTH=32 \
		-P SD_DATA_OUT_INIT=0 \
		-P SD_IN_VALID_SIGNED=0 \
		-P SD_IN_VALID_WIDTH=1 \
		-P SD_IN_VALID_INIT=0 \
		-P SD_WMASK_SIGNED=0 \
		-P SD_WMASK_WIDTH=1 \
		-P SD_WMASK_INIT=0 \
		-P SD_DATA_IN_SIGNED=0 \
		-P SD_DATA_IN_WIDTH=32 \
		-P SD_DATA_IN_INIT=0 \
		-P SD_RW_SIGNED=0 \
		-P SD_RW_WIDTH=1 \
		-P SD_RW_INIT=1 \
		-P SD_ADDR_SIGNED=0 \
		-P SD_ADDR_WIDTH=32 \
		-P SD_ADDR_INIT=0 \
		$(if $(SIMULATION),-P SIMULATION=1)
	rm -f $**.log $@*.lpp

%.vhd.v: %.vhd
	ghdl -i --std=08 $^ && ghdl -m --std=08 $* && \
		yosys -g -m ghdl -p "ghdl --std=08 $*; write_verilog $@" && \
		rm -f $*.o $* $*.cf
