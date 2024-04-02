CROSS_CC := gcc
ifeq ($(CROSS_COMPILE),aarch64-none-linux-gnu-)
	CROSS_CC := /home/vboxuser/Desktop/Workarea_linux_course/gcc-arm-10.3-2021.07-x86_64-aarch64-none-linux-gnu/bin/aarch64-none-linux-gnu-gcc
else
	CROSS_CC := gcc
endif

writer: writer.c
	$(CROSS_CC) -Wall -o writer writer.c

clean:
	rm -f writer
	rm -f *.o
