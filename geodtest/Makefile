#################################################################
## This Makefile Exported by MinGW Developer Studio
## Copyright (c) 2002-2004 by Parinya Thipchart
#################################################################

ifneq (,$(findstring Release, $(CFG)))
  override CFG = Release
else
  override CFG = Debug
endif

PROJECT = geodtest
CC = gcc.exe

ifeq ($(CFG),Debug)
  OBJ_DIR = ..\bin\Debug
  OUTPUT_DIR = ..\bin\Debug
  TARGET = geodtest.exe
  C_INCLUDE_DIRS = -I"../" 
  C_PREPROC = 
  CFLAGS = -pipe  -Wall -g2 -O0 
  RC_INCLUDE_DIRS = 
  RC_PREPROC = 
  RCFLAGS = 
  LIB_DIRS = -L"../bin/Debug" 
  LIBS = -lgeodesic 
  LDFLAGS = -pipe 
endif

ifeq ($(CFG),Release)
  OBJ_DIR = ..\bin\Release
  OUTPUT_DIR = ..\bin\Release
  TARGET = geodtest.exe
  C_INCLUDE_DIRS = -I"../"
  C_PREPROC = 
  CFLAGS = -pipe  -Wall -g0 -O2 
  RC_INCLUDE_DIRS = 
  RC_PREPROC = 
  RCFLAGS = 
  LIB_DIRS = -L"../bin/Release"
  LIBS = -lgeodesic 
  LDFLAGS = -pipe -s 
endif

ifeq ($(OS),Windows_NT)
  NULL =
else
  NULL = nul
endif

SRC_OBJS = \
  $(OBJ_DIR)/geodtest.o

define build_target
@echo Linking...
@$(CC) -o "$(OUTPUT_DIR)\$(TARGET)" $(SRC_OBJS) $(LIB_DIRS) $(LIBS) $(LDFLAGS)
endef

define compile_source
@echo Compiling $<
@$(CC) $(CFLAGS) $(C_PREPROC) $(C_INCLUDE_DIRS) -c "$<" -o "$@"
endef

.PHONY: print_header directories

$(TARGET): print_header directories $(SRC_OBJS)
	$(build_target)

.PHONY: clean cleanall

cleanall:
	@echo Deleting intermediate files for 'geodtest - $(CFG)'
	-@del $(OBJ_DIR)\*.o
	-@del "$(OUTPUT_DIR)\$(TARGET)"
	-@rmdir "$(OUTPUT_DIR)"

clean:
	@echo Deleting intermediate files for 'geodtest - $(CFG)'
	-@del $(OBJ_DIR)\*.o

print_header:
	@echo ----------Configuration: geodtest - $(CFG)----------

directories:
	-@if not exist "$(OUTPUT_DIR)\$(NULL)" mkdir "$(OUTPUT_DIR)"
	-@if not exist "$(OBJ_DIR)\$(NULL)" mkdir "$(OBJ_DIR)"

$(OBJ_DIR)/geodtest.o: geodtest.c

	$(compile_source)

