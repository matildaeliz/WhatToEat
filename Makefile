obj-m += hello_driver.o
all:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules cc=gcc-12

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean