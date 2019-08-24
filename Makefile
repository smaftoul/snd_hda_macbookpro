# for trace-points
CFLAGS_hda_controller.o := -I$(src)
CFLAGS_hda_intel.o := -I$(src)

snd-hda-codec-cirrus-objs :=	patch_cirrus.o

# codec drivers
obj-$(CONFIG_SND_HDA_CODEC_CIRRUS) += snd-hda-codec-cirrus.o
