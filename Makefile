BUILD_DIR := build
OUTPUT := $(BUILD_DIR)/game.gbc
OBJECT := $(BUILD_DIR)/game.o

ASM_SOURCES := $(shell find . -name '*.asm')
# ─────────────────────────────────────────────────────────────────────────────────────────────────

all: $(OUTPUT)

%.2bpp: %.png
	rgbgfx --colors embedded -o $@ $<

%.1bpp: %.png
	rgbgfx -d 1 -o $@ $<

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(OBJECT): game.asm $(ASM_SOURCES)
	mkdir -p $(BUILD_DIR)
	rgbasm -o $@ game.asm

$(OUTPUT): $(OBJECT)
	rgblink -n $(BUILD_DIR)/game.sym -m $(BUILD_DIR)/game.map -o $@ $<
	rgbfix -vCj -l 0x33 -k 69 -m 0x1B -r 0x2 -i BH6E -t HPCOSECRETS -p 255 $@
	
	@if [ ! -f $(BUILD_DIR)/baserom.gbc ]; then echo "⚠️  baserom.gbc not found in $(BUILD_DIR)/"; \
	elif md5sum $@ $(BUILD_DIR)/baserom.gbc | awk '{print $$1}' | uniq -d | grep . >/dev/null; then \
		echo "✔️  ROM matches baserom.gbc"; \
	else  echo "❌  ROM does not match baserom.gbc"; fi


clean:
	find $(BUILD_DIR) -type f ! -name 'baserom.gbc' -delete
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +

