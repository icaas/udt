DIRS = src app
TARGETS = all clean install

$(TARGETS): %: $(patsubst %, %.%, $(DIRS))

$(foreach TGT, $(TARGETS), $(patsubst %, %.$(TGT), $(DIRS))):
	$(MAKE) -C $(subst ., , $@) 

install: 
	mv src/libudt.a  /usr/lib 
	mv src/libudt.so /usr/lib 
	mv src/udt       /usr/include 
