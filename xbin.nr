.TH XBIN local "24 Mar 1985"
.SH NAME
xbin - convert mailable format BinHex file into binary before downloading
to MacTerminal
.SH SYNOPSIS
.B xbin
[
.B -o
]
[
.B -v
]
[
.B -l
]
[[
.B -n
name
] file] ...
.SH DESCRIPTION
.I Xbin
converts a file created by BinHex (usually
named with one of the extensions ".hex", ".hcx", or ".hqx")
into three host-system files suitable for downloading to a
Macintosh via macput.
This program is designed for use with the 1.1 Release
version of MacTerminal, but includes a compatibility option for the
old -0.15X Almost-Alpha version.
.PP
The
.B -l
(list) option reads the header information and
prints out all the useful information there,
without creating any converted output files.
.PP
The
.B -v
(verbose) option prints a line for each file to be converted, indicating
the input and output file names.
.PP
The
.B -n
name
option allows the user to specify the name to use when creating
the host files and the eventual name to use on the mac.
This option must precede the input file name it is to affect.
.PP
If this option is not used, the names will be derived from
either the input file name (.hex or .hcx files),
or the name encoded in the header information (.hqx files).
Spaces and slashes will be converted to underscores, and
the .h?x extension will be deleted, if one is included in the
input file name.
.PP
A file name of "-" indicates that the input should be taken from stdin.
If no mac file name is specified, the default name (for .hex or .hcx files)
is "stdin".
.PP
Mail or news headers and signatures need not be manually
stripped -- xbin will ignore pretty much anything
it doesn't need.
.PP
.I xbin
creates three host-system files from each input file:
name.info,
name.data,
and
name.rsrc.
.PP
The
.B -o
flag specifies "old" (version -0.15X) MacTerminal compatibility mode.
.SH BUGS
The "LOCKED" bit in the flags cannot be set by xbin.
This is due to a bug in MacTerminal, which sets the flags
when the file is created, rather than after it has been
transfered, resulting in it not being able to write the
file.
.PP
Input files must contain a line starting with "(This file"
to detect the beginning of the BinHex information.
.SH SEE ALSO
macput(1), macget(1)
.SH AUTHOR
Dave Johnson, Brown 12/16/84;
CRC handling code by Darin Adler, TMQ Software 3/16/85
