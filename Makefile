#NOTE(mike): targeting the 64 bit computer(linux)
ASSEMBLER= nasm
LINKER= ld
ASMFLAGS= -f elf64 
LINKFLAGS= --static
OBJECT_EXTENSION= .o
EXECUTABLE=sockets

SOURCE=Socket.asm
OBJECT=$(SOURCE:.asm=$(OBJECT_EXTENSION))



all: $(EXECUTABLE)

.PHONY: clean run

#NOTE(mike): route to assemble assembly source files to object files

$(OBJECT):$(SOURCE)
	$(ASSEMBLER) $(ASMFLAGS) $(SOURCE)


#NOTE(mike): rule to link object files into executable

$(EXECUTABLE):$(OBJECT)
	$(LINKER) $(LINKFLAGS) $(OBJECT)


clean:
	rm -f $(OBJECT) $(EXECUTABLE)

#NOTE(mike): run as executable
run: $(Executable)
	./$(EXECUTABLE)
