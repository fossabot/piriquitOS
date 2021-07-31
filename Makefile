#ENV VARIABLES
GPPPARAMS = -m32 -g -c -Iinclude -fno-use-cxa-atexit -nostdlib -fno-builtin -fno-rtti -fno-exceptions -fno-leading-underscore -Wno-write-strings -fno-stack-protector -std=c++11 -Dsnprintf=snprintf -D_WIN32_WINNT=0x0501 -D_MSC_VER=1600
ASPARAMS = --32
LDPARAMS = -T

clean:
  @echo "deleting generated objects"
  rm ./**.o
  @echo "deleting generated binaries"
  rm ./**.bin
  @echo "deleting generated iso"
  rm ./**.iso
