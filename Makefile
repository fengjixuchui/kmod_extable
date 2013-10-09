NAME		:= extable

obj-m		:= $(NAME).o
obj-y		:= libudis86/

$(NAME)-y	:= module-init.o libudis86/built-in.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd)

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean
