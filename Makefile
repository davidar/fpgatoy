SILICE_DIR = Silice/BUILD/build-silice

$(SILICE_DIR)/silice:
	git submodule update --init --recursive
	mkdir -p $(SILICE_DIR) && cd $(SILICE_DIR) && cmake ../.. && make -j$(nproc)

%.si.v: $(SILICE_DIR)/silice %.si
	$^ --output $@ --export frame_display \
		--frameworks_dir Silice/frameworks/ \
		--framework Silice/frameworks/boards/bare/bare.v
