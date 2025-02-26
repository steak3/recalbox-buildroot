################################################################################
#
# ffmpeg
#
################################################################################

FFMPEG_VERSION = 2.7.1
FFMPEG_SOURCE = ffmpeg-$(FFMPEG_VERSION).tar.bz2
FFMPEG_SITE = http://ffmpeg.org/releases
FFMPEG_INSTALL_STAGING = YES

FFMPEG_LICENSE = LGPLv2.1+, libjpeg license
FFMPEG_LICENSE_FILES = LICENSE.md COPYING.LGPLv2.1
ifeq ($(BR2_PACKAGE_FFMPEG_GPL),y)
FFMPEG_LICENSE += and GPLv2+
FFMPEG_LICENSE_FILES += COPYING.GPLv2
endif

FFMPEG_CONF_OPTS = \
	--prefix=/usr \
	--enable-avfilter \
	--disable-version3 \
	--enable-logging \
	--enable-optimizations \
	--disable-extra-warnings \
	--enable-avdevice \
	--enable-avcodec \
	--enable-avformat \
	--disable-x11grab \
	--enable-network \
	--disable-gray \
	--enable-swscale-alpha \
	--disable-small \
	--enable-dct \
	--enable-fft \
	--enable-mdct \
	--enable-rdft \
	--disable-crystalhd \
	--disable-vdpau \
	--disable-dxva2 \
	--enable-runtime-cpudetect \
	--disable-hardcoded-tables \
	--disable-memalign-hack \
	--enable-hwaccels \
	--disable-avisynth \
	--disable-frei0r \
	--disable-libopencore-amrnb \
	--disable-libopencore-amrwb \
	--disable-libopencv \
	--disable-libdc1394 \
	--disable-libfaac \
	--disable-libgsm \
	--disable-libmp3lame \
	--disable-libnut \
	--disable-libopenjpeg \
	--disable-librtmp \
	--disable-libschroedinger \
	--disable-libspeex \
	--disable-libtheora \
	--disable-libvo-aacenc \
	--disable-libvo-amrwbenc \
	--disable-symver \
	--disable-doc

FFMPEG_DEPENDENCIES += $(if $(BR2_PACKAGE_LIBICONV),libiconv) host-pkgconf

ifeq ($(BR2_PACKAGE_FFMPEG_GPL),y)
FFMPEG_CONF_OPTS += --enable-gpl
else
FFMPEG_CONF_OPTS += --disable-gpl
endif

ifeq ($(BR2_PACKAGE_FFMPEG_NONFREE),y)
FFMPEG_CONF_OPTS += --enable-nonfree
else
FFMPEG_CONF_OPTS += --disable-nonfree
endif

ifeq ($(BR2_PACKAGE_FFMPEG_FFMPEG),y)
FFMPEG_CONF_OPTS += --enable-ffmpeg
else
FFMPEG_CONF_OPTS += --disable-ffmpeg
endif

ifeq ($(BR2_PACKAGE_FFMPEG_FFPLAY),y)
FFMPEG_DEPENDENCIES += sdl
FFMPEG_CONF_OPTS += --enable-ffplay
FFMPEG_CONF_ENV += SDL_CONFIG=$(STAGING_DIR)/usr/bin/sdl-config
else
FFMPEG_CONF_OPTS += --disable-ffplay
endif

ifeq ($(BR2_PACKAGE_FFMPEG_FFSERVER),y)
FFMPEG_CONF_OPTS += --enable-ffserver
else
FFMPEG_CONF_OPTS += --disable-ffserver
endif

ifeq ($(BR2_PACKAGE_FFMPEG_AVRESAMPLE),y)
FFMPEG_CONF_OPTS += --enable-avresample
else
FFMPEG_CONF_OPTS += --disable-avresample
endif

ifeq ($(BR2_PACKAGE_FFMPEG_FFPROBE),y)
FFMPEG_CONF_OPTS += --enable-ffprobe
else
FFMPEG_CONF_OPTS += --disable-ffprobe
endif

ifeq ($(BR2_PACKAGE_FFMPEG_POSTPROC),y)
FFMPEG_CONF_OPTS += --enable-postproc
else
FFMPEG_CONF_OPTS += --disable-postproc
endif

ifeq ($(BR2_PACKAGE_FFMPEG_SWSCALE),y)
FFMPEG_CONF_OPTS += --enable-swscale
else
FFMPEG_CONF_OPTS += --disable-swscale
endif

ifneq ($(call qstrip,$(BR2_PACKAGE_FFMPEG_ENCODERS)),all)
FFMPEG_CONF_OPTS += --disable-encoders \
	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFMPEG_ENCODERS)),--enable-encoder=$(x))
endif

ifneq ($(call qstrip,$(BR2_PACKAGE_FFMPEG_DECODERS)),all)
FFMPEG_CONF_OPTS += --disable-decoders \
	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFMPEG_DECODERS)),--enable-decoder=$(x))
endif

ifneq ($(call qstrip,$(BR2_PACKAGE_FFMPEG_MUXERS)),all)
FFMPEG_CONF_OPTS += --disable-muxers \
	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFMPEG_MUXERS)),--enable-muxer=$(x))
endif

ifneq ($(call qstrip,$(BR2_PACKAGE_FFMPEG_DEMUXERS)),all)
FFMPEG_CONF_OPTS += --disable-demuxers \
	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFMPEG_DEMUXERS)),--enable-demuxer=$(x))
endif

ifneq ($(call qstrip,$(BR2_PACKAGE_FFMPEG_PARSERS)),all)
FFMPEG_CONF_OPTS += --disable-parsers \
	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFMPEG_PARSERS)),--enable-parser=$(x))
endif

ifneq ($(call qstrip,$(BR2_PACKAGE_FFMPEG_BSFS)),all)
FFMPEG_CONF_OPTS += --disable-bsfs \
	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFMPEG_BSFS)),--enable-bsfs=$(x))
endif

ifneq ($(call qstrip,$(BR2_PACKAGE_FFMPEG_PROTOCOLS)),all)
FFMPEG_CONF_OPTS += --disable-protocols \
	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFMPEG_PROTOCOLS)),--enable-protocol=$(x))
endif

ifneq ($(call qstrip,$(BR2_PACKAGE_FFMPEG_FILTERS)),all)
FFMPEG_CONF_OPTS += --disable-filters \
	$(foreach x,$(call qstrip,$(BR2_PACKAGE_FFMPEG_FILTERS)),--enable-filter=$(x))
endif

ifeq ($(BR2_PACKAGE_FFMPEG_INDEVS),y)
FFMPEG_CONF_OPTS += --enable-indevs
else
FFMPEG_CONF_OPTS += --disable-indevs
endif

ifeq ($(BR2_PACKAGE_FFMPEG_OUTDEVS),y)
FFMPEG_CONF_OPTS += --enable-outdevs
else
FFMPEG_CONF_OPTS += --disable-outdevs
endif

ifeq ($(BR2_TOOLCHAIN_HAS_THREADS),y)
FFMPEG_CONF_OPTS += --enable-pthreads
else
FFMPEG_CONF_OPTS += --disable-pthreads
endif

ifeq ($(BR2_PACKAGE_ZLIB),y)
FFMPEG_CONF_OPTS += --enable-zlib
FFMPEG_DEPENDENCIES += zlib
else
FFMPEG_CONF_OPTS += --disable-zlib
endif

ifeq ($(BR2_PACKAGE_BZIP2),y)
FFMPEG_CONF_OPTS += --enable-bzlib
FFMPEG_DEPENDENCIES += bzip2
else
FFMPEG_CONF_OPTS += --disable-bzlib
endif

ifeq ($(BR2_PACKAGE_OPENSSL),y)
# openssl isn't license compatible with GPL
ifeq ($(BR2_PACKAGE_FFMPEG_GPL)x$(BR2_PACKAGE_FFMPEG_NONFREE),yx)
FFMPEG_CONF_OPTS += --disable-openssl
else
FFMPEG_CONF_OPTS += --enable-openssl
FFMPEG_DEPENDENCIES += openssl
endif
else
FFMPEG_CONF_OPTS += --disable-openssl
endif

ifeq ($(BR2_PACKAGE_LIBVORBIS),y)
FFMPEG_DEPENDENCIES += libvorbis
FFMPEG_CONF_OPTS += \
	--enable-libvorbis \
	--enable-muxer=ogg \
	--enable-encoder=libvorbis
endif

ifeq ($(BR2_PACKAGE_LIBVA),y)
FFMPEG_CONF_OPTS += --enable-vaapi
FFMPEG_DEPENDENCIES += libva
else
FFMPEG_CONF_OPTS += --disable-vaapi
endif

ifeq ($(BR2_PACKAGE_OPUS),y)
FFMPEG_CONF_OPTS += --enable-libopus
FFMPEG_DEPENDENCIES += opus
else
FFMPEG_CONF_OPTS += --disable-libopus
endif

ifeq ($(BR2_PACKAGE_LIBVPX),y)
FFMPEG_CONF_OPTS += --enable-libvpx
FFMPEG_DEPENDENCIES += libvpx
else
FFMPEG_CONF_OPTS += --disable-libvpx
endif

# ffmpeg freetype support require fenv.h which is only
# available/working on glibc.
# The microblaze variant doesn't provide the needed exceptions
ifeq ($(BR2_PACKAGE_FREETYPE)$(BR2_TOOLCHAIN_USES_GLIBC)x$(BR2_microblaze),yyx)
FFMPEG_CONF_OPTS += --enable-libfreetype
FFMPEG_DEPENDENCIES += freetype
else
FFMPEG_CONF_OPTS += --disable-libfreetype
endif

ifeq ($(BR2_PACKAGE_FONTCONFIG),y)
FFMPEG_CONF_OPTS += --enable-fontconfig
FFMPEG_DEPENDENCIES += fontconfig
else
FFMPEG_CONF_OPTS += --disable-fontconfig
endif

ifeq ($(BR2_PACKAGE_X264)$(BR2_PACKAGE_FFMPEG_GPL),yy)
FFMPEG_CONF_OPTS += --enable-libx264
FFMPEG_DEPENDENCIES += x264
else
FFMPEG_CONF_OPTS += --disable-libx264
endif

ifeq ($(BR2_X86_CPU_HAS_MMX),y)
FFMPEG_CONF_OPTS += --enable-yasm
FFMPEG_DEPENDENCIES += host-yasm
else
ifeq ($(BR2_x86_i586),y)
# Needed to work around a bug with gcc 5.x:
# error: 'asm' operand has impossible constraints
FFMPEG_CONF_OPTS += --disable-inline-asm
endif
FFMPEG_CONF_OPTS += --disable-yasm
FFMPEG_CONF_OPTS += --disable-mmx
endif

ifeq ($(BR2_X86_CPU_HAS_SSE),y)
FFMPEG_CONF_OPTS += --enable-sse
else
FFMPEG_CONF_OPTS += --disable-sse
endif

ifeq ($(BR2_X86_CPU_HAS_SSE2),y)
FFMPEG_CONF_OPTS += --enable-sse2
else
FFMPEG_CONF_OPTS += --disable-sse2
endif

ifeq ($(BR2_X86_CPU_HAS_SSE3),y)
FFMPEG_CONF_OPTS += --enable-sse3
else
FFMPEG_CONF_OPTS += --disable-sse3
endif

ifeq ($(BR2_X86_CPU_HAS_SSSE3),y)
FFMPEG_CONF_OPTS += --enable-ssse3
else
FFMPEG_CONF_OPTS += --disable-ssse3
endif

ifeq ($(BR2_X86_CPU_HAS_SSE4),y)
FFMPEG_CONF_OPTS += --enable-sse4
else
FFMPEG_CONF_OPTS += --disable-sse4
endif

ifeq ($(BR2_X86_CPU_HAS_SSE42),y)
FFMPEG_CONF_OPTS += --enable-sse42
else
FFMPEG_CONF_OPTS += --disable-sse42
endif

ifeq ($(BR2_X86_CPU_HAS_AVX),y)
FFMPEG_CONF_OPTS += --enable-avx
else
FFMPEG_CONF_OPTS += --disable-avx
endif

ifeq ($(BR2_X86_CPU_HAS_AVX2),y)
FFMPEG_CONF_OPTS += --enable-avx2
else
FFMPEG_CONF_OPTS += --disable-avx2
endif

# Explicitly disable everything that doesn't match for ARM
# FFMPEG "autodetects" by compiling an extended instruction via AS
# This works on compilers that aren't built for generic by default
ifeq ($(BR2_ARM_CPU_ARMV4),y)
FFMPEG_CONF_OPTS += --disable-armv5te
endif
ifeq ($(BR2_ARM_CPU_ARMV6)$(BR2_ARM_CPU_ARMV7A),y)
FFMPEG_CONF_OPTS += --enable-armv6
else
FFMPEG_CONF_OPTS += --disable-armv6 --disable-armv6t2
endif
ifeq ($(BR2_ARM_CPU_HAS_VFPV2),y)
FFMPEG_CONF_OPTS += --enable-vfp
else
FFMPEG_CONF_OPTS += --disable-vfp
endif
ifeq ($(BR2_ARM_CPU_HAS_NEON),y)
FFMPEG_CONF_OPTS += --enable-neon
endif

ifeq ($(BR2_MIPS_SOFT_FLOAT),y)
FFMPEG_CONF_OPTS += \
	--disable-mipsfpu
else
FFMPEG_CONF_OPTS += \
	--enable-mipsfpu
endif

ifeq ($(BR2_mips_32r2),y)
FFMPEG_CONF_OPTS += \
	--enable-mips32r2
else
FFMPEG_CONF_OPTS += \
	--disable-mips32r2
endif

ifeq ($(BR2_mips_64r2),y)
FFMPEG_CONF_OPTS += \
	--enable-mipsdspr1 \
	--enable-mipsdspr2
else
FFMPEG_CONF_OPTS += \
	--disable-mipsdspr1 \
	--disable-mipsdspr2
endif

ifeq ($(BR2_POWERPC_CPU_HAS_ALTIVEC),y)
FFMPEG_CONF_OPTS += --enable-altivec
else
FFMPEG_CONF_OPTS += --disable-altivec
endif

ifeq ($(BR2_STATIC_LIBS),)
FFMPEG_CONF_OPTS += --enable-pic
else
FFMPEG_CONF_OPTS += --disable-pic
endif

FFMPEG_CONF_OPTS += $(call qstrip,$(BR2_PACKAGE_FFMPEG_EXTRACONF))

ifneq ($(call qstrip,$(BR2_GCC_TARGET_CPU)),)
FFMPEG_CONF_OPTS += --cpu=$(BR2_GCC_TARGET_CPU)
else ifneq ($(call qstrip,$(BR2_GCC_TARGET_ARCH)),)
FFMPEG_CONF_OPTS += --cpu=$(BR2_GCC_TARGET_ARCH)
endif

# Override FFMPEG_CONFIGURE_CMDS: FFmpeg does not support --target and others
define FFMPEG_CONFIGURE_CMDS
	(cd $(FFMPEG_SRCDIR) && rm -rf config.cache && \
	$(TARGET_CONFIGURE_OPTS) \
	$(TARGET_CONFIGURE_ARGS) \
	$(FFMPEG_CONF_ENV) \
	./configure \
		--enable-cross-compile \
		--cross-prefix=$(TARGET_CROSS) \
		--sysroot=$(STAGING_DIR) \
		--host-cc="$(HOSTCC)" \
		--arch=$(BR2_ARCH) \
		--target-os="linux" \
		--disable-stripping \
		--pkg-config="$(PKG_CONFIG_HOST_BINARY)" \
		$(SHARED_STATIC_LIBS_OPTS) \
		$(FFMPEG_CONF_OPTS) \
	)
endef

$(eval $(autotools-package))
