ifeq ($(TARGET_OS),linux)

LIBSNDFILE_CPPFLAGS := $(shell pkg-config --cflags sndfile)
LIBSNDFILE_LDFLAGS := $(shell pkg-config --libs sndfile)

else

LIBSNDFILE_CPPFLAGS := \
    -I $(LIBSNDFILE_ROOT)/include/$(TARGET_OS)

LIBSNDFILE_A := $(OUT)/libsndfile.a
LIBSNDFILE_SRCS := \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/ALACBitUtilities.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/ag_dec.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/ag_enc.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/alac_decoder.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/alac_encoder.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/dp_dec.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/dp_enc.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/matrix_dec.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ALAC/matrix_enc.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/aiff.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/alac.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/alaw.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/au.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/audio_detect.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/avr.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/broadcast.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/caf.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/cart.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/chanmap.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/chunk.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/command.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/common.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/dither.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/double64.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/dwd.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/dwvw.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/file_io.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/flac.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/float32.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/g72x.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/gsm610.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/htk.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/id3.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ima_adpcm.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ima_oki_adpcm.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/interleave.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ircam.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/mat4.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/mat5.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/mpc2k.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ms_adpcm.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/nist.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ogg.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ogg_pcm.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ogg_speex.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ogg_vorbis.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/paf.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/pcm.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/pvf.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/raw.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/rf64.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/rx2.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/sd2.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/sds.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/sndfile.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/strings.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/svx.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/txw.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/ulaw.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/voc.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/vox_adpcm.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/w64.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/wav.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/wavlike.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/wve.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/xi.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/G72x/g721.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/G72x/g723_16.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/G72x/g723_24.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/G72x/g723_40.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/G72x/g72x.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/add.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/code.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/decode.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/gsm_create.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/gsm_decode.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/gsm_destroy.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/gsm_encode.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/gsm_option.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/long_term.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/lpc.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/preprocess.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/rpe.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/short_term.c \
	$(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src/GSM610/table.c

LIBSNDFILE_OBJS := $(LIBSNDFILE_SRCS:%=$(OUT)/%.o)

$(LIBSNDFILE_A): $(LIBSNDFILE_OBJS)
	$(AR) rcs $@ $+

LIBSNDFILE_PRIVATE_CPPFLAGS := \
	$(LIBSNDFILE_CPPFLAGS) \
	-I $(LIBSNDFILE_ROOT)/libsndfile-1.0.27/src \
	-I $(LIBSNDFILE_ROOT)/src/$(TARGET_OS) \
	-D HAVE_CONFIG_H \
	-w

$(LIBSNDFILE_OBJS): $(OUT)/%.c.o: %.c
	@$(MKDIR_P) $(dir $@)
	$(CC) $(CPPFLAGS) $(CFLAGS) $(LIBSNDFILE_PRIVATE_CPPFLAGS) -c $< -o $@

-include $(LIBSNDFILE_OBJS:.o=.d)

endif
