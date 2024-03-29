SILICE_DIR = $(HOME)/git/Silice
SILICE = $(SILICE_DIR)/BUILD/build-silice/silice

%.si.v: %.si
	$(SILICE) $< --output $@ --export frame_display \
		--frameworks_dir $(SILICE_DIR)/frameworks/ \
		--framework $(SILICE_DIR)/frameworks/boards/bare/bare.v
