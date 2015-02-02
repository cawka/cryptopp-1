LOCAL_PATH := $(call my-dir)

CRYPTOPP_SRC_FILES := 3way.cpp adler32.cpp algebra.cpp algparam.cpp arc4.cpp asn.cpp authenc.cpp base32.cpp base64.cpp basecode.cpp bfinit.cpp blowfish.cpp blumshub.cpp camellia.cpp cast.cpp casts.cpp cbcmac.cpp ccm.cpp channels.cpp cmac.cpp cpu.cpp crc.cpp cryptlib_bds.cpp cryptlib.cpp default.cpp des.cpp dessp.cpp dh2.cpp dh.cpp dll.cpp dsa.cpp eax.cpp ec2n.cpp eccrypto.cpp ecp.cpp elgamal.cpp emsa2.cpp eprecomp.cpp esign.cpp files.cpp filters.cpp fips140.cpp fipsalgt.cpp gcm.cpp gf2_32.cpp gf256.cpp gf2n.cpp gfpcrypt.cpp gost.cpp gzip.cpp hex.cpp hmac.cpp hrtimer.cpp ida.cpp idea.cpp integer.cpp iterhash.cpp luc.cpp mars.cpp marss.cpp md2.cpp md4.cpp md5.cpp misc.cpp modes.cpp mqueue.cpp mqv.cpp nbtheory.cpp network.cpp oaep.cpp osrng.cpp panama.cpp pch.cpp pkcspad.cpp polynomi.cpp pssr.cpp pubkey.cpp queue.cpp rabin.cpp randpool.cpp rc2.cpp rc5.cpp rc6.cpp rdtables.cpp rijndael.cpp ripemd.cpp rng.cpp rsa.cpp rw.cpp safer.cpp salsa.cpp seal.cpp seed.cpp serpent.cpp sha3.cpp shacal2.cpp sha.cpp sharkbox.cpp shark.cpp simple.cpp skipjack.cpp socketft.cpp sosemanuk.cpp square.cpp squaretb.cpp strciphr.cpp tea.cpp tftables.cpp tiger.cpp tigertab.cpp trdlocal.cpp ttmac.cpp twofish.cpp vmac.cpp wait.cpp wake.cpp whrlpool.cpp winpipes.cpp xtr.cpp xtrcrypt.cpp zdeflate.cpp zinflate.cpp zlib.cpp

include $(CLEAR_VARS)
LOCAL_MODULE := cryptopp_shared
LOCAL_SRC_FILES := $(addprefix ../,$(CRYPTOPP_SRC_FILES))
LOCAL_CFLAGS := -DCRYPTOPP_DISABLE_ASM -DCRYPTOPP_DISABLE_SSSE3 -DCRYPTOPP_DISABLE_AESNI
LOCAL_EXPORT_CFLAGS := $(LOCAL_CFLAGS)
LOCAL_EXPORT_C_INCLUDES := $(LOCAL_PATH)/..
include $(BUILD_SHARED_LIBRARY)
