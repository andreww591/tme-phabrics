#! /bin/sh
# Generated from ../../../ic/sparc/sparc-vis-auto.m4 by GNU Autoconf 2.69.
## -------------------- ##
## M4sh Initialization. ##
## -------------------- ##

# Be more Bourne compatible
DUALCASE=1; export DUALCASE # for MKS sh
if test -n "${ZSH_VERSION+set}" && (emulate sh) >/dev/null 2>&1; then :
  emulate sh
  NULLCMD=:
  # Pre-4.2 versions of Zsh do word splitting on ${1+"$@"}, which
  # is contrary to our usage.  Disable this feature.
  alias -g '${1+"$@"}'='"$@"'
  setopt NO_GLOB_SUBST
else
  case `(set -o) 2>/dev/null` in #(
  *posix*) :
    set -o posix ;; #(
  *) :
     ;;
esac
fi


as_nl='
'
export as_nl
# Printing a long string crashes Solaris 7 /usr/bin/printf.
as_echo='\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\'
as_echo=$as_echo$as_echo$as_echo$as_echo$as_echo
as_echo=$as_echo$as_echo$as_echo$as_echo$as_echo$as_echo
# Prefer a ksh shell builtin over an external printf program on Solaris,
# but without wasting forks for bash or zsh.
if test -z "$BASH_VERSION$ZSH_VERSION" \
    && (test "X`print -r -- $as_echo`" = "X$as_echo") 2>/dev/null; then
  as_echo='print -r --'
  as_echo_n='print -rn --'
elif (test "X`printf %s $as_echo`" = "X$as_echo") 2>/dev/null; then
  as_echo='printf %s\n'
  as_echo_n='printf %s'
else
  if test "X`(/usr/ucb/echo -n -n $as_echo) 2>/dev/null`" = "X-n $as_echo"; then
    as_echo_body='eval /usr/ucb/echo -n "$1$as_nl"'
    as_echo_n='/usr/ucb/echo -n'
  else
    as_echo_body='eval expr "X$1" : "X\\(.*\\)"'
    as_echo_n_body='eval
      arg=$1;
      case $arg in #(
      *"$as_nl"*)
	expr "X$arg" : "X\\(.*\\)$as_nl";
	arg=`expr "X$arg" : ".*$as_nl\\(.*\\)"`;;
      esac;
      expr "X$arg" : "X\\(.*\\)" | tr -d "$as_nl"
    '
    export as_echo_n_body
    as_echo_n='sh -c $as_echo_n_body as_echo'
  fi
  export as_echo_body
  as_echo='sh -c $as_echo_body as_echo'
fi

# The user is always right.
if test "${PATH_SEPARATOR+set}" != set; then
  PATH_SEPARATOR=:
  (PATH='/bin;/bin'; FPATH=$PATH; sh -c :) >/dev/null 2>&1 && {
    (PATH='/bin:/bin'; FPATH=$PATH; sh -c :) >/dev/null 2>&1 ||
      PATH_SEPARATOR=';'
  }
fi


# IFS
# We need space, tab and new line, in precisely that order.  Quoting is
# there to prevent editors from complaining about space-tab.
# (If _AS_PATH_WALK were called with IFS unset, it would disable word
# splitting by setting IFS to empty value.)
IFS=" ""	$as_nl"

# Find who we are.  Look in the path if we contain no directory separator.
as_myself=
case $0 in #((
  *[\\/]* ) as_myself=$0 ;;
  *) as_save_IFS=$IFS; IFS=$PATH_SEPARATOR
for as_dir in $PATH
do
  IFS=$as_save_IFS
  test -z "$as_dir" && as_dir=.
    test -r "$as_dir/$0" && as_myself=$as_dir/$0 && break
  done
IFS=$as_save_IFS

     ;;
esac
# We did not find ourselves, most probably we were run as `sh COMMAND'
# in which case we are not to be found in the path.
if test "x$as_myself" = x; then
  as_myself=$0
fi
if test ! -f "$as_myself"; then
  $as_echo "$as_myself: error: cannot find myself; rerun with an absolute file name" >&2
  exit 1
fi

# Unset variables that we do not need and which cause bugs (e.g. in
# pre-3.0 UWIN ksh).  But do not cause bugs in bash 2.01; the "|| exit 1"
# suppresses any "Segmentation fault" message there.  '((' could
# trigger a bug in pdksh 5.2.14.
for as_var in BASH_ENV ENV MAIL MAILPATH
do eval test x\${$as_var+set} = xset \
  && ( (unset $as_var) || exit 1) >/dev/null 2>&1 && unset $as_var || :
done
PS1='$ '
PS2='> '
PS4='+ '

# NLS nuisances.
LC_ALL=C
export LC_ALL
LANGUAGE=C
export LANGUAGE

# CDPATH.
(unset CDPATH) >/dev/null 2>&1 && unset CDPATH

if test "x$CONFIG_SHELL" = x; then
  as_bourne_compatible="if test -n \"\${ZSH_VERSION+set}\" && (emulate sh) >/dev/null 2>&1; then :
  emulate sh
  NULLCMD=:
  # Pre-4.2 versions of Zsh do word splitting on \${1+\"\$@\"}, which
  # is contrary to our usage.  Disable this feature.
  alias -g '\${1+\"\$@\"}'='\"\$@\"'
  setopt NO_GLOB_SUBST
else
  case \`(set -o) 2>/dev/null\` in #(
  *posix*) :
    set -o posix ;; #(
  *) :
     ;;
esac
fi
"
  as_required="as_fn_return () { (exit \$1); }
as_fn_success () { as_fn_return 0; }
as_fn_failure () { as_fn_return 1; }
as_fn_ret_success () { return 0; }
as_fn_ret_failure () { return 1; }

exitcode=0
as_fn_success || { exitcode=1; echo as_fn_success failed.; }
as_fn_failure && { exitcode=1; echo as_fn_failure succeeded.; }
as_fn_ret_success || { exitcode=1; echo as_fn_ret_success failed.; }
as_fn_ret_failure && { exitcode=1; echo as_fn_ret_failure succeeded.; }
if ( set x; as_fn_ret_success y && test x = \"\$1\" ); then :

else
  exitcode=1; echo positional parameters were not saved.
fi
test x\$exitcode = x0 || exit 1
test -x / || exit 1"
  as_suggested=""
  if (eval "$as_required") 2>/dev/null; then :
  as_have_required=yes
else
  as_have_required=no
fi
  if test x$as_have_required = xyes && (eval "$as_suggested") 2>/dev/null; then :

else
  as_save_IFS=$IFS; IFS=$PATH_SEPARATOR
as_found=false
for as_dir in /bin$PATH_SEPARATOR/usr/bin$PATH_SEPARATOR$PATH
do
  IFS=$as_save_IFS
  test -z "$as_dir" && as_dir=.
  as_found=:
  case $as_dir in #(
	 /*)
	   for as_base in sh bash ksh sh5; do
	     # Try only shells that exist, to save several forks.
	     as_shell=$as_dir/$as_base
	     if { test -f "$as_shell" || test -f "$as_shell.exe"; } &&
		    { $as_echo "$as_bourne_compatible""$as_required" | as_run=a "$as_shell"; } 2>/dev/null; then :
  CONFIG_SHELL=$as_shell as_have_required=yes
		   break 2
fi
	   done;;
       esac
  as_found=false
done
$as_found || { if { test -f "$SHELL" || test -f "$SHELL.exe"; } &&
	      { $as_echo "$as_bourne_compatible""$as_required" | as_run=a "$SHELL"; } 2>/dev/null; then :
  CONFIG_SHELL=$SHELL as_have_required=yes
fi; }
IFS=$as_save_IFS


      if test "x$CONFIG_SHELL" != x; then :
  export CONFIG_SHELL
             # We cannot yet assume a decent shell, so we have to provide a
# neutralization value for shells without unset; and this also
# works around shells that cannot unset nonexistent variables.
# Preserve -v and -x to the replacement shell.
BASH_ENV=/dev/null
ENV=/dev/null
(unset BASH_ENV) >/dev/null 2>&1 && unset BASH_ENV ENV
case $- in # ((((
  *v*x* | *x*v* ) as_opts=-vx ;;
  *v* ) as_opts=-v ;;
  *x* ) as_opts=-x ;;
  * ) as_opts= ;;
esac
exec $CONFIG_SHELL $as_opts "$as_myself" ${1+"$@"}
# Admittedly, this is quite paranoid, since all the known shells bail
# out after a failed `exec'.
$as_echo "$0: could not re-execute with $CONFIG_SHELL" >&2
exit 255
fi

    if test x$as_have_required = xno; then :
  $as_echo "$0: This script requires a shell more modern than all"
  $as_echo "$0: the shells that I found on your system."
  if test x${ZSH_VERSION+set} = xset ; then
    $as_echo "$0: In particular, zsh $ZSH_VERSION has bugs and should"
    $as_echo "$0: be upgraded to zsh 4.3.4 or later."
  else
    $as_echo "$0: Please tell bug-autoconf@gnu.org about your system,
$0: including any error possibly output before this
$0: message. Then install a modern shell, or manually run
$0: the script under such a shell if you do have one."
  fi
  exit 1
fi
fi
fi
SHELL=${CONFIG_SHELL-/bin/sh}
export SHELL
# Unset more variables known to interfere with behavior of common tools.
CLICOLOR_FORCE= GREP_OPTIONS=
unset CLICOLOR_FORCE GREP_OPTIONS

## --------------------- ##
## M4sh Shell Functions. ##
## --------------------- ##
# as_fn_unset VAR
# ---------------
# Portably unset VAR.
as_fn_unset ()
{
  { eval $1=; unset $1;}
}
as_unset=as_fn_unset
## -------------------- ##
## Main body of script. ##
## -------------------- ##


# $Id: sparc-vis-auto.sh,v 1.4 2010/02/20 22:01:40 fredette Exp $

# ic/sparc-vis-auto.sh - automatically generates C code for many SPARC VIS
# emulation instructions:

#
# Copyright (c) 2009 Matt Fredette
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in the
#    documentation and/or other materials provided with the distribution.
# 3. All advertising materials mentioning features or use of this software
#    must display the following acknowledgement:
#      This product includes software developed by Matt Fredette.
# 4. The name of the author may not be used to endorse or promote products
#    derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE AUTHOR ``AS IS'' AND ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT,
# INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
# HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
# STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#

header=false

for option
do
    case $option in
    --header) header=true ;;
    esac
done

PROG=`basename $0`
cat <<EOF
/* automatically generated by $PROG, do not edit! */
_TME_RCSID("\$Id: sparc-vis-auto.sh,v 1.4 2010/02/20 22:01:40 fredette Exp $");
EOF

$as_echo ""
$as_echo "/* this handles VIS instructions: */"
$as_echo "void"
$as_echo "tme_sparc_vis(struct tme_sparc *ic)"
$as_echo "{"
$as_echo "  unsigned int opf;"
$as_echo "  unsigned int fpreg_rd_number_encoded;"
$as_echo "  const struct tme_float *fpreg_rs1;"
$as_echo "  const struct tme_float *fpreg_rs2;"
$as_echo "  unsigned int fpreg_rd_format;"
$as_echo "  unsigned int fpreg_rd_number;"
$as_echo "  struct tme_float fpreg_rd;"
$as_echo "  tme_uint64_t value_fpreg_rs1;"
$as_echo "  tme_uint64_t value_fpreg_rs2;"
$as_echo "  unsigned int compare_result;"
$as_echo "  unsigned int reg_rd;"
$as_echo "  unsigned int alignaddr_off;"
$as_echo ""
$as_echo "  TME_SPARC_INSN_FPU;"
$as_echo ""
$as_echo "  /* extract the opf field: */"
$as_echo "  opf = TME_FIELD_MASK_EXTRACTU(TME_SPARC_INSN, (0x1ff << 5));"
$as_echo ""
$as_echo "  /* extract the encoded rd: */"
$as_echo "  fpreg_rd_number_encoded = TME_FIELD_MASK_EXTRACTU(TME_SPARC_INSN, TME_SPARC_FORMAT3_MASK_RD);"

$as_echo ""
$as_echo "#ifdef _TME_SPARC_RECODE_VERIFY"
$as_echo "  /* clear the rd buffer: */"
$as_echo "  memset(&fpreg_rd, 0, sizeof(fpreg_rd));"
$as_echo "#endif /* _TME_SPARC_RECODE_VERIFY */"

$as_echo ""
$as_echo "  /* dispatch on the opf field: */"
$as_echo "  switch (opf) {"
$as_echo "#define _TME_SPARC_FPU_FORMAT_RS1(format) fpreg_rs1 = tme_sparc_fpu_fpreg_read(ic, TME_SPARC_FORMAT3_MASK_RS1, (format))"
$as_echo "#define _TME_SPARC_FPU_FORMAT_RS2(format) fpreg_rs2 = tme_sparc_fpu_fpreg_read(ic, TME_SPARC_FORMAT3_MASK_RS2, (format))"
$as_echo "#define _TME_SPARC_FPU_FORMAT_RD(format) do { fpreg_rd_format = (format) | TME_IEEE754_FPREG_FORMAT_BUILTIN; fpreg_rd_number = tme_sparc_fpu_fpreg_decode(ic, fpreg_rd_number_encoded, fpreg_rd_format); } while (/* CONSTCOND */ 0)"
$as_echo ""

# permute over the opf field:
#
opf_decimal=-1
while test ${opf_decimal} != 511; do
    opf_decimal=`expr \( ${opf_decimal} \) + 1`

    # make the binary version of the opf field:
    #
    bits=9
    opf=
    opf_shifted=${opf_decimal}
    while test ${bits} != 0; do
	bits=`expr ${bits} - 1`
	opf_shifted_next=`expr ${opf_shifted} / 2`
	opf_test=`expr ${opf_shifted_next} \* 2`
	if test ${opf_test} = ${opf_shifted}; then
	    opf="0${opf}"
	else
	    opf="1${opf}"
	fi
	opf_shifted=${opf_shifted_next}
    done

    # dispatch on opf:
    #
    default=false
    case "${opf}" in

    00010???0)
	compareopf=`$as_echo ${opf} | sed -e 's/^00010\(.*\)0$/\1/'`
	case "${compareopf}" in
	?1?) compareopsize=32 ;;
	?0?) compareopsize=16 ;;
	esac
	case "${compareopf}" in
	1?0) compareopname="GT" ; compareop=">" ;;
	0?0) compareopname="LE" ; compareop="<=" ;;
	0?1) compareopname="NE" ; compareop="!=" ;;
	1?1) compareopname="EQ" ; compareop="==" ;;
	esac
	$as_echo "  case ${opf_decimal}:  /* ${opf} FCMP${compareopname}${compareopsize}: */"
	$as_echo "    _TME_SPARC_FPU_FORMAT_RS1(TME_IEEE754_FPREG_FORMAT_DOUBLE);"
	$as_echo "    _TME_SPARC_FPU_FORMAT_RS2(TME_IEEE754_FPREG_FORMAT_DOUBLE);"
	$as_echo "    value_fpreg_rs1 = fpreg_rs1->tme_float_value_ieee754_double.tme_value64_uint;"
	$as_echo "    value_fpreg_rs2 = fpreg_rs2->tme_float_value_ieee754_double.tme_value64_uint;"
	$as_echo "    compare_result = 0;"
	compare_off=0
	while test ${compare_off} != 64; do
	    $as_echo "    if (((tme_uint${compareopsize}_t) value_fpreg_rs1)"
	    $as_echo "        ${compareop} (tme_uint${compareopsize}_t) value_fpreg_rs2) {"
	    $as_echo "      compare_result += (1 << (${compare_off} / ${compareopsize}));"
	    $as_echo "    }"
	    $as_echo "    value_fpreg_rs1 >>= ${compareopsize};"
	    $as_echo "    value_fpreg_rs2 >>= ${compareopsize};"
	    compare_off=`expr ${compare_off} + ${compareopsize}`
	done
	$as_echo "    reg_rd = TME_FIELD_MASK_EXTRACTU(TME_SPARC_INSN, TME_SPARC_FORMAT3_MASK_RD);"
	$as_echo "    TME_SPARC_REG_INDEX(ic, reg_rd);"
	$as_echo "    ic->tme_sparc_ireg_uint64(reg_rd) = compare_result;"
	$as_echo "    fpreg_rd_format = TME_IEEE754_FPREG_FORMAT_NULL;"
	$as_echo "    fpreg_rd_number = 0;"
	;;

    001001000)
	$as_echo "  case ${opf_decimal}:  /* ${opf} FALIGNDATA: */"
	$as_echo "    _TME_SPARC_FPU_FORMAT_RS1(TME_IEEE754_FPREG_FORMAT_DOUBLE);"
	$as_echo "    _TME_SPARC_FPU_FORMAT_RS2(TME_IEEE754_FPREG_FORMAT_DOUBLE);"
	$as_echo "    _TME_SPARC_FPU_FORMAT_RD(TME_IEEE754_FPREG_FORMAT_DOUBLE);"
	$as_echo "    fpreg_rd.tme_float_format = TME_FLOAT_FORMAT_IEEE754_DOUBLE;"
	$as_echo "    fpreg_rd.tme_float_value_ieee754_double = fpreg_rs1->tme_float_value_ieee754_double;"
	$as_echo "    alignaddr_off = TME_FIELD_MASK_EXTRACTU(ic->tme_sparc_vis_gsr, TME_SPARC_VIS_GSR_ALIGNADDR_OFF);"
	$as_echo "    if (alignaddr_off) {"
	$as_echo "      fpreg_rd.tme_float_value_ieee754_double.tme_value64_uint"
	$as_echo "        = ((fpreg_rd.tme_float_value_ieee754_double.tme_value64_uint"
	$as_echo "            << (8 * alignaddr_off))"
	$as_echo "           + (fpreg_rs2->tme_float_value_ieee754_double.tme_value64_uint"
	$as_echo "              >> (64 - (8 * alignaddr_off))));"
	$as_echo "    }"
	;;

    0011?????)
        logicalopf=`$as_echo ${opf} | sed -e 's/^0011\(.*\)[01]$/\1/'`
	logicalopname=
	logicalop=
        case "${logicalopf}" in
	0000)
	    logicalopname="ZERO"
	    logicalop="0"
	    ;;
	1111)
	    logicalopname="ONE"
	    logicalop="(0 - (type) 1)"
	    ;;
	1010)
	    logicalopname="SRC1"
	    logicalop="src1"
	    ;;
	1100)
	    logicalopname="SRC2"
	    logicalop="src2"
	    ;;
	0101)
	    logicalopname="NOT1"
	    logicalop="~src1"
	    ;;
	0011)
	    logicalopname="NOT2"
	    logicalop="~src2"
	    ;;
	1110)
	    logicalopname="OR"
	    logicalop="(src1 | src2)"
	    ;;
	0001)
	    logicalopname="NOR"
	    logicalop="~(src1 | src2)"
	    ;;
	1000)
	    logicalopname="AND"
	    logicalop="(src1 & src2)"
	    ;;
	0111)
	    logicalopname="NAND"
	    logicalop="~(src1 & src2)"
	    ;;
	0110)
	    logicalopname="XOR"
	    logicalop="(src1 ^ src2)"
	    ;;
	1001)
	    logicalopname="XNOR"
	    logicalop="~(src1 ^ src2)"
	    ;;
	1101)
	    logicalopname="ORNOT1"
	    logicalop="(src2 | ~src1)"
	    ;;
	1011)
	    logicalopname="ORNOT2"
	    logicalop="(src1 | ~src2)"
	    ;;
	0100)
	    logicalopname="ANDNOT1"
	    logicalop="(src2 & ~src1)"
	    ;;
	0010)
	    logicalopname="ANDNOT2"
	    logicalop="(src1 & ~src2)"
	    ;;
	*) $as_echo "$0 internal error: unknown VIS logical op ${logicalopf}" 1>&2 ; exit 1 ;;
	esac

	case "${opf}" in
	*1) capprecision="SINGLE"; size="32" ; value="single" ; logicalopname="${logicalopname}S" ;;
	*0) capprecision="DOUBLE"; size="64" ; value="double.tme_value64_uint" ;;
	esac

	$as_echo "  case ${opf_decimal}:  /* ${opf} (${logicalopf}) F${logicalopname}: */"

	logicalop=`$as_echo "${logicalop}" | sed -e "s/type/tme_uint${size}_t/g"`

	logicalop_next=`$as_echo "${logicalop}" | sed -e "s/src1/fpreg_rs1->tme_float_value_ieee754_${value}/"`
	if test "${logicalop_next}" != "${logicalop}"; then
		$as_echo "    _TME_SPARC_FPU_FORMAT_RS1(TME_IEEE754_FPREG_FORMAT_${capprecision});"
		logicalop="${logicalop_next}"
	fi

	logicalop_next=`$as_echo "${logicalop}" | sed -e "s/src2/fpreg_rs2->tme_float_value_ieee754_${value}/"`
	if test "${logicalop_next}" != "${logicalop}"; then
		$as_echo "    _TME_SPARC_FPU_FORMAT_RS2(TME_IEEE754_FPREG_FORMAT_${capprecision});"
		logicalop="${logicalop_next}"
	fi

	$as_echo "    _TME_SPARC_FPU_FORMAT_RD(TME_IEEE754_FPREG_FORMAT_${capprecision});"
	$as_echo "    _TME_SPARC_FPU_BEGIN;"
	$as_echo "    fpreg_rd.tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision};"
	$as_echo "    fpreg_rd.tme_float_value_ieee754_${value} = ${logicalop};"
	;;

    *) default=true ;;
    esac
    if $default; then :; else $as_echo "    break;"; $as_echo ""; fi
done
$as_echo "  default:"
$as_echo "    _TME_SPARC_FPU_UNIMPL;"
$as_echo "    fpreg_rd_format = TME_IEEE754_FPREG_FORMAT_NULL;"
$as_echo "    fpreg_rd_number = 0;"
$as_echo "    break;"
$as_echo ""
$as_echo "#undef _TME_SPARC_FPU_FORMAT_RS1"
$as_echo "#undef _TME_SPARC_FPU_FORMAT_RS2"
$as_echo "#undef _TME_SPARC_FPU_FORMAT_RD"
$as_echo "  }"

$as_echo ""
$as_echo "  /* store any destination: */"
$as_echo "  if (fpreg_rd_format != TME_IEEE754_FPREG_FORMAT_NULL) {"
$as_echo "    tme_sparc_fpu_fpreg_format(ic, fpreg_rd_number, fpreg_rd_format);"
$as_echo "    ic->tme_sparc_fpu_fpregs[fpreg_rd_number] = fpreg_rd;"
$as_echo "    TME_SPARC_FPU_DIRTY(ic, fpreg_rd_number);"
$as_echo "  }"

$as_echo ""
$as_echo "}"

# permute over architecture:
#
for arch in 64; do

    # permute over partial store word size:
    #
    for size in 64; do

	case "${arch}:${size}" in
	*:64) insn="d" ; format="DOUBLE" ; value="double.tme_value64_uint" ;;
	*) $as_echo "$0 internal error: unknown architecture PST word size ${arch}:${size}" 1>&2 ; exit 1 ;;
	esac

	cat <<EOF

/* the sparc${arch} cycle handler for st${insn}fa ASI_PST*: */
static void
_tme_sparc${arch}_vis_ls_cycle_pst${insn}(struct tme_sparc *ic, struct tme_sparc_ls *ls)
{
  unsigned int reg_rs2;
  tme_uint32_t mask_raw;
  unsigned int asi;
  tme_uint32_t mask_0_31;
  tme_uint32_t mask_32_63;
  tme_uint${size}_t mask;
  const struct tme_float *fpreg_rd;
  tme_uint${size}_t value_written;
  const struct tme_sparc_tlb *tlb;
  tme_uint${arch}_t address;
  tme_shared tme_uint8_t *emulator_off;
  tme_shared tme_uint${size}_t *memory;
  tme_uint${size}_t value_read;
  tme_uint${size}_t value_cmp;

  /* decode rs2: */
  reg_rs2 = TME_FIELD_MASK_EXTRACTU(ic->_tme_sparc_insn, TME_SPARC_FORMAT3_MASK_RS2);
  TME_SPARC_REG_INDEX(ic, reg_rs2);

  /* get the raw mask: */
  mask_raw = ic->tme_sparc_ireg_uint${arch}(reg_rs2);

  /* get the ASI: */
  asi
    = (TME_SPARC_ASI_MASK_WHICH(ls->tme_sparc_ls_asi_mask)
       & ~(TME_SPARC${arch}_ASI_FLAG_SECONDARY
	   | TME_SPARC${arch}_ASI_FLAG_LITTLE));

  /* assume that this is ASI_PST32*: */
  mask_0_31 = 0 - (mask_raw & TME_BIT(0));
  mask_raw >>= 1;
  mask_32_63 = 0 - (mask_raw & TME_BIT(0));
  mask_raw >>= 1;

  /* if this is ASI_PST16*: */
  if (asi == TME_SPARC_VIS_ASI_PST16) {

    /* convert the ASI_PST32* mask into bits 0..31 of the ASI_PST16* mask: */
    mask_0_31
      = ((mask_0_31 & (((tme_uint32_t) 0xffff) << 0))
	 + (mask_32_63 & (((tme_uint32_t) 0xffff) << 16)));

    /* make bits 32..63 of the ASI_PST16* mask: */
    mask_32_63
      = (((0 - (mask_raw & TME_BIT(0))) & (((tme_uint32_t) 0xffff) << 0))
	 + ((0 - (mask_raw & TME_BIT(1))) & (((tme_uint32_t) 0xffff) << 16)));
  }

  /* otherwise, if this is ASI_PST8*: */
  else if (asi == TME_SPARC_VIS_ASI_PST8) {

    /* convert the ASI_PST32* mask into bits 0..15 of the ASI_PST8*
       mask, and make bits 16..31: */
    mask_0_31
      = ((mask_0_31 & (((tme_uint32_t) 0xff) << 0))
	 + (mask_32_63 & (((tme_uint32_t) 0xff) << 8))
	 + ((0 - (mask_raw & TME_BIT(0))) & (((tme_uint32_t) 0xff) << 16))
	 + ((0 - (mask_raw & TME_BIT(1))) & (((tme_uint32_t) 0xff) << 24)));

    /* make bits 32..63 of the ASI_PST8* mask: */
    mask_raw >>= 2;
    mask_32_63
      = (((0 - (mask_raw & TME_BIT(0))) & (((tme_uint32_t) 0xff) << 0))
	 + ((0 - (mask_raw & TME_BIT(1))) & (((tme_uint32_t) 0xff) << 8))
	 + ((0 - (mask_raw & TME_BIT(2))) & (((tme_uint32_t) 0xff) << 16))
	 + ((0 - (mask_raw & TME_BIT(3))) & (((tme_uint32_t) 0xff) << 24)));
  }

  /* make the full mask: */
  mask = 0;
  mask |= (((tme_uint64_t) mask_32_63) << 32);
  mask |= mask_0_31;

  /* get the value to store from the double-precision fp register: */
  fpreg_rd = tme_sparc_fpu_fpreg_read(ic, TME_SPARC_FORMAT3_MASK_RD, TME_IEEE754_FPREG_FORMAT_${format});
  value_written = fpreg_rd->tme_float_value_ieee754_${value};

  /* get the TLB entry: */
  tlb = ls->tme_sparc_ls_tlb;

  /* swap the mask and the value to store: */
  if (ls->tme_sparc_ls_lsinfo & TME_SPARC_LSINFO_ENDIAN_LITTLE) {
    value_written = tme_htole_u${size}(value_written);
    mask = tme_htole_u${size}(mask);
  }
  else {
    value_written = tme_htobe_u${size}(value_written);
    mask = tme_htobe_u${size}(mask);
  }

  /* get the current address: */
  address = ls->tme_sparc_ls_address${arch};

  /* if this is the first transfer, and the TLB entry allows fast
     transfer of all of the addresses: */
  emulator_off = tlb->tme_sparc_tlb_emulator_off_write;
  if (__tme_predict_true(ls->tme_sparc_ls_state == 0
			 && ((tme_bus_addr${arch}_t) tlb->tme_sparc_tlb_addr_last) >= (address + sizeof(tme_uint${size}_t) - 1)
			 && emulator_off != TME_EMULATOR_OFF_UNDEF
			 && emulator_off == tlb->tme_sparc_tlb_emulator_off_read)) {

    /* make the pointer to the memory to store: */
    memory = (tme_shared tme_uint${size}_t *) (emulator_off + address);

    /* loop until we can do the atomic partial store: */
    value_read = tme_memory_bus_read${size}(memory,
				       tlb->tme_sparc_tlb_bus_rwlock,
				       sizeof(tme_uint${size}_t),
				       sizeof(tme_uint${arch}_t));
    do {

      /* make the value to write: */
      value_written
	= ((value_written & mask)
	   + (value_read & ~mask));

      /* try an atomic compare-and-exchange: */
      value_cmp = value_read;
      value_read
	= tme_memory_atomic_cx${size}(memory,
				 value_cmp,
				 value_written,
				 tlb->tme_sparc_tlb_bus_rwlock,
				 sizeof(tme_uint${size}_t));

      /* loop while the atomic compare-and-exchange failed: */
    } while (value_read != value_cmp);

    /* we finished this transfer: */
    ls->tme_sparc_ls_size = 0;
    return;
  }

  /* otherwise, we have to do a slow transfer: */
  ls->tme_sparc_ls_buffer_offset = 0;
  /* XXX WRITEME: */
  abort();
}
EOF
    done

    cat <<EOF

/* the sparc${arch} ASI handler for ASI_PST*: */
void
tme_sparc${arch}_vis_ls_asi_pst(struct tme_sparc *ic, struct tme_sparc_ls *ls)
{
  tme_uint32_t insn;
  unsigned int reg_rs1;
  tme_uint${arch}_t address_first;

  /* NB: this checks for various traps in priority order: */

  /* the only faults that may have been set so far are an alignment
     fault, which is probably wrong because the address checked was
     (rs1 + rs2), instead of just rs1, and any ldd/std rd-odd fault.
     we will override both faults: */
  assert ((ls->tme_sparc_ls_faults
	   | TME_SPARC_LS_FAULT_ADDRESS_NOT_ALIGNED
	   | TME_SPARC_LS_FAULT_LDD_STD_RD_ODD)
	  == (TME_SPARC_LS_FAULT_ADDRESS_NOT_ALIGNED
	      | TME_SPARC_LS_FAULT_LDD_STD_RD_ODD));

  /* we need to do the complete transfer: */
  ls->tme_sparc_ls_faults = TME_SPARC_LS_FAULT_NONE;
  ls->tme_sparc_ls_lsinfo |= TME_SPARC_LSINFO_SLOW_CYCLES;
  ls->tme_sparc_ls_state = 0;

  /* get the instruction: */
  insn = ic->_tme_sparc_insn;

  /* NB: the exception for a non-stdfa opcode appears to be explicitly
     prioritized above an illegal_instruction trap for an immediate
     instruction: */

  /* if this is an stdfa: */
  if (__tme_predict_true((insn
			  & (0x3f << 19))
			 == (0x37 << 19))) {

    /* set the slow cycle function: */
    assert (ls->tme_sparc_ls_size == sizeof(tme_uint64_t));
    ls->tme_sparc_ls_cycle = _tme_sparc${arch}_vis_ls_cycle_pstd;
  }

  /* any other instruction is illegal: */
  else {
    ls->tme_sparc_ls_faults = ic->tme_sparc_vis_ls_fault_illegal;
    return;
  }

  /* immediate instruction forms are illegal: */
  if (__tme_predict_false(insn & TME_BIT(13))) {
    tme_sparc_tlb_unbusy(ls->tme_sparc_ls_tlb);
    TME_SPARC_INSN_ILL(ic);
  }

  /* the stdfa instruction handler must have already checked that the
     FPU is enabled: */
  assert (!TME_SPARC_FPU_IS_DISABLED(ic));

  /* decode rs1: */
  reg_rs1 = TME_FIELD_MASK_EXTRACTU(insn, TME_SPARC_FORMAT3_MASK_RS1);
  TME_SPARC_REG_INDEX(ic, reg_rs1);

  /* get the address: */
  address_first = ic->tme_sparc_ireg_uint${arch}(reg_rs1);
  ls->tme_sparc_ls_address${arch} = address_first;

  /* the address must be aligned: */
  if (__tme_predict_false((((tme_uint32_t) address_first)
			   & (ls->tme_sparc_ls_size - 1)) != 0)) {
    ls->tme_sparc_ls_faults = TME_SPARC_LS_FAULT_ADDRESS_NOT_ALIGNED;
    return;
  }

  /* the stdfa instruction handler must have already checked that the
     FPU mode is not exception_pending: */
  assert (ic->tme_sparc_fpu_mode != TME_SPARC_FPU_MODE_EXCEPTION_PENDING);
}

/* the sparc${arch} cycle handler for lddfa and stdfa ASI_FL*: */
static void
_tme_sparc${arch}_vis_ls_cycle_fld(struct tme_sparc *ic, struct tme_sparc_ls *ls)
{
  tme_uint64_t value;
  unsigned int buffer_offset;

  /* if this is an stdfa: */
  if (ic->_tme_sparc_insn & (4 << 19)) {

    /* the actual store cycles will be done directly: */
    ls->tme_sparc_ls_cycle = tme_sparc${arch}_store;

    /* initialize the memory buffer with the value to store: */
    value = *ls->tme_sparc_ls_rd${arch};
  }

  /* otherwise, this is an lddfa: */
  else {

    /* the actual load cycles will be done directly: */
    ls->tme_sparc_ls_cycle = tme_sparc${arch}_load;

    /* initialize the memory buffer with zero: */
    value = 0;
  }

  /* initialize the memory buffer: */
  if (ls->tme_sparc_ls_lsinfo & TME_SPARC_LSINFO_ENDIAN_LITTLE) {
    value = tme_htole_u64(value);
    buffer_offset = 0;
  }
  else {
    value = tme_htobe_u64(value);
    buffer_offset = sizeof(value) - ls->tme_sparc_ls_size;
  }
  ic->tme_sparc_memory_buffer.tme_sparc_memory_buffer64s[0] = value;
  ls->tme_sparc_ls_buffer_offset = buffer_offset;

  /* do the (first) actual cycle: */
  (*ls->tme_sparc_ls_cycle)(ic, ls);
}

/* the sparc${arch} ASI handler for ASI_FL*: */
void
tme_sparc${arch}_vis_ls_asi_fl(struct tme_sparc *ic, struct tme_sparc_ls *ls)
{
  tme_uint32_t insn;

  /* NB: this checks for various traps in priority order: */

  /* the only faults that may have been set so far are an alignment
     fault, which is probably wrong because the size used for the
     alignment check was wrong, and any ldd/std rd-odd fault.  we will
     override both faults: */
  assert ((ls->tme_sparc_ls_faults
	   | TME_SPARC_LS_FAULT_ADDRESS_NOT_ALIGNED
	   | TME_SPARC_LS_FAULT_LDD_STD_RD_ODD)
	  == (TME_SPARC_LS_FAULT_ADDRESS_NOT_ALIGNED
	      | TME_SPARC_LS_FAULT_LDD_STD_RD_ODD));

  /* get the instruction: */
  insn = ic->_tme_sparc_insn;

  /* we need to do the complete transfer: */
  ls->tme_sparc_ls_faults = TME_SPARC_LS_FAULT_NONE;
  ls->tme_sparc_ls_lsinfo |= TME_SPARC_LSINFO_SLOW_CYCLES;
  ls->tme_sparc_ls_state = 0;

  /* set the cycle size: */
#if (TME_SPARC_VIS_ASI_FL16 & (TME_SPARC_VIS_ASI_FL16 - 1)) != TME_SPARC_VIS_ASI_FL8
#error "TME_SPARC_VIS_ASI_FL values changed"
#endif
  ls->tme_sparc_ls_size
    = (sizeof(tme_uint8_t)
       + ((TME_SPARC_ASI_MASK_WHICH(ls->tme_sparc_ls_asi_mask)
	   / (TME_SPARC_VIS_ASI_FL16
	      ^ TME_SPARC_VIS_ASI_FL8))
	  & 1));

  /* if this is an stdfa or an lddfa: */
  if (__tme_predict_true((insn
			  & (0x3b << 19))
			 == (0x33 << 19))) {

    /* set the slow cycle function: */
    ls->tme_sparc_ls_cycle = _tme_sparc${arch}_vis_ls_cycle_fld;

    /* the stdfa or lddfa instruction handler must have already
       checked that the FPU is enabled: */
    assert (!TME_SPARC_FPU_IS_DISABLED(ic));
  }

  /* any other instruction is illegal: */
  /* XXX FIXME - is this correct?  the UltraSPARC User's Manual
     doesn't document data_access_exception for an illegal opcode: */
  else {
    ls->tme_sparc_ls_faults = ic->tme_sparc_vis_ls_fault_illegal;
    return;
  }

  /* the address must be aligned: */
  if (__tme_predict_false((((tme_uint32_t) ls->tme_sparc_ls_address${arch})
			   & (ls->tme_sparc_ls_size - 1)) != 0)) {
    ls->tme_sparc_ls_faults = TME_SPARC_LS_FAULT_ADDRESS_NOT_ALIGNED;
    return;
  }

  /* the stdfa or lddfa instruction handler must have already checked
     that the FPU mode is execute: */
  assert (ic->tme_sparc_fpu_mode == TME_SPARC_FPU_MODE_EXECUTE);
}

/* the sparc${arch} VIS alternate ASI misalignment function: */
tme_uint32_t
tme_sparc${arch}_vis_ls_asi_misaligned(struct tme_sparc *ic,
                                  tme_uint32_t misaligned)
{
  tme_uint32_t insn;
  tme_uint32_t asi;
  tme_uint32_t asi_base;
  unsigned int reg_rs1;

  /* get the instruction: */
  insn = TME_SPARC_INSN;

  /* get the ASI, assuming that the i bit is zero: */
  asi = TME_FIELD_MASK_EXTRACTU(insn, (0xff << 5));

  /* if the i bit is one, use the ASI register: */
  if (insn & TME_BIT(13)) {
    asi = ic->tme_sparc${arch}_ireg_asi;
  }

  /* make a base version of the ASI, with the secondary and
     little-endian flags cleared: */
  asi_base = (asi & ~(TME_SPARC64_ASI_FLAG_SECONDARY | TME_SPARC64_ASI_FLAG_LITTLE));

  /* ASI_FL8* requires 8-bit alignment: */
  if (asi_base == TME_SPARC_VIS_ASI_FL8) {
    misaligned %= sizeof(tme_uint8_t);
  }

  /* ASI_FL16* requires 16-bit alignment: */
  else if (asi_base == TME_SPARC_VIS_ASI_FL16) {
    misaligned %= sizeof(tme_uint16_t);
  }

  /* if this is an ASI_PST*: */
  else if (asi_base == TME_SPARC_VIS_ASI_PST8
	   || asi_base == TME_SPARC_VIS_ASI_PST16
	   || asi_base == TME_SPARC_VIS_ASI_PST32) {

    /* decode rs1: */
    reg_rs1 = TME_FIELD_MASK_EXTRACTU(insn, TME_SPARC_FORMAT3_MASK_RS1);
    TME_SPARC_REG_INDEX(ic, reg_rs1);

    /* if this is not a register mode stdfa: */
    if (__tme_predict_false((insn
			     & ((0x3f << 19)
				+ TME_BIT(13)))
			    != (0x37 << 19))) {

      /* start a slow load/store, which will call the ASI handler,
	 which will cause the appropriate fault: */
      tme_sparc${arch}_ls(ic,
		     ic->tme_sparc_ireg_uint${arch}(reg_rs1),
		     (tme_uint${arch}_t *) NULL, /* _rd */
		     (TME_SPARC_LSINFO_SIZE(1)
		      | TME_SPARC_LSINFO_ASI(asi)
		      | TME_SPARC_LSINFO_A));
      assert(FALSE);
    }

    /* get the least-significant 32 bits of the address: */
    misaligned = ic->tme_sparc_ireg_uint${arch}(reg_rs1);

    /* ASI_PST* require 64-bit alignment, which the stdfa instruction
       handler is already checking: */
  }

  /* return a possibly updated misalignment: */
  return (misaligned);
}
EOF

done

# done:
#
exit 0
