
subdirs := bina

.PHONY: $(subdirs)

all: $(subdirs)
clean: $(subdirs)

$(subdirs):
	make -C $@ $(MAKECMDGOALS)
