snd-hda-codec-cirrus-objs :=	patch_cirrus.o
obj-$(CONFIG_SND_HDA_CODEC_CIRRUS) += snd-hda-codec-cirrus.o

# debug build flags
#KBUILD_EXTRA_CFLAGS = "-DCONFIG_SND_DEBUG=1 -DMYSOUNDDEBUGFULL -DCONFIG_SND_HDA_RECONFIG=1 -Wno-unused-variable -Wno-unused-function"
# normal build flags
KBUILD_EXTRA_CFLAGS = "-DCONFIG_SND_HDA_RECONFIG=1 -Wno-unused-variable -Wno-unused-function"

all:
	make -C $(KDIR) CFLAGS_MODULE=$(KBUILD_EXTRA_CFLAGS) M=$(shell pwd) modules
clean:
	make -C $(KDIR) M=$(shell pwd) clean

install:
	$(MAKE) -C $(KDIR) M=$(PWD) modules_install
