#  xbin makefile for Microsoft C 6.0
#  - some modifications to compile for OS/2 as bound program

CL       = cl
DFLAGS   = -Od -Zi -DDEBUG       # options for debugging
OPTFLAGS = -Ox                   # options for production
OS2FLAGS = -Fb -Lp               # options for OS/2 usage
LFLAGS   = -link -E -NOD -PM:VIO # options for linker
CFLAGS   = -DMSDOS -AS $(OPTFLAGS)

xbin.exe:
      $(CL) $(CFLAGS) $(OS2FLAGS) xbin.c $(LFLAGS)
