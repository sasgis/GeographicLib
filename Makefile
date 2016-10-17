#################################################################
## This Makefile Exported by MinGW Developer Studio
## Copyright (c) 2002-2004 by Parinya Thipchart
#################################################################

ifneq (,$(findstring Release, $(CFG)))
  override CFG = Release
else
  override CFG = Debug
endif

PROJECT = geodesic
CC = gcc.exe

ifeq ($(CFG),Debug)
  OBJ_DIR = bin\Debug
  OUTPUT_DIR = bin\Debug
  TARGET = geodesic.dll
  C_INCLUDE_DIRS = 
  C_PREPROC = 
  CFLAGS = -pipe -std=c99 -Wall -g2 -O0 
  RC_INCLUDE_DIRS = 
  RC_PREPROC = 
  RCFLAGS = 
  LIB_DIRS = 
  LIBS = 
  LDFLAGS = -pipe -static-libgcc -shared -Wl,--output-def,"$(OBJ_DIR)\geodesic.def",--out-implib,"$(OBJ_DIR)\libgeodesic.dll.a" 
endif

ifeq ($(CFG),Release)
  OBJ_DIR = bin\Release
  OUTPUT_DIR = bin\Release
  TARGET = geodesic.dll
  C_INCLUDE_DIRS = 
  C_PREPROC = 
  CFLAGS = -pipe -std=c99 -Wall -g0 -O2 
  RC_INCLUDE_DIRS = 
  RC_PREPROC = 
  RCFLAGS = 
  LIB_DIRS = 
  LIBS = 
  LDFLAGS = -pipe -static-libgcc -shared -Wl,--output-def,"$(OBJ_DIR)\geodesic.def",--out-implib,"$(OBJ_DIR)\libgeodesic.dll.a" -s 
endif

ifeq ($(OS),Windows_NT)
  NULL =
else
  NULL = nul
endif

SRC_OBJS = \
  $(OBJ_DIR)/geodesic.o geodesic.res

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
	@echo Deleting intermediate files for 'geodesic - $(CFG)'
	-@del $(OBJ_DIR)\*.o
	-@del "$(OUTPUT_DIR)\$(TARGET)"
	-@del "$(OBJ_DIR)\$(PROJECT).def"
	-@del "$(OBJ_DIR)\lib$(PROJECT).dll.a"
	-@rmdir "$(OUTPUT_DIR)"

clean:
	@echo Deleting intermediate files for 'geodesic - $(CFG)'
	-@del $(OBJ_DIR)\*.o

print_header:
	@echo ----------Configuration: geodesic - $(CFG)----------

directories:
	-@if not exist "$(OUTPUT_DIR)\$(NULL)" mkdir "$(OUTPUT_DIR)"
	-@if not exist "$(OBJ_DIR)\$(NULL)" mkdir "$(OBJ_DIR)"

$(OBJ_DIR)/geodesic.o: geodesic.c	\
geodesic.h
	$(compile_source)

