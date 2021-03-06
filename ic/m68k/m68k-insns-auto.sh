#! /bin/sh
# Generated from ../../../ic/m68k/m68k-insns-auto.m4 by GNU Autoconf 2.69.
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


# $Id: m68k-insns-auto.sh,v 1.26 2009/08/29 19:38:23 fredette Exp $

# ic/m68k/m68k-insns-auto.sh - automatically generates C code
# for many m68k emulation instructions:

#
# Copyright (c) 2002, 2003 Matt Fredette
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
_TME_RCSID("\$Id: m68k-insns-auto.sh,v 1.26 2009/08/29 19:38:23 fredette Exp $");

EOF
if $header; then :; else
    cat <<EOF
#include "m68k-impl.h"

EOF
fi

# permute for the three different operand sizes we need to handle:
for size in 8 16 32; do

    # the shifts needed to get register contents of a specific size:
    case ${size} in
    8)  reg_size_shift=' << 2' ;;
    16) reg_size_shift=' << 1' ;;
    32) reg_size_shift='' ;;
    esac

    # generate the ALU functions:
    for name in add sub cmp neg or and eor not tst move moveq clr cmpa negx addx subx cmpm; do

	# characterize each operation:
	optype=normal ; src=op0 ; dst=op1 ; res=op1 ; arith=no ; with_x=false ; store_res=true
	case "$name" in
	add) op=' + ' ; arith=add ;;
	sub) op=' - ' ; arith=sub ;;
	cmp) op=' - ' ; arith=sub ; store_res=false ;;
	neg) op=' - ' ; arith=sub ; dst=0 ; src=op1 ;;
	or)  op=' | ' ;;
	and) op=' & ' ;;
	eor) op=' ^ ' ;;
	not) op='~ ' ; dst= ; src=op1 ;;
	tst) op='' ; dst= ; src=op1 ; store_res=false ;;
	move) op='' ; dst= ; src=op1 ; res=op0 ;;
	moveq) op='' ; dst= ; src=opc8 ; if test ${size} != 32; then continue; fi ;;
	clr) op='' ; dst= ; src=0 ;;
	cmpa) op=' - ' ; arith=sub ; src=op0.16s32 ; store_res=false
	    if test $size != 16; then continue; fi ;;
	negx) op=' - ' ; arith=sub ; with_x=true ; dst=0 ; src=op1 ;;
	addx) op=' + ' ; arith=add ; optype=mathx ; with_x=true ;;
	subx) op=' - ' ; arith=sub ; optype=mathx ; with_x=true ;;
	cmpm) op=' - ' ; arith=sub ; optype=mathx ; store_res=false ;;
	*) $as_echo "$0 internal error: unknown ALU function $name" 1>&2 ; exit 1 ;;
	esac

	# placeholder for another permutation:
	:

	    # if we're making the header, just emit a declaration:
	    if $header; then
		$as_echo "TME_M68K_INSN_DECL(tme_m68k_${name}${size});"
		continue
	    fi

	    # open the function:
	    $as_echo ""
	    $as_echo_n "/* this does a ${size}-bit \"$name "
	    case "${src}/${dst}" in *op0*) $as_echo_n "SRC, " ;; esac
	    $as_echo "DST\": */"
	    $as_echo "TME_M68K_INSN(tme_m68k_${name}${size})"
	    $as_echo "{"

	    # declare our locals:
	    if test $name = cmpa; then size=32; fi
	    $as_echo_n "  tme_uint${size}_t res"
	    case "${src}/${dst}" in *op0*) $as_echo_n ", op0" ;; esac
	    case "${src}/${dst}" in *op1*) $as_echo_n ", op1" ;; esac
	    $as_echo ";"
	    $as_echo "  tme_uint8_t flags;"

	    # load the operand(s):
	    $as_echo ""
	    $as_echo "  /* load the operand(s): */"
	    case ${optype} in
	    mathx)
		$as_echo "  unsigned int function_code = TME_M68K_FUNCTION_CODE_DATA(ic);"

		# NB: in my 68000 Programmer's Manual, the description
		# of subx is a little backwards from addx and cmpm. in
		# subx, the reg field at bits 0-2 is called the "x"
		# field, where in addx and cmpm it's called the "y"
		# field, and similarly for the reg field at bits 9-11.
		# fortunately, the meanings of the two reg fields is
		# always the same despite this - the reg field at bits
		# 0-2 always identifies the source operand, and the
		# reg field at bits 9-11 always identifies the
		# destination operand:
		$as_echo "  int ireg_src = TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 0, 3);"
		$as_echo "  int ireg_dst = TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 9, 3);"

		# the stack pointer must always be adjusted by a multiple of two.
		# assuming ireg < 8, ((ireg + 1) >> 3) == 1 iff ireg == 7, meaning %a7:
		$as_echo_n "  tme_uint32_t ireg_src_adjust = sizeof(tme_uint${size}_t)";
		if test ${size} = 8; then
		    $as_echo_n " + ((ireg_src + 1) >> 3)"
		fi
		$as_echo ";"
		$as_echo_n "  tme_uint32_t ireg_dst_adjust = sizeof(tme_uint${size}_t)";
		if test ${size} = 8; then
		    $as_echo_n " + ((ireg_dst + 1) >> 3)"
		fi
		$as_echo ";"

		case ${name} in

		# cmpm always uses memory and is always postincrement:
		cmpm)
		    $as_echo ""
		    $as_echo "  TME_M68K_INSN_CANFAULT;"
		    $as_echo ""
		    $as_echo "  if (!TME_M68K_SEQUENCE_RESTARTING) {"
		    $as_echo "    ic->_tme_m68k_ea_function_code = function_code;"
		    $as_echo "    ic->_tme_m68k_ea_address = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_src);"
		    $as_echo "    ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_src) += ireg_src_adjust;"
		    $as_echo "  }"
		    $as_echo "  tme_m68k_read_mem${size}(ic, TME_M68K_IREG_MEMY${size});"
		    $as_echo "  if (!TME_M68K_SEQUENCE_RESTARTING) {"
		    $as_echo "    ic->_tme_m68k_ea_function_code = function_code;"
		    $as_echo "    ic->_tme_m68k_ea_address = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_dst);"
		    $as_echo "    ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_dst) += ireg_dst_adjust;"
		    $as_echo "  }"
		    $as_echo "  tme_m68k_read_memx${size}(ic);"
		    $as_echo "  ${dst} = ic->tme_m68k_ireg_memx${size};"
		    $as_echo "  ${src} = ic->tme_m68k_ireg_memy${size};"
		    ;;

		# addx and subx use either registers or memory.  if they use memory,
		# they always predecrement:
		addx|subx)
		    $as_echo "  tme_uint16_t memory;"
		    $as_echo ""
		    $as_echo "  memory = (TME_M68K_INSN_OPCODE & TME_BIT(3));"
		    $as_echo "  if (memory) {"
		    $as_echo "    TME_M68K_INSN_CANFAULT;"
		    $as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
		    $as_echo "      ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_src) -= ireg_src_adjust;"
		    $as_echo "      ic->_tme_m68k_ea_function_code = function_code;"
		    $as_echo "      ic->_tme_m68k_ea_address = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_src);"
		    $as_echo "    }"
		    $as_echo "    tme_m68k_read_mem${size}(ic, TME_M68K_IREG_MEMY${size});"
		    $as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
		    $as_echo "      ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_dst) -= ireg_dst_adjust;"
		    $as_echo "      ic->_tme_m68k_ea_function_code = function_code;"
		    $as_echo "      ic->_tme_m68k_ea_address = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_dst);"
		    $as_echo "    }"
		    $as_echo "    tme_m68k_read_memx${size}(ic);"
		    $as_echo "    ${dst} = ic->tme_m68k_ireg_memx${size};"
		    $as_echo "    ${src} = ic->tme_m68k_ireg_memy${size};"
		    $as_echo "  }"
		    $as_echo "  else {"
		    $as_echo "    ${src} = ic->tme_m68k_ireg_uint${size}((TME_M68K_IREG_D0 + ireg_src)${reg_size_shift});"
		    $as_echo "    ${dst} = ic->tme_m68k_ireg_uint${size}((TME_M68K_IREG_D0 + ireg_dst)${reg_size_shift});"
		    $as_echo "  }"
		    ;;
		*) $as_echo "$0 internal error: unknown mathx ${name}" 1>&2 ; exit 1 ;;
		esac
		;;
	    normal)
		for which in src dst; do
		    eval 'what=$'${which}
		    case "x${what}" in
		    x|x0) ;;
		    xop[01].16s32)
			what=`$as_echo ${what} | sed -e 's/\..*//'`
			eval ${which}"=${what}"
			$as_echo "  ${what} = (tme_uint32_t) ((tme_int32_t) *((tme_int16_t *) _${what}));"
			;;
		    xop[01])
			$as_echo "  ${what} = *((tme_uint${size}_t *) _${what});"
			;;
		    xopc8)
		        eval ${which}"='TME_EXT_S8_U${size}((tme_int8_t) (TME_M68K_INSN_OPCODE & 0xff))'"
			;;
		    *) $as_echo "$0 internal error: unknown what ${what}" 1>&2 ; exit 1 ;;
		    esac
		done
		;;
	    *) $as_echo "$0 internal error: unknown optype ${optype}" 1>&2 ; exit 1 ;;
	    esac

	    # perform the operation:
	    $as_echo ""
	    $as_echo "  /* perform the operation: */"
	    $as_echo_n "  res = ${dst}${op}${src}"
	    if $with_x; then
		$as_echo_n "${op}((ic->tme_m68k_ireg_ccr / TME_M68K_FLAG_X) & 1)"
	    fi
	    $as_echo ";"

	    # store the result:
	    if $store_res; then
		$as_echo ""
		$as_echo "  /* store the result: */"
		case ${optype} in
		mathx)
		    $as_echo "  if (memory) {"
		    $as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
		    $as_echo "      ic->tme_m68k_ireg_memx${size} = res;"
		    $as_echo "      ic->_tme_m68k_ea_function_code = function_code;"
		    $as_echo "      ic->_tme_m68k_ea_address = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ireg_dst);"
		    $as_echo "    }"
		    $as_echo "    tme_m68k_write_memx${size}(ic);"
		    $as_echo "  }"
		    $as_echo "  else {"
		    $as_echo "    ic->tme_m68k_ireg_uint${size}((TME_M68K_IREG_D0 + ireg_dst)${reg_size_shift}) = res;"
		    $as_echo "  }"
		    ;;
		normal)
		    $as_echo "  *((tme_uint${size}_t *) _${res}) = res;"
		    ;;
		*) $as_echo "$0 internal error: unknown optype ${optype}" 1>&2 ; exit 1 ;;
		esac
	    fi

	    # start the status flags, maybe preserving X:
	    $as_echo ""
	    $as_echo "  /* set the flags: */"
	    case "${name}:${arith}" in
	    cmp*|*:no)
		flag_x=
		;;
	    *)
		flag_x=" | TME_M68K_FLAG_X"
		;;
	    esac

	    # set N.  we cast to tme_uint8_t as soon as we know the
	    # bit we want is within the range of the type, to try
	    # to affect the generated assembly:
	    $as_echo "  flags = ((tme_uint8_t) (((tme_uint${size}_t) res) >> (${size} - 1))) * TME_M68K_FLAG_N;"

	    # set Z:
	    if $with_x; then
		$as_echo "  if (res == 0) flags |= (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_Z);"
	    else
		$as_echo "  if (res == 0) flags |= TME_M68K_FLAG_Z;"
	    fi

	    # set V and C and maybe X:
	    case $arith in
	    add)
		case $size in
		8) ones="0xff" ;;
		16) ones="0xffff" ;;
		32) ones="0xffffffff" ;;
		esac
		# if the operands are the same sign, and the result has
	        # a different sign, set V.   we cast to tme_uint8_t as
		# soon as we know the bit we want is within the range
		# of the type, to try to affect the generated assembly:
		$as_echo "  flags |= ((tme_uint8_t) (((${src} ^ ${dst} ^ ${ones}) & (${dst} ^ res)) >> (${size} - 1))) * TME_M68K_FLAG_V;"
		# if src is greater than the logical inverse of dst, set C:
		$as_echo_n "  if (${src} > (${dst} ^ ${ones})"
		if $with_x; then
		    $as_echo_n " || (${src} == (${dst} ^ ${ones}) && (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_X))"
		fi
		$as_echo ") flags |= TME_M68K_FLAG_C${flag_x};"
		;;
	    sub)
		# if the operands are different signs, and the result has
	        # a different sign from the first operand, set V.  we
		# cast to tme_uint8_t as soon as we know the bit we want
		# is within the range of the type, to try to affect the
		# generated assembly:
		$as_echo "  flags |= ((tme_uint8_t) (((${src} ^ ${dst}) & (${dst} ^ res)) >> (${size} - 1))) * TME_M68K_FLAG_V;"
		# if src is greater than dst, set C:
		$as_echo_n "  if (${src} > ${dst}"
		if $with_x; then
		    $as_echo_n " || (${src} == ${dst} && (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_X))"
		fi
		$as_echo ") flags |= TME_M68K_FLAG_C${flag_x};"
		;;
	    no) ;;
	    esac

	    # preserve X:
	    if test "x${flag_x}" = x; then
		$as_echo "  flags |= (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_X);"
	    fi

	    # set the flags:
	    $as_echo "  ic->tme_m68k_ireg_ccr = flags;"

	    # done:
	    $as_echo ""
	    $as_echo "  TME_M68K_INSN_OK;"
	    $as_echo "}"

	    if test $name = cmpa; then size=16; fi
    done

    # generate the wrapper functions for a move of an address register
    # to a predecrement or postincrement EA with that same address
    # register:
    for name in pd pi; do

	# a move of an address registers are only word and long:
	if test $size = 8; then continue; fi

	# if we're making the header, just emit a declaration:
	if $header; then
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_move_sr${name}${size});"
	    continue
	fi

	$as_echo ""
	$as_echo "/* a move of an address register to a predecrement or"
	$as_echo "   postincrement EA with that same address register, must"
	$as_echo "   store the original value of the address register.  since the"
	$as_echo "   predecrement and postincrement code in the executer updates"
	$as_echo "   the address register before the move has happened, we wrap"
	$as_echo "   the normal move function in this one, that gives an op1"
	$as_echo "   argument that is the original value of the address register: */"
	$as_echo "TME_M68K_INSN(tme_m68k_move_sr${name}${size})"
	$as_echo "{"
	if test ${name} = pd; then op='+'; else op='-'; fi
	$as_echo "  /* NB: both this function and tme_m68k_move${size}()"
	$as_echo "     get the source operand as _op1, and the destination"
	$as_echo "     operand as _op0: */"
	$as_echo "  if (!TME_M68K_SEQUENCE_RESTARTING) {"
	$as_echo "    *((tme_uint${size}_t *) _op0)"
	$as_echo "      = (*((tme_uint${size}_t *) _op1)"
	$as_echo "         ${op} sizeof(tme_uint${size}_t));"
	$as_echo "  }"
	$as_echo "  tme_m68k_move${size}(ic, _op0, _op0);"
	$as_echo "}"
    done

    # generate the address math functions:
    for name in suba adda movea; do

	# the address math functions don't need an 8-bit version:
	if test $size = 8; then continue; fi

	# if we're making the header, just emit a declaration:
	if $header; then
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_${name}${size});"
	    continue
	fi

	$as_echo ""
	$as_echo "/* the ${name} function on a ${size}-byte EA: */"
	$as_echo "TME_M68K_INSN(tme_m68k_${name}${size})"
	$as_echo "{"
	case $name in
	suba) op='-' ; src="_op0" ; dst="_op1" ;;
	adda) op='+' ; src="_op0" ; dst="_op1" ;;
	movea) op='' ; src="_op1" ; dst="_op0" ;;
	esac
	$as_echo "  *((tme_int32_t *) ${dst}) ${op}= *((tme_int${size}_t *) ${src});"
	$as_echo "  TME_M68K_INSN_OK;"
	$as_echo "}"
    done

    # generate the bit functions:
    for name in btst bchg bclr bset; do

	# the bit functions don't need a 16-bit version:
	if test $size = 16; then continue; fi

	# if we're making the header, just emit a declaration:
	if $header; then
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_${name}${size});"
	    continue
	fi

	$as_echo ""
	$as_echo "/* the ${name} function on a ${size}-byte EA: */"
	$as_echo "TME_M68K_INSN(tme_m68k_${name}${size})"
	$as_echo "{"
	$as_echo "  tme_uint${size}_t value, bit;"
	$as_echo "  bit = _TME_BIT(tme_uint${size}_t, TME_M68K_INSN_OP0(tme_uint8_t) & (${size} - 1));"
	$as_echo "  value = TME_M68K_INSN_OP1(tme_uint${size}_t);"
	$as_echo "  if (value & bit) {"
	$as_echo "    ic->tme_m68k_ireg_ccr &= ~TME_M68K_FLAG_Z;"
	$as_echo "  }"
	$as_echo "  else {"
	$as_echo "    ic->tme_m68k_ireg_ccr |= TME_M68K_FLAG_Z;"
	$as_echo "  }"
	case ${name} in
	btst) ;;
	bchg) $as_echo "  TME_M68K_INSN_OP1(tme_uint${size}_t) = value ^ bit;" ;;
	bclr) $as_echo "  TME_M68K_INSN_OP1(tme_uint${size}_t) = value & ~bit;" ;;
	bset) $as_echo "  TME_M68K_INSN_OP1(tme_uint${size}_t) = value | bit;" ;;
	esac
	$as_echo "  TME_M68K_INSN_OK;"
	$as_echo "}"
    done

    # generate the shift/rotate functions:
    for func in as ls ro rox; do
	for dir in l r; do
	    name="${func}${dir}"

	    # if we're making the header, just emit a declaration:
	    if $header; then
		$as_echo "TME_M68K_INSN_DECL(tme_m68k_${name}${size});"
		continue
	    fi

	    $as_echo ""
	    $as_echo "/* the ${name} function on a ${size}-byte EA: */"
	    $as_echo "TME_M68K_INSN(tme_m68k_${name}${size})"
	    $as_echo "{"
	    $as_echo "  unsigned int count;"
	    sign=u
	    case "${name}" in
	    asr) sign= ;;
	    asl) $as_echo "  tme_uint${size}_t sign_bits, sign_bits_mask;" ;;
	    rox[lr]) $as_echo "  tme_uint8_t xbit;" ;;
	    *) ;;
	    esac
	    $as_echo "  tme_${sign}int${size}_t res;"
	    $as_echo "  tme_uint8_t flags;"
	    $as_echo ""
	    $as_echo "  /* get the count and operand: */"
	    $as_echo "  count = TME_M68K_INSN_OP0(tme_uint8_t) & 63;"
	    $as_echo "  res = TME_M68K_INSN_OP1(tme_${sign}int${size}_t);"

	    $as_echo ""
	    $as_echo "  /* generate the X, V, and C flags assuming the count is zero: */"
	    $as_echo "  flags = ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_X;"
	    case "${name}" in
	    rox[lr])
		$as_echo "  xbit = (flags / TME_M68K_FLAG_X);"
		$as_echo "  flags |= (xbit * TME_M68K_FLAG_C);"
		;;
	    esac

	    $as_echo ""
	    $as_echo "  /* if the count is nonzero, update the result and"
	    $as_echo "     generate the X, V, and C flags: */"
	    $as_echo "  if (count > 0) {"
	    case "${name}" in
	    lsr)
		$as_echo "    if (63 > SHIFTMAX_INT${size}_T"
		$as_echo "        && count > ${size}) {"
		$as_echo "      res = 0;"
		$as_echo "    }"
		$as_echo "    res >>= (count - 1);"
		$as_echo "    flags = (res & 1);"
		$as_echo "    flags *= TME_M68K_FLAG_C;"
		$as_echo "    flags |= (flags * TME_M68K_FLAG_X);"
		$as_echo "    res >>= 1;"
		;;
	    asr)
		$as_echo "    if (63 > SHIFTMAX_INT${size}_T"
		$as_echo "        && count > ${size}) {"
		$as_echo "      res = 0 - (res < 0);"
		$as_echo "    }"
		$as_echo "#ifdef SHIFTSIGNED_INT${size}_T"
		$as_echo "    res >>= (count - 1);"
		$as_echo "#else  /* !SHIFTSIGNED_INT${size}_T */"
		$as_echo "    for (; --count > 0; ) {"
		$as_echo "      res = (res & ~((tme_${sign}int${size}_t) 1)) / 2;"
		$as_echo "    }"
		$as_echo "#endif /* !SHIFTSIGNED_INT${size}_T */"
		$as_echo "    flags = (res & 1);"
		$as_echo "    flags *= TME_M68K_FLAG_C;"
		$as_echo "    flags |= (flags * TME_M68K_FLAG_X);"
		$as_echo "#ifdef SHIFTSIGNED_INT${size}_T"
		$as_echo "    res >>= 1;"
		$as_echo "#else  /* !SHIFTSIGNED_INT${size}_T */"
		$as_echo "    res = (res & ~((tme_${sign}int${size}_t) 1)) / 2;"
		$as_echo "#endif /* !SHIFTSIGNED_INT${size}_T */"
		;;
	    [al]sl)
		if test ${name} = asl; then
		    $as_echo ""
		    $as_echo "    /* we need to see how the sign of the result will change during"
		    $as_echo "       shifting in order to generate V."
		    $as_echo ""
		    $as_echo "       in general, the idea is to get all of the bits that will ever"
		    $as_echo "       appear in the sign position into sign_bits, with a mask in"
		    $as_echo "       sign_bits_mask.  if (sign_bits & sign_bits_mask) is zero or"
		    $as_echo "       sign_bits_mask, clear V, else set V."
		    $as_echo ""
		    $as_echo "       start by loading the operand into sign_bits and setting"
		    $as_echo "       sign_bits_mask to all-bits-one."
		    $as_echo ""
		    $as_echo "       if the shift count is exactly ${size} - 1, then all of the bits"
		    $as_echo "       of the operand will appear in the sign position."
		    $as_echo ""
		    $as_echo "       if the shift count is less than ${size} - 1, then some of the"
		    $as_echo "       less significant bits of the operand will never appear in the"
		    $as_echo "       sign position, so we can shift sign_bits_mask to ignore them."
		    $as_echo ""
		    $as_echo "       if the shift count is greater than ${size} - 1, then all of the"
		    $as_echo "       bits in the operand, plus at least one zero bit, will appear in"
		    $as_echo "       the sign position.  the only way that the sign bit will never"
		    $as_echo "       change during the shift is if the operand was zero to begin with."
		    $as_echo "       without any changes to sign_bits or sign_bits_mask, the final"
		    $as_echo "       test will always work, except when sign_bits is all-bits-one."
		    $as_echo "       the magic below clears the least-significant bit of sign_bits"
		    $as_echo "       iff sign_bits is all-bits-one: */"
		    $as_echo "    sign_bits = res;"
		fi
		$as_echo "    if (63 > SHIFTMAX_INT${size}_T"
		$as_echo "        && count > ${size}) {"
		$as_echo "      res = 0;"
		$as_echo "    }"
		$as_echo "    res <<= (count - 1);"
		$as_echo "    flags = (res >> (${size} - 1));"
		$as_echo "    flags *= TME_M68K_FLAG_C;"
		$as_echo "    flags |= (flags * TME_M68K_FLAG_X);"
		$as_echo "    res <<= 1;"
		if test ${name} = asl; then
		    $as_echo "    sign_bits_mask = (tme_uint${size}_t) -1;"
		    $as_echo "    if (count != ${size} - 1) {"
		    $as_echo "      if (count < ${size}) {"
		    $as_echo "        sign_bits_mask <<= ((${size} - 1) - count);"
		    $as_echo "      }"
		    $as_echo "      else {"
		    $as_echo "        sign_bits ^= !(sign_bits + 1);"
		    $as_echo "      }"
		    $as_echo "    }"
		    $as_echo "    sign_bits &= sign_bits_mask;"
		    $as_echo "    if (sign_bits != 0 && sign_bits != sign_bits_mask) {"
		    $as_echo "      flags |= TME_M68K_FLAG_V;"
		    $as_echo "    }"
		fi
		;;
	    ro[lr])
		$as_echo "    count &= (${size} - 1);"
		if test $dir = l; then
		    $as_echo "    res = (res << count) | (res >> (${size} - count));"
		    $as_echo "    flags |= ((res & 1) * TME_M68K_FLAG_C);"
		else
		    $as_echo "    res = (res << (${size} - count)) | (res >> count);"
		    $as_echo "    flags |= ((res >> (${size} - 1)) * TME_M68K_FLAG_C);"
		fi
		;;
	    rox[lr])
		$as_echo "    count %= (${size} + 1);"
		$as_echo "    flags = xbit;"
		$as_echo "    if (count > 0) {"
		if test $dir = l; then
		    $as_echo "      flags = (res >> (${size} - count)) & 1;"
		    $as_echo "      if (${size} > SHIFTMAX_INT${size}_T"
		    $as_echo "          && count == ${size}) {"
		    $as_echo "        res = 0 | (xbit << (${size} - 1)) | (res >> ((${size} + 1) - ${size}));"
		    $as_echo "      }"
		    $as_echo "      else if (${size} > SHIFTMAX_INT${size}_T"
		    $as_echo "               && count == 1) {"
		    $as_echo "        res = (res << 1) | (xbit << (1 - 1)) | 0;"
		    $as_echo "      }"
		    $as_echo "      else {"
		    $as_echo "        res = (res << count) | (xbit << (count - 1)) | (res >> ((${size} + 1) - count));"
		    $as_echo "      }"
		else
		    $as_echo "      flags = (res >> (count - 1)) & 1;"
		    $as_echo "      if (${size} > SHIFTMAX_INT${size}_T"
		    $as_echo "          && count == ${size}) {"
		    $as_echo "        res = (res << ((${size} + 1) - ${size})) | (xbit << (${size} - ${size})) | 0;"
		    $as_echo "      }"
		    $as_echo "      else if (${size} > SHIFTMAX_INT${size}_T"
		    $as_echo "               && count == 1) {"
		    $as_echo "        res = 0 | (xbit << (${size} - 1)) | (res >> 1);"
		    $as_echo "      }"
		    $as_echo "      else {"
		    $as_echo "        res = (res << ((${size} + 1) - count)) | (xbit << (${size} - count)) | (res >> count);"
		    $as_echo "      }"
		fi
		$as_echo "    }"
		$as_echo "    flags *= TME_M68K_FLAG_C;"
		$as_echo "    flags |= (flags * TME_M68K_FLAG_X);"
		;;
	    esac
		$as_echo "  }"

	    $as_echo ""
	    $as_echo "  /* store the result: */"
	    $as_echo "  TME_M68K_INSN_OP1(tme_${sign}int${size}_t) = res;"

	    $as_echo ""
	    $as_echo "  /* generate the N flag.  we cast to tme_uint8_t as soon as we"
	    $as_echo "     know the bit we want is within the range of the type, to try"
	    $as_echo "     to affect the generated assembly: */"
	    $as_echo "  flags |= ((tme_uint8_t) (((tme_uint${size}_t) res) >> (${size} - 1))) * TME_M68K_FLAG_N;"

	    $as_echo ""
	    $as_echo "  /* generate the Z flag: */"
	    $as_echo "  if (res == 0) flags |= TME_M68K_FLAG_Z;"

	    $as_echo ""
	    $as_echo "  /* store the flags: */"
	    $as_echo "  ic->tme_m68k_ireg_ccr = flags;"
	    $as_echo "  TME_M68K_INSN_OK;"
	    $as_echo "}"
	done
    done

    # movep_rm, movep_mr, movem_rm, and movem_mr:
    for name in rm mr; do

	# movep and movem don't need 8-bit versions:
	if test ${size} = 8; then continue; fi

	# if we're making the header, just emit declarations:
	if $header; then
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_movep_${name}${size});"
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_movem_${name}${size});"
	    continue
	fi

	# emit the movep function:
	$as_echo ""
	$as_echo "/* the movep_${name} function on a ${size}-bit dreg: */"
	$as_echo "TME_M68K_INSN(tme_m68k_movep_${name}${size})"
	$as_echo "{"
	$as_echo "  unsigned int function_code;"
	$as_echo "  tme_uint32_t linear_address;"
	if test $name = rm; then
	    $as_echo "  tme_uint${size}_t value;"
	fi
	$as_echo "  int dreg;"
	$as_echo ""
	$as_echo "  TME_M68K_INSN_CANFAULT;"
	$as_echo ""
	$as_echo "  function_code = TME_M68K_FUNCTION_CODE_DATA(ic);"
	$as_echo "  linear_address = TME_M68K_INSN_OP1(tme_uint32_t);"
	$as_echo "  linear_address += (tme_int32_t) ((tme_int16_t) TME_M68K_INSN_SPECOP);"
	$as_echo "  dreg = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 9, 3);"

	# set value:
	if test $name = rm; then
	    $as_echo "  value = ic->tme_m68k_ireg_uint${size}(dreg${reg_size_shift});"
            value="value"
        else
            value="ic->tme_m68k_ireg_uint${size}(dreg${reg_size_shift})"
	fi

	# transfer the bytes:
	pos=${size}
	while test $pos != 0; do
	    pos=`expr ${pos} - 8`
	    $as_echo "  if (!TME_M68K_SEQUENCE_RESTARTING) {"
	    $as_echo "    ic->_tme_m68k_ea_function_code = function_code;"
	    $as_echo "    ic->_tme_m68k_ea_address = linear_address;"
	    if test $name = rm; then
		$as_echo "    ic->tme_m68k_ireg_memx8 = TME_FIELD_EXTRACTU(${value}, ${pos}, 8);"
		$as_echo "  }"
		$as_echo "  tme_m68k_write_memx8(ic);"
	    else
		$as_echo "  }"
		$as_echo "  tme_m68k_read_memx8(ic);"
		$as_echo "  if (!TME_M68K_SEQUENCE_RESTARTING) {"
		$as_echo "    TME_FIELD_DEPOSIT${size}(${value}, ${pos}, 8, ic->tme_m68k_ireg_memx8);"
		$as_echo "  }"
	    fi
	    $as_echo "  linear_address += 2;"
	done

	$as_echo "  TME_M68K_INSN_OK;"
	$as_echo "}"

	# emit the movem function:
	$as_echo ""
	$as_echo "/* the movem_${name} function on ${size}-bit registers: */"
	$as_echo "TME_M68K_INSN(tme_m68k_movem_${name}${size})"
	$as_echo "{"
	$as_echo "  int ireg, direction;"
	$as_echo "  tme_uint16_t mask, bit;"
	$as_echo "  unsigned int ea_mode;"
	$as_echo "  tme_uint32_t addend;"
	$as_echo "  tme_uint32_t total_size;"

	$as_echo "  /* get the register mask, and figure out the total size"
	$as_echo "     of the transfer: */"
	$as_echo "  mask = TME_M68K_INSN_SPECOP;"
	$as_echo "  total_size = 0;"
	$as_echo "  if (mask != 0) {"
	$as_echo "    TME_M68K_INSN_CANFAULT;"
	$as_echo "    bit = mask;"
	$as_echo "    do {"
	$as_echo "      total_size += sizeof(tme_uint${size}_t);"
	$as_echo "      bit &= (bit - 1);"
	$as_echo "    } while (bit != 0);"
	$as_echo "  }"

	$as_echo ""
	$as_echo "  /* figure out what direction to move in, and where to start from: */"
	$as_echo "  ea_mode = TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 3, 3);"
	$as_echo "  direction = 1;"
	$as_echo "  ireg = TME_M68K_IREG_D0;"
	if test $name = rm; then
	    $as_echo "  if (ea_mode == 4) {"
	    $as_echo "    direction = -1;"
	    $as_echo "    ireg = TME_M68K_IREG_A7;"
	    $as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
	    $as_echo ""
	    $as_echo "      /* \"For the MC68020, MC68030, MC68040, and CPU32, if"
	    $as_echo "         the addressing register is also moved to memory, the"
	    $as_echo "         value written is the initial register value decremented "
	    $as_echo "         by the size of the operation. The MC68000 and MC68010 "
	    $as_echo "         write the initial register value (not decremented).\" */"
	    $as_echo "      if (ic->tme_m68k_type >= TME_M68K_M68020) {"
	    $as_echo "        ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0"
	    $as_echo "                                 + TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 0, 3))"
	    $as_echo "          = (ic->_tme_m68k_ea_address - total_size);"
	    $as_echo "      }"
	    $as_echo ""
	    $as_echo "      /* predecrement the effective address for the first transfer: */"
	    $as_echo "      ic->_tme_m68k_ea_address -= sizeof(tme_uint${size}_t);"
	    $as_echo "    }"
	    $as_echo "  }"
	fi
	$as_echo "  addend = (tme_uint32_t) (direction * sizeof(tme_uint${size}_t));"

	$as_echo ""
	$as_echo "  /* do the transfer: */"
	$as_echo "  for (bit = 1; bit != 0; bit <<= 1) {"
	$as_echo "    if (mask & bit) {"
	if test $name = rm; then
	    $as_echo "      if (!TME_M68K_SEQUENCE_RESTARTING) {"
	    $as_echo "        ic->tme_m68k_ireg_memx${size} = ic->tme_m68k_ireg_uint${size}(ireg${reg_size_shift});"
	    $as_echo "      }"
	    $as_echo "      tme_m68k_write_memx${size}(ic);"
	    $as_echo "      if (!TME_M68K_SEQUENCE_RESTARTING) {"
	else
	    $as_echo "      tme_m68k_read_memx${size}(ic);"
	    $as_echo "      if (!TME_M68K_SEQUENCE_RESTARTING) {"
	    $as_echo_n "        ic->tme_m68k_ireg_uint32(ireg) = "
	    if test $size = 32; then
		$as_echo "ic->tme_m68k_ireg_memx${size};"
	    else
		$as_echo "TME_EXT_S${size}_U32((tme_int${size}_t) ic->tme_m68k_ireg_memx${size});"
	    fi
	fi
	$as_echo "        ic->_tme_m68k_ea_address += addend;"
	$as_echo "      }"
	$as_echo "    }"
	$as_echo "    ireg += direction;"
	$as_echo "  }"
	$as_echo ""

	# for the predecrement and postincrement modes, update the
	# address register:
	if test $name = rm; then
	    $as_echo "  /* if this is the predecrement mode, update the address register: */"
	    $as_echo "  /* \"For the MC68020, MC68030, MC68040, and CPU32, if"
	    $as_echo "     the addressing register is also moved to memory, the"
	    $as_echo "     value written is the initial register value decremented "
	    $as_echo "     by the size of the operation. The MC68000 and MC68010 "
	    $as_echo "     write the initial register value (not decremented).\" */"
	    $as_echo "  if (ea_mode == 4"
	    $as_echo "      && ic->tme_m68k_type < TME_M68K_M68020) {"
	    $as_echo "    ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0"
	    $as_echo "                              + TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 0, 3))"
	    $as_echo "      = (ic->_tme_m68k_ea_address + sizeof(tme_uint${size}_t));"
	    $as_echo "  }"
	else
	    $as_echo "  /* if this is the postincrement mode, update the address register: */"
	    $as_echo "  if (ea_mode == 3) {"
	    $as_echo "    ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0"
	    $as_echo "                              + TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 0, 3))"
	    $as_echo "      = ic->_tme_m68k_ea_address;"
	    $as_echo "  }"
	fi

	$as_echo "  TME_M68K_INSN_OK;"
	$as_echo "}"
    done

    # chk32 and chk16:
    if test $size != 8; then

	# if we're making the header, just emit a declaration:
	if $header; then
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_chk${size});"
	else
	    $as_echo ""
	    $as_echo "/* chk${size}: */"
	    $as_echo "TME_M68K_INSN(tme_m68k_chk${size})"
	    $as_echo "{"
	    $as_echo "  if (*((tme_int${size}_t *) _op0) < 0) {"
	    $as_echo "    ic->tme_m68k_ireg_ccr |= TME_M68K_FLAG_N;"
	    $as_echo "    ic->tme_m68k_ireg_pc_last = ic->tme_m68k_ireg_pc;"
	    $as_echo "    ic->tme_m68k_ireg_pc = ic->tme_m68k_ireg_pc_next;"
	    $as_echo "    TME_M68K_INSN_EXCEPTION(TME_M68K_EXCEPTION_INST(TME_M68K_VECTOR_CHK));"
	    $as_echo "  }"
	    $as_echo "  if (*((tme_int${size}_t *) _op0) > *((tme_int${size}_t *) _op1)) {"
	    $as_echo "    ic->tme_m68k_ireg_ccr &= ~TME_M68K_FLAG_N;"
	    $as_echo "    ic->tme_m68k_ireg_pc_last = ic->tme_m68k_ireg_pc;"
	    $as_echo "    ic->tme_m68k_ireg_pc = ic->tme_m68k_ireg_pc_next;"
	    $as_echo "    TME_M68K_INSN_EXCEPTION(TME_M68K_EXCEPTION_INST(TME_M68K_VECTOR_CHK));"
	    $as_echo "  }"
	    $as_echo "  TME_M68K_INSN_OK;"
	    $as_echo "}"
	fi
    fi

    # cas:
    name=cas
    if $header; then
	$as_echo "TME_M68K_INSN_DECL(tme_m68k_${name}${size});"
    else
	$as_echo ""
	$as_echo "/* ${name}${size}: */"
	$as_echo "TME_M68K_INSN(tme_m68k_${name}${size})"
	$as_echo "{"
	$as_echo "  struct tme_m68k_rmw rmw;"
	$as_echo "  struct tme_m68k_tlb *tlb;"
	$as_echo "  int ireg_dc, ireg_du;"
	$as_echo "  tme_uint${size}_t value_dc, value_du, value_mem;"
	$as_echo ""
	$as_echo "  /* start the read/modify/write cycle: */"
	$as_echo "  rmw.tme_m68k_rmw_addresses[0] = ic->_tme_m68k_ea_address;"
	$as_echo "  rmw.tme_m68k_rmw_address_count = 1;"
	$as_echo "  rmw.tme_m68k_rmw_size = sizeof(tme_uint${size}_t);"
	$as_echo "  if (tme_m68k_rmw_start(ic,"
	$as_echo "                         &rmw)) {"
	$as_echo "    TME_M68K_INSN_OK;"
	$as_echo "  }"
	$as_echo ""
	$as_echo "  /* get the compare and update registers: */"
	$as_echo "  ireg_dc = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(TME_M68K_INSN_SPECOP, 0, 3);"
	$as_echo "  ireg_du = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(TME_M68K_INSN_SPECOP, 6, 3);"
	$as_echo ""
	$as_echo "  /* if we can do the fast compare-and-exchange: */"
	$as_echo "  if (!rmw.tme_m68k_rmw_slow_reads[0]) {"
	$as_echo ""
	$as_echo "    /* get the compare and update values in big-endian byte order: */"
	$as_echo "    value_dc = ic->tme_m68k_ireg_uint${size}(ireg_dc${reg_size_shift});"
	$as_echo "    value_du = ic->tme_m68k_ireg_uint${size}(ireg_du${reg_size_shift});"
	if test ${size} != 8; then
	    $as_echo "    value_dc = tme_htobe_u${size}(value_dc);"
	    $as_echo "    value_du = tme_htobe_u${size}(value_du);"
	fi
	$as_echo ""
	$as_echo "    /* get this TLB entry: */"
	$as_echo "    tlb = rmw.tme_m68k_rmw_tlbs[0];"
	$as_echo ""
	$as_echo "    /* this TLB entry must allow fast reading and fast writing"
	$as_echo "       to the same memory: */"
	$as_echo "    assert (tlb->tme_m68k_tlb_emulator_off_read != TME_EMULATOR_OFF_UNDEF"
	$as_echo "            && tlb->tme_m68k_tlb_emulator_off_write == tlb->tme_m68k_tlb_emulator_off_read);"
	$as_echo ""
	$as_echo "    /* do the compare-and-exchange: */"
	$as_echo "    value_mem ="
	$as_echo "      tme_memory_atomic_cx${size}(((tme_shared tme_uint${size}_t *)"
	$as_echo "                                   (tlb->tme_m68k_tlb_emulator_off_read"
	$as_echo "                                    + ic->_tme_m68k_ea_address)),"
	$as_echo "                                  value_dc,"
	$as_echo "                                  value_du,"
	$as_echo "                                  tlb->tme_m68k_tlb_bus_rwlock,"
	$as_echo "                                  sizeof(tme_uint8_t));"
   	$as_echo_n "    ic->tme_m68k_ireg_memx${size} = "
	if test ${size} != 8; then $as_echo_n "tme_betoh_u${size}"; fi
	$as_echo "(value_mem);"
	$as_echo ""
	$as_echo "    /* step the transfer count once for the read, and once for the write: */"
	$as_echo "    TME_M68K_SEQUENCE_TRANSFER_STEP;"
	$as_echo "    TME_M68K_SEQUENCE_TRANSFER_STEP;"
	$as_echo "  }"
	$as_echo ""
	$as_echo "  /* compare the compare operand to the effective address operand: */"
	$as_echo "  tme_m68k_cmp${size}(ic, &ic->tme_m68k_ireg_uint${size}(ireg_dc${reg_size_shift}), &ic->tme_m68k_ireg_memx${size});"
	$as_echo ""
	$as_echo "  /* if the comparison succeeded: */"
	$as_echo "  if (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_Z) {"
	$as_echo ""
	$as_echo "    /* write the update operand to the effective address operand: */"
	$as_echo "    ic->tme_m68k_ireg_memx${size} = ic->tme_m68k_ireg_uint${size}(ireg_du${reg_size_shift});"
	$as_echo "  }"
	$as_echo ""
	$as_echo "  /* otherwise, the comparison failed: */"
	$as_echo "  else {"
	$as_echo ""
	$as_echo "    /* write the effective address operand to the compare operand: */"
	$as_echo "    ic->tme_m68k_ireg_uint${size}(ireg_dc${reg_size_shift}) = ic->tme_m68k_ireg_memx${size};"
	$as_echo "  }"
	$as_echo ""
	$as_echo "  /* finish the read/modify/write cycle: */"
	$as_echo "  tme_m68k_rmw_finish(ic,"
	$as_echo "                      &rmw,"
	$as_echo "                      (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_Z) != 0);"
	$as_echo "  TME_M68K_INSN_OK;"
	$as_echo "}"
    fi

    # cas2:
    name=cas2_
    if test $size != 8; then

	if $header; then
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_${name}${size});"
	else
	    $as_echo ""
	    $as_echo "/* ${name}${size}: */"
	    $as_echo "TME_M68K_INSN(tme_m68k_${name}${size})"
	    $as_echo "{"
	    $as_echo "  struct tme_m68k_rmw rmw;"
	    $as_echo "  int ireg_dcx, ireg_dux;"
	    $as_echo "  int ireg_dcy, ireg_duy;"
	    $as_echo "  const tme_uint16_t specopx = TME_M68K_INSN_SPECOP;"
	    $as_echo "  const tme_uint16_t specopy = TME_M68K_INSN_OP0(tme_uint16_t);"
	    $as_echo ""
	    $as_echo "  /* start the read/modify/write cycle: */"
	    $as_echo "  ic->_tme_m68k_ea_function_code = TME_M68K_FUNCTION_CODE_DATA(ic);"
	    $as_echo "  rmw.tme_m68k_rmw_addresses[0] = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_D0"
	    $as_echo "                                                           + TME_FIELD_EXTRACTU(specopx, 12, 4));"
	    $as_echo "  rmw.tme_m68k_rmw_addresses[1] = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_D0"
	    $as_echo "                                                           + TME_FIELD_EXTRACTU(specopy, 12, 4));"
	    $as_echo "  rmw.tme_m68k_rmw_address_count = 2;"
	    $as_echo "  rmw.tme_m68k_rmw_size = sizeof(tme_uint${size}_t);"
	    $as_echo "  if (tme_m68k_rmw_start(ic,"
	    $as_echo "                         &rmw)) {"
	    $as_echo "    TME_M68K_INSN_OK;"
	    $as_echo "  }"
	    $as_echo ""
	    $as_echo "  /* do the comparisons: */"
	    $as_echo "  ireg_dcx = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(specopx, 0, 3);"
	    $as_echo "  ireg_dcy = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(specopy, 0, 3);"
	    $as_echo "  tme_m68k_cmp${size}(ic,"
	    $as_echo "                 &ic->tme_m68k_ireg_uint${size}(ireg_dcx${reg_size_shift}),"
	    $as_echo "                 &ic->tme_m68k_ireg_memx${size});"
	    $as_echo "  if (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_Z) {"
	    $as_echo "    tme_m68k_cmp${size}(ic,"
	    $as_echo "                   &ic->tme_m68k_ireg_uint${size}(ireg_dcy${reg_size_shift}),"
	    $as_echo "                   &ic->tme_m68k_ireg_memy${size});"
	    $as_echo "  }"
	    $as_echo ""
	    $as_echo "  /* if the comparisons succeeded: */"
	    $as_echo "  if (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_Z) {"
	    $as_echo ""
	    $as_echo "    /* write the update operands to the effective address operands: */"
	    $as_echo "    ireg_dux = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(specopx, 6, 3);"
	    $as_echo "    ireg_duy = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(specopy, 6, 3);"
	    $as_echo "    ic->tme_m68k_ireg_memx${size} = ic->tme_m68k_ireg_uint${size}(ireg_dux${reg_size_shift});"
	    $as_echo "    ic->tme_m68k_ireg_memy${size} = ic->tme_m68k_ireg_uint${size}(ireg_duy${reg_size_shift});"
	    $as_echo "  }"
	    $as_echo ""
	    $as_echo "  /* otherwise, the comparisons failed: */"
	    $as_echo "  else {"
	    $as_echo ""
	    $as_echo "    /* write the effective address operands to the compare operands."
	    $as_echo "       \"If Dc1 and Dc2 specify the same data register and the comparison"
	    $as_echo "        fails, memory operand 1 is stored in the data register.\" */"
	    $as_echo "    ic->tme_m68k_ireg_uint${size}(ireg_dcy${reg_size_shift}) = ic->tme_m68k_ireg_memy${size};"
	    $as_echo "    ic->tme_m68k_ireg_uint${size}(ireg_dcx${reg_size_shift}) = ic->tme_m68k_ireg_memx${size};"
	    $as_echo "  }"
	    $as_echo ""
	    $as_echo "  /* finish the read/modify/write cycle: */"
	    $as_echo "  tme_m68k_rmw_finish(ic,"
	    $as_echo "                      &rmw,"
	    $as_echo "                      (ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_Z) != 0);"
	    $as_echo "  TME_M68K_INSN_OK;"
	    $as_echo "}"
	fi
    fi

    # moves:
    if $header; then
	$as_echo "TME_M68K_INSN_DECL(tme_m68k_moves${size});"
    else
	$as_echo ""
	$as_echo "/* moves${size}: */"
	$as_echo "TME_M68K_INSN(tme_m68k_moves${size})"
	$as_echo "{"
	$as_echo "  int ireg;"
	$as_echo "  tme_uint${size}_t ireg_value;"
	$as_echo "  unsigned int ea_reg;"
	$as_echo "  unsigned int increment;"
	$as_echo "  TME_M68K_INSN_PRIV;"
	$as_echo "  TME_M68K_INSN_CANFAULT;"
	$as_echo "  ireg = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(TME_M68K_INSN_SPECOP, 12, 4);"
	$as_echo ""
	$as_echo "  /* in case we're storing the same address register used in a"
	$as_echo "     postincrement or predecrement EA, save the current value"
	$as_echo "     of the register now: */"
	$as_echo "  ireg_value = ic->tme_m68k_ireg_uint${size}(ireg${reg_size_shift});"
	$as_echo ""
	$as_echo "  /* we have to handle postincrement and predecrement ourselves: */"
	$as_echo "  if (!TME_M68K_SEQUENCE_RESTARTING) {"
	$as_echo "    ea_reg = TME_M68K_IREG_A0 + TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 0, 3);"
	$as_echo "    increment = TME_M68K_SIZE_${size};"
	$as_echo "    if (increment == TME_M68K_SIZE_8 && ea_reg == TME_M68K_IREG_A7) {"
	$as_echo "      increment = TME_M68K_SIZE_16;"
	$as_echo "    }"
	$as_echo "    switch (TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 3, 3)) {"
	$as_echo "    case 3: ic->tme_m68k_ireg_uint32(ea_reg) += increment; break;"
	$as_echo "    case 4: ic->_tme_m68k_ea_address = (ic->tme_m68k_ireg_uint32(ea_reg) -= increment); break;"
	$as_echo "    default: break;"
	$as_echo "    }"
	$as_echo "  }"
	$as_echo ""
	$as_echo "  if (TME_M68K_INSN_SPECOP & TME_BIT(11)) {"
	$as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
	$as_echo "      ic->tme_m68k_ireg_memx${size} = ireg_value;"
	$as_echo "      ic->_tme_m68k_ea_function_code = ic->tme_m68k_ireg_dfc;"
	$as_echo "    }"
	$as_echo "    tme_m68k_write_memx${size}(ic);"
	$as_echo "  }"
	$as_echo "  else {"
	$as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
	$as_echo "      ic->_tme_m68k_ea_function_code = ic->tme_m68k_ireg_sfc;"
	$as_echo "    }"
	$as_echo "    tme_m68k_read_memx${size}(ic);"
	if test ${size} != 32; then
	    $as_echo "    if (ireg >= TME_M68K_IREG_A0) {"
	    $as_echo "      ic->tme_m68k_ireg_uint32(ireg) = "
	    $as_echo "        TME_EXT_S${size}_U32((tme_int${size}_t) ic->tme_m68k_ireg_memx${size});"
	    $as_echo "    }"
	    $as_echo "    else"
	    $as_echo_n "  "
	fi
	$as_echo "    ic->tme_m68k_ireg_uint${size}(ireg${reg_size_shift}) = ic->tme_m68k_ireg_memx${size};"
	$as_echo "  }"
	$as_echo "  TME_M68K_INSN_OK;"
	$as_echo "}"
    fi
done

# generate the memory read and write functions:

# permute on size:
for size in 8 16 32 any; do

    # permute on read or write:
    for name in read write; do
	capname=`$as_echo $name | tr a-z A-Z`
	if test $name = read; then
	    from="from"
	else
	    from="to"
	fi

	# permute on the special-purpose what:
	for what in memx mem inst stack; do

	    # placeholder for another permutation:
	    :

		# dispatch on the size:
		_first=_first ; _last=_last
		case "$size" in
		8) _first= ; _last= ;;
		esac

		# set up the details of each special purpose:
		rval="void"
		args=""
		args_proto=""
		fc=""
		addr=""
		count=""
		tlb="TME_M68K_DTLB_ENTRY(ic, bus_context, function_code, linear_address${_first})"
		flags="TME_M68K_BUS_CYCLE_NORMAL"
		case "${name}-${what}-${size}" in
		*-memx-8 | *-memx-16 | *-memx-32)
		    action="${name}_${what}${size}"
		    fcptr="&ic->_tme_m68k_ea_function_code"
		    addrptr="&ic->_tme_m68k_ea_address"
		    reg="ic->tme_m68k_ireg_memx${size}"
		    regptr="&${reg}"
		    ;;
		*-mem-any)
		    action="${name}_${what}"
		    args_proto=", tme_uint8_t *, unsigned int"
		    args=", tme_uint8_t *buffer, unsigned int count"
		    fcptr="&ic->_tme_m68k_ea_function_code"
		    addrptr="&ic->_tme_m68k_ea_address"
		    _last=
		    reg=
		    regptr="buffer"
		    ;;
		*-mem-8 | *-mem-16 | *-mem-32)
		    action="${name}_${what}${size}"
		    args_proto=", int"
		    args="${args_proto} ireg"
		    fcptr="&ic->_tme_m68k_ea_function_code"
		    addrptr="&ic->_tme_m68k_ea_address"
		    reg="ic->tme_m68k_ireg_uint${size}(ireg)"
		    regptr="&${reg}"
		    ;;
		read-stack-16 | read-stack-32)
		    action="pop${size}"
		    args_proto=", tme_uint${size}_t *"
		    args="${args_proto}_value"
		    fc="TME_M68K_FUNCTION_CODE_DATA(ic)"
		    addrptr="&ic->tme_m68k_ireg_a7"
		    regptr="_value"
		    reg="*${regptr}"
		    ;;
		write-stack-16 | write-stack-32)
		    action="push${size}"
		    args_proto=", tme_uint${size}_t "
		    args="${args_proto}value"
		    fc="TME_M68K_FUNCTION_CODE_DATA(ic)"
		    addr="ic->tme_m68k_ireg_a7 - sizeof(tme_uint${size}_t)"
		    reg="value"
		    regptr="&${reg}"
		    ;;
		read-inst-16 | read-inst-32)
		    rval="tme_uint${size}_t"
		    action="fetch${size}"
		    args_proto=", tme_uint32_t"
		    args="${args_proto} pc"
		    fc="TME_M68K_FUNCTION_CODE_PROGRAM(ic)"
		    addrptr="&pc"
		    tlb="&ic->_tme_m68k_itlb"
		    flags="TME_M68K_BUS_CYCLE_FETCH"
		    ;;
		*)
		    continue
		    ;;
		esac

		# if we're making the header, just emit a declaration:
		if $header; then
		    $as_echo "${rval} tme_m68k_${action} _TME_P((struct tme_m68k *${args_proto}));"
		    continue
		fi

		# start the function:
		$as_echo ""
		$as_echo "/* this ${name}s a ${size}-bit ${what} value: */"
		$as_echo "${rval}"
		$as_echo "tme_m68k_${action}(struct tme_m68k *ic${args}) "
		$as_echo "{"

		# our locals:
		$as_echo "  tme_bus_context_t bus_context = ic->_tme_m68k_bus_context;"
		$as_echo_n "  unsigned int function_code = "
		if test "x${fc}" != x; then
		    $as_echo "${fc};"
		    fc="function_code"
		    fcptr="&function_code"
		else
		    fc=`$as_echo ${fcptr} | sed -e 's,^&,,'`
		    $as_echo "${fc};"
		fi
		$as_echo_n "  tme_uint32_t linear_address${_first} = "
		if test "x${addr}" != x; then
		    $as_echo "${addr};"
		    addr="linear_address${_first}"
		    addrptr="&linear_address${_first}"
		else
		    addr=`$as_echo ${addrptr} | sed -e 's,^&,,'`
		    $as_echo "${addr};"
		fi
		if test "x${count}" = x; then
		    if test $size = any; then count=count; else count="sizeof(tme_uint${size}_t)"; fi
		fi
		if test x$_last != x; then
		    $as_echo "  tme_uint32_t linear_address${_last} = linear_address_first + ${count} - 1;";
		fi
		$as_echo "  struct tme_m68k_tlb *tlb = ${tlb};"
		if test $size != any; then
		    memtype="tme_uint${size}_t"
		    $as_echo "  ${memtype} mem_value;"
		    memtype="tme_shared ${memtype} *"
		    if test $name = read; then memtype="const ${memtype}"; fi
		    $as_echo "  ${memtype}mem;"
		fi
		case "$what" in
		inst)
		    $as_echo "  unsigned int fetch_slow_next = ic->_tme_m68k_insn_fetch_slow_next;"
		    regptr="((tme_uint${size}_t *) (((tme_uint8_t *) &ic->_tme_m68k_insn_fetch_buffer[0]) + fetch_slow_next))"
		    reg="*${regptr}"
		    ;;
		esac

		# track statistics:
		$as_echo ""
		$as_echo "#ifdef _TME_M68K_STATS"
		$as_echo "  ic->tme_m68k_stats.tme_m68k_stats_memory_total++;"
		$as_echo "#endif /* _TME_M68K_STATS */"

		# if this is a write, log the value written:
		if test $name = write; then
		    $as_echo ""
		    $as_echo "  /* log the value written: */"
		    if test $size != any; then
			$as_echo "  tme_m68k_verify_mem${size}(ic, ${fc}, ${addr}, ${reg}, TME_BUS_CYCLE_WRITE);"
			$as_echo "  tme_m68k_log(ic, 1000, TME_OK, "
			$as_echo "               (TME_M68K_LOG_HANDLE(ic),"
			$as_echo "                _(\"${action}\t%d:0x%08x:\t0x%0"`expr ${size} / 4`"x\"),"
			$as_echo "                ${fc},"
			$as_echo "                ${addr},"
			$as_echo "                ${reg}));"
		    else
			$as_echo "  tme_m68k_verify_mem_any(ic, ${fc}, ${addr}, ${regptr}, ${count}, TME_BUS_CYCLE_WRITE);"
			$as_echo "  tme_m68k_log_start(ic, 1000, TME_OK) {"
			$as_echo "    unsigned int byte_i;"
			$as_echo "    tme_log_part(TME_M68K_LOG_HANDLE(ic),"
			$as_echo "                 _(\"${action} %d:0x%08x count %d:\"),"
			$as_echo "                 ${fc},"
			$as_echo "                 ${addr},"
			$as_echo "                 ${count});"
			$as_echo "    for (byte_i = 0; byte_i < count ; byte_i++) {"
			$as_echo "      tme_log_part(TME_M68K_LOG_HANDLE(ic), \" 0x%02x\", (${regptr})[byte_i]);"
			$as_echo "    }"
			$as_echo "  } tme_m68k_log_finish(ic);"
		    fi
		fi

		$as_echo ""
		$as_echo "  /* busy this TLB entry: */"
		$as_echo "  tme_m68k_tlb_busy(tlb);"

		# if this is an any-transfer:
		#
		if test $size = any; then
		    $as_echo ""
		    $as_echo "  /* call the full ${name} function: */"
		    $as_echo "  tme_m68k_${name}(ic, tlb, ${fcptr}, ${addrptr}, ${regptr}, ${count}, TME_M68K_BUS_CYCLE_RAW);"

		# otherwise, this is not an any-transfer:
		#
		else

		    # dispatch on the what:
		    #
		    i=
		    case "$what" in
		    inst)
			$as_echo ""
			$as_echo "  /* if this fetch was done by the fast executor: */"
			$as_echo "  if (__tme_predict_true(fetch_slow_next < ic->_tme_m68k_insn_fetch_slow_count_fast)) {"
			$as_echo ""
			$as_echo "    /* the entire fetch must be in the instruction buffer, and"
			$as_echo "       we must be restarting: */"
			$as_echo "    assert ((fetch_slow_next + sizeof(tme_uint${size}_t))"
			$as_echo "            <= ic->_tme_m68k_insn_fetch_slow_count_fast);"
			$as_echo "    assert (TME_M68K_SEQUENCE_RESTARTING);"
			$as_echo "    mem_value = tme_memory_read${size}(${regptr}, sizeof(tme_uint16_t));"
			$as_echo "  }"
			$as_echo ""
			$as_echo "  /* otherwise, this fetch was not done by the fast executor: */"
			$as_echo "  else {"
			$as_echo ""
			$as_echo "    /* if we're restarting, but the offset in the instruction buffer"
			$as_echo "       to fetch into is at the instruction buffer total, this must be"
			$as_echo "       a fake fault caused by the fast executor.  we confirm this by"
			$as_echo "       checking that this transfer \"caused\" the fault, and that this"
			$as_echo "       transfer will be the first slow one after any fast fetches."
			$as_echo "       in this case, we can cancel the restart for now: */"
			$as_echo "    if (TME_M68K_SEQUENCE_RESTARTING"
			$as_echo "        && (fetch_slow_next"
			$as_echo "            == ic->_tme_m68k_insn_fetch_slow_count_total)) {"
			$as_echo "      assert ((ic->_tme_m68k_sequence._tme_m68k_sequence_transfer_next"
			$as_echo "               == ic->_tme_m68k_sequence._tme_m68k_sequence_transfer_faulted)"
			$as_echo "              && (fetch_slow_next"
			$as_echo "                  == ic->_tme_m68k_insn_fetch_slow_count_fast));"
			$as_echo "      ic->_tme_m68k_sequence._tme_m68k_sequence_transfer_faulted--;"
			$as_echo "    }"
			$as_echo ""
			$as_echo "    /* if we're not restarting: */"
			$as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
			$as_echo ""
			$as_echo "      /* we advance the instruction buffer total *before* we do"
			$as_echo "         what may be a slow fetch, because we may transfer a few"
			$as_echo "         bytes and then fault.  without this, those few bytes"
			$as_echo "         would not get saved in the exception stack frame and"
			$as_echo "         restored later before the continuation of the fetch: */"
			$as_echo "      ic->_tme_m68k_insn_fetch_slow_count_total += sizeof(tme_uint${size}_t);"
			$as_echo "    }"
			$as_echo ""
			$as_echo "    /* make sure that if this is a new transfer or if this"
			$as_echo "       transfer faulted, that we're fetching for the current"
			$as_echo "       last positions in the instruction buffer: */"
			$as_echo "    assert ((ic->_tme_m68k_sequence._tme_m68k_sequence_transfer_next"
			$as_echo "             < ic->_tme_m68k_sequence._tme_m68k_sequence_transfer_faulted)"
			$as_echo "            || ((fetch_slow_next + sizeof(tme_uint${size}_t))"
			$as_echo "                == ic->_tme_m68k_insn_fetch_slow_count_total));"
			i="  "
			;;
		    esac

		    $as_echo ""
		    $as_echo "${i}  /* if we aren't restarting, and this address is properly aligned,"
		    $as_echo "${i}     and this TLB entry covers the operand and allows fast ${name}s: */"
		    $as_echo "${i}  if (__tme_predict_true(!TME_M68K_SEQUENCE_RESTARTING"
		    align_min="sizeof(tme_uint8_t)"
		    if test $size != 8; then
			$as_echo_n "${i}                         && ("
			if test $what = inst; then
			    align_min="sizeof(tme_uint16_t)"
			    $as_echo_n "(${align_min} - 1)"
			else
			    $as_echo_n "ic->_tme_m68k_bus_16bit"
			fi
			$as_echo " & linear_address${_first}) == 0"
		    fi
		    $as_echo "${i}                         && tme_m68k_tlb_is_valid(tlb)"
		    $as_echo "${i}                         && tlb->tme_m68k_tlb_bus_context == bus_context"
		    $as_echo "${i}                         && (tlb->tme_m68k_tlb_function_codes_mask"
		    $as_echo "${i}                             & TME_BIT(function_code))"
		    $as_echo "${i}                         && linear_address${_first} >= (tme_bus_addr32_t) tlb->tme_m68k_tlb_linear_first"
		    $as_echo "${i}                         && linear_address${_last} <= (tme_bus_addr32_t) tlb->tme_m68k_tlb_linear_last"
		    $as_echo "${i}                         && tlb->tme_m68k_tlb_emulator_off_${name} != TME_EMULATOR_OFF_UNDEF)) {"

		    $as_echo ""
		    $as_echo "${i}    /* make the emulator memory pointer: */"
		    $as_echo "${i}    mem = (${memtype}) (tlb->tme_m68k_tlb_emulator_off_${name} + linear_address${_first});"

		    if test $name = write; then
			if test $size = 8; then
			    $as_echo ""
			    $as_echo "${i}    /* get the value to write: */"
			    $as_echo "${i}    mem_value = ${reg};"
			else
			    $as_echo ""
			    $as_echo "${i}    /* get the value to write, in big-endian byte order: */"
			    $as_echo "${i}    mem_value = tme_htobe_u${size}(${reg});"
			fi
		    fi

		    $as_echo ""
		    $as_echo "${i}    /* do the ${size}-bit bus ${name}: */"
		    if test $name = read; then
			$as_echo_n "${i}    mem_value = tme_memory_bus_${name}${size}(mem"
		    else
			$as_echo_n "${i}    tme_memory_bus_${name}${size}(mem, mem_value"
		    fi
		    $as_echo ", tlb->tme_m68k_tlb_bus_rwlock, ${align_min}, sizeof(tme_uint32_t));"

		    if test $name = read; then
			if test $what = inst; then
			    $as_echo ""
			    $as_echo "${i}    /* put the value read, in host byte order: */"
			    $as_echo "${i}    mem_value = tme_betoh_u${size}(mem_value);"
			    $as_echo "${i}    tme_memory_write${size}(${regptr}, mem_value, sizeof(tme_uint16_t));"
			elif test $size = 8; then
			    $as_echo ""
			    $as_echo "${i}    /* put the value read: */"
			    $as_echo "${i}    ${reg} = mem_value;"
			else
			    $as_echo ""
			    $as_echo "${i}    /* put the value read, in host byte order: */"
			    $as_echo "${i}    ${reg} = tme_betoh_u${size}(mem_value);"
			fi
		    fi

		    $as_echo ""
		    $as_echo "${i}    /* step the transfer count: */"
		    $as_echo "${i}    TME_M68K_SEQUENCE_TRANSFER_STEP;"
		    $as_echo "${i}  }"

		    $as_echo ""
		    $as_echo "${i}  /* otherwise, do the bus cycles the slow way: */"
		    $as_echo "${i}  else {"
		    $as_echo "${i}    tme_m68k_${name}${size}(ic, tlb,"
		    $as_echo "${i}                    ${fcptr},"
		    $as_echo "${i}                    ${addrptr},"
		    $as_echo "${i}                    ${regptr},"
		    $as_echo "${i}                    ${flags});"
		    if test ${what} = inst; then
			$as_echo "${i}    mem_value = tme_memory_read${size}(${regptr}, sizeof(tme_uint16_t));"
		    fi
		    $as_echo "${i}  }"
		fi
		if test "x${i}" != x; then
		    $as_echo "  }"
		fi

		$as_echo ""
		$as_echo "  /* unbusy this TLB entry: */"
		$as_echo "  tme_m68k_tlb_unbusy(tlb);"

		# if this is a read, log the value read:
		if test $name = read; then
		    $as_echo ""
		    $as_echo "  /* log the value read: */"
		    if test $size != any; then
			$as_echo "  tme_m68k_verify_mem${size}(ic, ${fc}, ${addr}, ${reg}, TME_BUS_CYCLE_READ);"
			$as_echo "  tme_m68k_log(ic, 1000, TME_OK,"
			$as_echo "               (TME_M68K_LOG_HANDLE(ic),"
			$as_echo "                _(\"${action}\t%d:0x%08x:\t0x%0"`expr ${size} / 4`"x\"),"
			$as_echo "                ${fc},"
			$as_echo "                ${addr},"
			$as_echo "                ${reg}));"
		    else
			$as_echo "  tme_m68k_verify_mem_any(ic, ${fc}, ${addr}, ${regptr}, ${count}, TME_BUS_CYCLE_READ);"
			$as_echo "  tme_m68k_log_start(ic, 1000, TME_OK) {"
			$as_echo "    unsigned int byte_i;"
			$as_echo "    tme_log_part(TME_M68K_LOG_HANDLE(ic),"
			$as_echo "                 _(\"${action} %d:0x%08x count %d:\"),"
			$as_echo "                 ${fc},"
			$as_echo "                 ${addr},"
			$as_echo "                 ${count});"
			$as_echo "    for (byte_i = 0; byte_i < count ; byte_i++) {"
			$as_echo "      tme_log_part(TME_M68K_LOG_HANDLE(ic), \" 0x%02x\", (${regptr})[byte_i]);"
			$as_echo "    }"
			$as_echo "  } tme_m68k_log_finish(ic);"
		    fi
		fi

		# perform any updating and value returning:
		case "$what" in
		stack)
		    if test $name = read; then dir="+"; else dir="-"; fi
		    $as_echo "  if (!TME_M68K_SEQUENCE_RESTARTING) {"
		    $as_echo "    ic->tme_m68k_ireg_a7 ${dir}= sizeof(tme_uint${size}_t);"
		    $as_echo "  }"
		    ;;
		inst)
		    $as_echo ""
		    $as_echo "  /* advance the offset in the instruction buffer for the next slow fetch: */"
		    $as_echo "  fetch_slow_next += sizeof(tme_uint${size}_t);"
		    $as_echo "  ic->_tme_m68k_insn_fetch_slow_next = fetch_slow_next;"
		    $as_echo ""
		    $as_echo "  /* return the fetched value: */"
		    $as_echo "  return(mem_value);"
		    ;;
		esac

		$as_echo "}"
	    :
	done

	# the general-purpose cycle-making read and write macros:
	if test ${size} != any; then

	    # if we're making the header, emit a macro:
	    if $header; then
		$as_echo "#define tme_m68k_${name}${size}(ic, t, fc, la, _v, f) \\"
		$as_echo "  tme_m68k_${name}(ic, t, fc, la, (tme_uint8_t *) (_v), sizeof(tme_uint${size}_t), f)"
	    fi
	else

	    # if we're making the header, just emit a declaration:
	    if $header; then
		$as_echo "void tme_m68k_${name} _TME_P((struct tme_m68k *, struct tme_m68k_tlb *, unsigned int *, tme_uint32_t *, tme_uint8_t *, unsigned int, unsigned int));"
		continue
	    fi

	    $as_echo ""
	    $as_echo "/* this ${name}s a region of address space using actual bus cycles: */"
	    $as_echo "void"
	    $as_echo "tme_m68k_${name}(struct tme_m68k *ic, "
	    $as_echo "              struct tme_m68k_tlb *tlb,"
	    $as_echo "              unsigned int *_function_code, "
	    $as_echo "              tme_uint32_t *_linear_address, "
	    $as_echo "              tme_uint8_t *reg,"
	    $as_echo "              unsigned int reg_size,"
	    $as_echo "              unsigned int flags)"
	    $as_echo "{"

	    # our locals:
	    $as_echo "  unsigned int function_code;"
	    $as_echo "  tme_uint32_t linear_address;"
	    $as_echo "  tme_bus_addr_t physical_address;"
	    $as_echo "  int shift;"
	    $as_echo "  struct tme_bus_cycle cycle;"
	    $as_echo "  unsigned int transferred, resid, cycle_size;"
	    $as_echo "  int exception;"
	    $as_echo "  int err;"
	    $as_echo "  tme_uint8_t *reg_p;"
	    $as_echo "  unsigned int buffer_i;"
	    $as_echo "  tme_uint8_t reg_buffer[sizeof(tme_uint32_t) * 2];"
	    if test ${name} = read; then name_const_mem="const "; else name_const_mem= ; fi
	    $as_echo "  ${name_const_mem}tme_shared tme_uint8_t *mem;"

	    $as_echo ""
	    $as_echo "  /* if we're not restarting, everything is fresh: */"
	    $as_echo "  if (!TME_M68K_SEQUENCE_RESTARTING) {"
	    $as_echo "    function_code = *_function_code;"
	    $as_echo "    linear_address = *_linear_address;"
	    $as_echo "    transferred = 0;"
	    $as_echo "  }"

	    $as_echo ""
	    $as_echo "  /* otherwise, if this is the transfer that faulted, restore"
	    $as_echo "     our state to the cycle that faulted, then take into account"
	    $as_echo "     any data provided by a software rerun of the faulted cycle: */"
	    $as_echo "  else if (ic->_tme_m68k_sequence._tme_m68k_sequence_transfer_faulted"
	    $as_echo "           == ic->_tme_m68k_sequence._tme_m68k_sequence_transfer_next) {"
	    $as_echo "    function_code = *_function_code = ic->_tme_m68k_group0_function_code;"
	    $as_echo "    linear_address = ic->_tme_m68k_group0_address;"
	    $as_echo "    transferred = ic->_tme_m68k_sequence._tme_m68k_sequence_transfer_faulted_after;"
	    $as_echo "    if (transferred >= reg_size) abort();"
	    $as_echo "    *_linear_address = linear_address - transferred;"
	    $as_echo "    resid = reg_size - transferred;"
	    $as_echo "    if (ic->_tme_m68k_group0_buffer_${name}_size > resid) abort();"
	    $as_echo "    if (ic->_tme_m68k_group0_buffer_${name}_softrr > resid) abort();"
	    if test $name = read; then cmp=">"; else cmp="=="; fi
	    $as_echo "    if (ic->_tme_m68k_group0_buffer_${name}_softrr ${cmp} 0) {"
	    $as_echo "#ifdef WORDS_BIGENDIAN"
	    $as_echo "      memcpy(reg + transferred, "
	    $as_echo "             ic->_tme_m68k_group0_buffer_${name},"
	    $as_echo "             ic->_tme_m68k_group0_buffer_${name}_size);"
	    $as_echo "#else  /* !WORDS_BIGENDIAN */"
	    $as_echo "      reg_p = (reg + reg_size - 1) - transferred;"
	    $as_echo "      for (buffer_i = 0;"
	    $as_echo "           buffer_i < ic->_tme_m68k_group0_buffer_${name}_size;"
	    $as_echo "           buffer_i++) {"
	    $as_echo "        *(reg_p--) = ic->_tme_m68k_group0_buffer_${name}[buffer_i];"
	    $as_echo "      }"
	    $as_echo "#endif /* !WORDS_BIGENDIAN */"
	    $as_echo "    }"
	    $as_echo "    transferred += ic->_tme_m68k_group0_buffer_${name}_softrr;"
	    $as_echo "  }"

	    $as_echo ""
	    $as_echo "  /* otherwise, a later transfer has faulted.  just step the"
	    $as_echo "     transfer number and return: */"
	    $as_echo "  else {"
	    $as_echo "    TME_M68K_SEQUENCE_TRANSFER_STEP;"
	    $as_echo "    return;"
	    $as_echo "  }"

	    $as_echo ""
	    $as_echo "  /* do as many bus cycles as needed to complete the transfer: */"
	    $as_echo "  exception = TME_M68K_EXCEPTION_NONE;"
	    $as_echo "  cycle_size = 0;"
	    $as_echo "  for(; transferred < reg_size; ) {"
	    $as_echo "    resid = reg_size - transferred;"

	    $as_echo ""
	    $as_echo "    /* start the bus cycle structure: */"
	    $as_echo "    cycle.tme_bus_cycle_type = TME_BUS_CYCLE_${capname};"
	    $as_echo "    if (TME_ENDIAN_NATIVE == TME_ENDIAN_BIG"
	    $as_echo "        || (flags & TME_M68K_BUS_CYCLE_RAW)) {"
	    $as_echo "      cycle.tme_bus_cycle_buffer = reg + transferred;"
	    $as_echo "      cycle.tme_bus_cycle_buffer_increment = 1;"
	    $as_echo "    }"
	    $as_echo "    else {"
	    $as_echo "      cycle.tme_bus_cycle_buffer = reg + reg_size - (1 + transferred);"
	    $as_echo "      cycle.tme_bus_cycle_buffer_increment = -1;"
	    $as_echo "    }"

	    $as_echo ""
	    $as_echo "    /* if we're emulating a CPU with a 16-bit bus interface: */"
	    $as_echo "    if (ic->_tme_m68k_bus_16bit) {"
	    $as_echo ""
	    $as_echo "      /* if we're trying to transfer a non-power-of-two"
	    $as_echo "         number of bytes, either the CPU is broken (no"
	    $as_echo "         instructions ever transfer a non-power-of-two"
	    $as_echo "         number of bytes), or this function allowed an"
	    $as_echo "         unaligned transfer: */"
	    $as_echo "      assert((resid & (resid - 1)) == 0"
	    $as_echo "             || (flags & TME_M68K_BUS_CYCLE_RAW));"
	    $as_echo ""
	    $as_echo "      /* only byte transfers can be unaligned: */"
	    $as_echo "      if (resid > sizeof(tme_uint8_t)"
	    $as_echo "          && (linear_address & 1)) {"
	    $as_echo "          exception = TME_M68K_EXCEPTION_AERR;"
	    $as_echo "          break;"
	    $as_echo "      }"
	    $as_echo ""
	    $as_echo "      /* set the bus-size specific parts of the bus cycle structure: */"
	    $as_echo "      cycle_size = TME_MIN(resid, sizeof(tme_uint16_t));"
	    $as_echo "      cycle.tme_bus_cycle_size = cycle_size;"
	    $as_echo "      cycle.tme_bus_cycle_port = TME_BUS_CYCLE_PORT(0, TME_BUS16_LOG2);"
	    $as_echo "      cycle.tme_bus_cycle_lane_routing = "
	    $as_echo "        &tme_m68k_router_16[TME_M68K_BUS_ROUTER_INDEX(TME_BUS16_LOG2, cycle_size, linear_address)];"
	    $as_echo "    }"
	    $as_echo ""
	    $as_echo "    /* otherwise we're emulating a CPU with a 32-bit bus interface: */"
	    $as_echo "    else {"
	    if test $name = read; then
		$as_echo ""
		$as_echo "      /* an instruction fetch must be aligned: */"
		$as_echo "      if (flags & TME_M68K_BUS_CYCLE_FETCH) {"
		$as_echo "        if (linear_address & 1) {"
		$as_echo "          exception = TME_M68K_EXCEPTION_AERR;"
		$as_echo "          break;"
		$as_echo "        }"
		$as_echo "        assert(!(resid & 1));"
		$as_echo "      }"
	    fi
	    $as_echo ""
	    $as_echo "      /* set the bus-size specific parts of the bus cycle structure: */"
	    $as_echo "      cycle_size = TME_MIN(resid, sizeof(tme_uint32_t) - (linear_address & (sizeof(tme_uint32_t) - 1)));"
	    $as_echo "      cycle.tme_bus_cycle_size = cycle_size;"
	    $as_echo "      cycle.tme_bus_cycle_port = TME_BUS_CYCLE_PORT(0, TME_BUS32_LOG2);"
	    $as_echo "      cycle.tme_bus_cycle_lane_routing = "
	    $as_echo "        &tme_m68k_router_32[TME_M68K_BUS_ROUTER_INDEX(TME_BUS32_LOG2, cycle_size, linear_address)];"
	    $as_echo "    }"

	    $as_echo ""
	    $as_echo "    /* loop while this TLB entry is invalid or does not apply: */"
	    $as_echo "    for (; __tme_predict_false(tme_m68k_tlb_is_invalid(tlb)"
	    $as_echo "                               || tlb->tme_m68k_tlb_bus_context != ic->_tme_m68k_bus_context"
	    $as_echo "                               || (tlb->tme_m68k_tlb_function_codes_mask & TME_BIT(function_code)) == 0"
	    $as_echo "                               || linear_address < (tme_bus_addr32_t) tlb->tme_m68k_tlb_linear_first"
	    $as_echo "                               || linear_address > (tme_bus_addr32_t) tlb->tme_m68k_tlb_linear_last"
	    $as_echo "                               || (tlb->tme_m68k_tlb_emulator_off_${name} == TME_EMULATOR_OFF_UNDEF"
	    $as_echo "                                   && (tlb->tme_m68k_tlb_cycles_ok & TME_BUS_CYCLE_${capname}) == 0)); ) {"
	    $as_echo ""
	    $as_echo "      /* this must not be part of a read/modify/write cycle: */"
	    $as_echo "      assert(!(flags & TME_M68K_BUS_CYCLE_RMW));"
	    $as_echo ""
	    $as_echo "      /* fill this TLB entry: */"
	    $as_echo "      tme_m68k_tlb_fill(ic, tlb,"
	    $as_echo "                        function_code,"
	    $as_echo "                        linear_address,"
	    $as_echo "                        TME_BUS_CYCLE_${capname});"
	    $as_echo "    }"
	    $as_echo ""
	    $as_echo "    /* if this TLB entry allows for fast ${name}s: */"
	    $as_echo "    mem = tlb->tme_m68k_tlb_emulator_off_${name};"
	    $as_echo "    if (__tme_predict_true(mem != TME_EMULATOR_OFF_UNDEF)) {"
	    $as_echo ""
	    $as_echo "      /* make the emulator memory pointer: */"
	    $as_echo "      mem += linear_address;"
	    $as_echo ""
	    $as_echo "      /* limit the cycle size to addresses covered by the TLB entry: */"
	    $as_echo "      if (__tme_predict_false((cycle_size - 1)"
	    $as_echo "                              > (((tme_bus_addr32_t) tlb->tme_m68k_tlb_linear_last) - linear_address))) {"
	    $as_echo "        cycle_size = (((tme_bus_addr32_t) tlb->tme_m68k_tlb_linear_last) - linear_address) + 1;"
	    $as_echo "      }"
	    $as_echo ""
	    $as_echo "      /* if this is a little-endian host, and this isn't a raw ${name}: */"
	    $as_echo "      if (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE"
	    $as_echo "          && (flags & TME_M68K_BUS_CYCLE_RAW) == 0) {"
	    if test ${name} = write; then
		$as_echo ""
		$as_echo "        /* byteswap the data to write in the intermediate buffer: */"
		$as_echo "        reg_p = cycle.tme_bus_cycle_buffer;"
		$as_echo "        buffer_i = 0;"
		$as_echo "        do {"
		$as_echo "          reg_buffer[buffer_i] = *(reg_p--);"
		$as_echo "        } while (++buffer_i != cycle_size);"
	    fi
	    $as_echo ""
	    $as_echo "        /* use the intermediate buffer for the ${name}: */"
	    $as_echo "        cycle.tme_bus_cycle_buffer = &reg_buffer[0];"
	    $as_echo "      }"
	    $as_echo ""
	    $as_echo "      /* do the bus ${name}: */"
	    $as_echo "      tme_memory_bus_${name}_buffer(mem,"
	    $as_echo "                                 cycle.tme_bus_cycle_buffer,"
	    $as_echo "                                 cycle_size,"
	    $as_echo "                                 tlb->tme_m68k_tlb_bus_rwlock,"
	    $as_echo "                                 sizeof(tme_uint8_t),"
	    $as_echo "                                 sizeof(tme_uint32_t));"
	    if test ${name} = read; then
		$as_echo ""
		$as_echo "      /* if this is a little-endian host, and this isn't a raw ${name}: */"
		$as_echo "      if (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE"
		$as_echo "          && (flags & TME_M68K_BUS_CYCLE_RAW) == 0) {"
		$as_echo ""
		$as_echo "        /* byteswap the read data in the intermediate buffer: */"
		$as_echo "        reg_p = reg + reg_size - (1 + transferred);"
		$as_echo "        buffer_i = 0;"
		$as_echo "        do {"
		$as_echo "          *(reg_p--) = reg_buffer[buffer_i];"
		$as_echo "        } while (++buffer_i != cycle_size);"
		$as_echo "      }"
	    fi
	    $as_echo ""
	    $as_echo "      /* update: */"
	    $as_echo "      linear_address += cycle_size;"
	    $as_echo "      transferred += cycle_size;"
	    $as_echo "      continue;"
	    $as_echo "    }"
	    $as_echo ""
	    $as_echo "    /* otherwise, this TLB entry does not allow for fast ${name}s: */"
	    $as_echo ""
	    $as_echo "    /* if this is a part of a read/modify/write cycle: */"
	    $as_echo "    if (flags & TME_M68K_BUS_CYCLE_RMW) {"
	    $as_echo ""
	    if test ${name} = read; then
		$as_echo "      /* if this is the first cycle in this read,"
		$as_echo "         we will establish the new lock, otherwise"
		$as_echo "         we will continue using the existing lock: */"
	    else
		$as_echo "      /* we will continue using the existing lock."
		$as_echo "         the device will automatically unlock after"
		$as_echo "         the last cycle of this write: */"
	    fi
	    $as_echo "      cycle.tme_bus_cycle_type"
	    $as_echo "        |= (TME_BUS_CYCLE_LOCK"
	    $as_echo_n "            | ("
	    if test ${name} = read; then
		$as_echo_n "transferred == 0 ? 0 : "
	    fi
	    $as_echo "TME_BUS_CYCLE_UNLOCK));"
	    $as_echo "    }"

	    $as_echo ""
	    $as_echo "    /* form the physical address for the bus cycle handler: */"
	    $as_echo "    physical_address = tlb->tme_m68k_tlb_addr_offset + linear_address;"
	    $as_echo "    shift = tlb->tme_m68k_tlb_addr_shift;"
	    $as_echo "    if (shift < 0) {"
	    $as_echo "      physical_address <<= (0 - shift);"
	    $as_echo "    }"
	    $as_echo "    else if (shift > 0) {"
	    $as_echo "      physical_address >>= shift;"
	    $as_echo "    }"
	    $as_echo "    cycle.tme_bus_cycle_address = physical_address;"

	    $as_echo ""
	    $as_echo "    /* run the bus cycle: */"
	    $as_echo "    tme_m68k_tlb_unbusy(tlb);"
	    $as_echo "    tme_m68k_callout_unlock(ic);"
	    $as_echo "    err = (*tlb->tme_m68k_tlb_bus_tlb.tme_bus_tlb_cycle)"
	    $as_echo "         (tlb->tme_m68k_tlb_bus_tlb.tme_bus_tlb_cycle_private, &cycle);"
	    $as_echo "    tme_m68k_callout_relock(ic);"
	    $as_echo "    tme_m68k_tlb_busy(tlb);"
	    $as_echo ""
	    $as_echo "    /* if the TLB entry was invalidated before the ${name}: */"
	    $as_echo "    if (err == EBADF"
	    $as_echo "        && tme_m68k_tlb_is_invalid(tlb)) {"
	    $as_echo "      cycle.tme_bus_cycle_size = 0;"
	    $as_echo "    }"
	    $as_echo ""
	    $as_echo "    /* otherwise, if we didn't get a bus error, but some"
	    $as_echo "       synchronous event has happened: */"
	    $as_echo "    else if (err == TME_BUS_CYCLE_SYNCHRONOUS_EVENT) {"
	    $as_echo ""
	    $as_echo "      /* after the currently executing instruction finishes, check"
	    $as_echo "         for external resets, halts, or interrupts: */"
	    $as_echo "      ic->_tme_m68k_instruction_burst_remaining = 0;"
	    $as_echo "    }"
	    $as_echo ""
	    $as_echo "    /* otherwise, any other error might be a bus error: */"
	    $as_echo "    else if (err != TME_OK) {"
	    $as_echo "      err = tme_bus_tlb_fault(&tlb->tme_m68k_tlb_bus_tlb, &cycle, err);"
	    $as_echo "      if (err != TME_OK) {"
	    $as_echo "        exception = TME_M68K_EXCEPTION_BERR;"
	    $as_echo "        break;"
	    $as_echo "      }"
	    $as_echo "    }"
	    $as_echo ""
	    $as_echo "    /* update: */"
	    $as_echo "    linear_address += cycle.tme_bus_cycle_size;"
	    $as_echo "    transferred += cycle.tme_bus_cycle_size;"
	    $as_echo "  }"

	    $as_echo ""
	    $as_echo "  /* NB: there is no need to explicitly unlock"
	    $as_echo "     a device.  if a locked bus cycle to a device"
	    $as_echo "     faults, the lock must be automatically unlocked: */"

	    $as_echo ""
	    $as_echo "  /* if we faulted, stash the information the fault stacker"
	    $as_echo "     will need and start exception processing: */"
	    $as_echo "  if (exception != TME_M68K_EXCEPTION_NONE) {"
	    $as_echo_n "    ic->_tme_m68k_group0_flags = flags"
	    if test $name = read; then
		$as_echo_n " | TME_M68K_BUS_CYCLE_READ"
	    fi
	    $as_echo ";"
	    $as_echo "    ic->_tme_m68k_group0_function_code = function_code;"
	    $as_echo "    ic->_tme_m68k_group0_address = linear_address;"
	    $as_echo "    ic->_tme_m68k_group0_sequence = ic->_tme_m68k_sequence;"
	    $as_echo "    ic->_tme_m68k_group0_sequence._tme_m68k_sequence_transfer_faulted_after = transferred;"
	    $as_echo "    ic->_tme_m68k_group0_buffer_${name}_size = cycle_size;"
	    if test $name = write; then
		$as_echo "#ifdef WORDS_BIGENDIAN"
		$as_echo "    memcpy(ic->_tme_m68k_group0_buffer_${name},"
		$as_echo "           reg + transferred,"
		$as_echo "           ic->_tme_m68k_group0_buffer_${name}_size);"
		$as_echo "#else  /* !WORDS_BIGENDIAN */"
		$as_echo "      reg_p = (reg + reg_size - 1) - transferred;"
		$as_echo "      for (buffer_i = 0;"
		$as_echo "           buffer_i < ic->_tme_m68k_group0_buffer_${name}_size;"
		$as_echo "           buffer_i++) {"
		$as_echo "        ic->_tme_m68k_group0_buffer_${name}[buffer_i] = *(reg_p--);"
		$as_echo "      }"
		$as_echo "#endif /* !WORDS_BIGENDIAN */"
	    fi
	    $as_echo "    if (ic->_tme_m68k_group0_hook != NULL) {"
	    $as_echo "      (*ic->_tme_m68k_group0_hook)(ic);"
	    $as_echo "    }"
	    $as_echo "    ic->_tme_m68k_group0_sequence._tme_m68k_sequence_transfer_faulted = ";
	    $as_echo "      ic->_tme_m68k_group0_sequence._tme_m68k_sequence_transfer_next;"
	    $as_echo "    tme_m68k_tlb_unbusy(tlb);"
	    $as_echo "    tme_m68k_exception(ic, exception);"
	    $as_echo "  }"

	    $as_echo ""
	    $as_echo "  /* otherwise, this transfer has now completed: */"
	    $as_echo "  TME_M68K_SEQUENCE_TRANSFER_STEP;"

	    $as_echo "}"
	fi
    done

done

# generate the BCD math functions:
for name in abcd sbcd nbcd; do

    # if we're making the header, just emit a declaration:
    if $header; then
	$as_echo "TME_M68K_INSN_DECL(tme_m68k_${name});"
	continue
    fi

    # emit the function:
    $as_echo ""
    $as_echo "TME_M68K_INSN(tme_m68k_${name})"
    $as_echo "{"
    $as_echo "  tme_uint8_t dst, dst_msd, dst_lsd;"
    $as_echo "  tme_uint8_t src, src_msd, src_lsd;"
    $as_echo "  tme_uint8_t res, res_msd, res_lsd;"
    $as_echo "  tme_uint8_t flags;"

    # get the operands:
    if test $name != nbcd; then
	$as_echo "  int memory;"
	$as_echo "  int rx, ry, function_code;"
	$as_echo ""
	$as_echo "  /* load the operands: */"
	$as_echo "  rx = TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 0, 3);"
	$as_echo "  ry = TME_FIELD_EXTRACTU(TME_M68K_INSN_OPCODE, 9, 3);"
	$as_echo "  memory = (TME_M68K_INSN_OPCODE & TME_BIT(3)) != 0;"
	$as_echo "  function_code = TME_M68K_FUNCTION_CODE_DATA(ic);"
	$as_echo "  if (memory) {"
	$as_echo "    TME_M68K_INSN_CANFAULT;"
	$as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
	# the stack pointer must always be decremented by a multiple of two.
	# assuming rx < 8, ((rx + 1) >> 3) == 1 iff rx == 7, meaning %a7:
	$as_echo "      ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + rx) -= sizeof(tme_uint8_t) + ((rx + 1) >> 3);"
	$as_echo "      ic->_tme_m68k_ea_function_code = function_code;"
	$as_echo "      ic->_tme_m68k_ea_address = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + rx);"
	$as_echo "    }"
	$as_echo "    tme_m68k_read_memx8(ic);"
	$as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
	# the stack pointer must always be incremented by a multiple of two.
	# assuming rx < 8, ((rx + 1) >> 3) == 1 iff rx == 7, meaning %a7:
	$as_echo "      ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ry) -= sizeof(tme_uint8_t) + ((ry + 1) >> 3);"
	$as_echo "      ic->_tme_m68k_ea_function_code = function_code;"
	$as_echo "      ic->_tme_m68k_ea_address = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ry);"
	$as_echo "    }"
	$as_echo "    tme_m68k_read_mem8(ic, TME_M68K_IREG_MEMY32);"
	$as_echo "    src = ic->tme_m68k_ireg_memx8;"
	$as_echo "    dst = ic->tme_m68k_ireg_memy8;"
	$as_echo "  }"
	$as_echo "  else {"
	$as_echo "    src = ic->tme_m68k_ireg_uint8(rx << 2);"
	$as_echo "    dst = ic->tme_m68k_ireg_uint8(ry << 2);"
	$as_echo "  }"
    else
	$as_echo ""
	$as_echo "  dst = 0x00;"
	$as_echo "  src = TME_M68K_INSN_OP1(tme_uint8_t);"
    fi
    $as_echo "  dst_lsd = TME_FIELD_EXTRACTU(dst, 0, 4);"
    $as_echo "  dst_msd = TME_FIELD_EXTRACTU(dst, 4, 4);"
    $as_echo "  src_lsd = TME_FIELD_EXTRACTU(src, 0, 4);"
    $as_echo "  src_msd = TME_FIELD_EXTRACTU(src, 4, 4);"

    # perform the operation:
    $as_echo ""
    $as_echo "  /* perform the operation: */"
    if test $name = abcd; then op='+' ; opc='-' ; else op='-' ; opc='+' ; fi
    $as_echo "  res_lsd = dst_lsd ${op} src_lsd ${op} ((ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_X) != 0);"
    $as_echo "  res_msd = dst_msd ${op} src_msd;"
    $as_echo "  flags = 0;"
    $as_echo "  if (res_lsd > 9) {"
    $as_echo "    res_lsd ${opc}= 10;"
    $as_echo "    res_msd ${op}= 1;"
    $as_echo "  }"
    $as_echo "  if (res_msd > 9) {"
    $as_echo "    res_msd ${opc}= 10;"
    $as_echo "    flags |= TME_M68K_FLAG_C | TME_M68K_FLAG_X;"
    $as_echo "  }"
    $as_echo "  res = (res_msd << 4) + (res_lsd & 0xf);"
    $as_echo "  if (res == 0) flags |= TME_M68K_FLAG_N;"
    $as_echo ""

    # store the result
    $as_echo "  /* store the result and set the flags: */"
    if test $name != nbcd; then
	$as_echo "  if (memory) {"
	$as_echo "    if (!TME_M68K_SEQUENCE_RESTARTING) {"
	$as_echo "      ic->tme_m68k_ireg_memx8 = res;"
	$as_echo "      ic->_tme_m68k_ea_function_code = function_code;"
	$as_echo "      ic->_tme_m68k_ea_address = ic->tme_m68k_ireg_uint32(TME_M68K_IREG_A0 + ry);"
	$as_echo "      ic->tme_m68k_ireg_ccr = flags;"
	$as_echo "     }"
	$as_echo "     tme_m68k_write_memx8(ic);"
	$as_echo "  }"
	$as_echo "  else {"
	$as_echo "    ic->tme_m68k_ireg_uint8(ry << 2) = res;"
	$as_echo "    ic->tme_m68k_ireg_ccr = flags;"
	$as_echo "  }"
    else
	$as_echo "  TME_M68K_INSN_OP1(tme_uint8_t) = res;"
	$as_echo "  ic->tme_m68k_ireg_ccr = flags;"
    fi
    $as_echo ""
    $as_echo "  TME_M68K_INSN_OK;"
    $as_echo "}"
done

# generate the ccr and sr functions:
for reg in ccr sr; do
    for name in ori andi eori move_to; do
	if test $reg = ccr; then size=8 ; else size=16 ; fi

	# if we're making the header, just emit a declaration:
	if $header; then
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_${name}_${reg});"
	    continue
	fi

	# emit the function:
	$as_echo ""
	$as_echo "TME_M68K_INSN(tme_m68k_${name}_${reg})"
	$as_echo "{"
	$as_echo "  tme_uint${size}_t reg;"

	# form the new register value:
	src=0
	$as_echo_n "  reg = "
	case $name in
	ori) $as_echo_n "ic->tme_m68k_ireg_${reg} | " ;;
	andi) $as_echo_n "ic->tme_m68k_ireg_${reg} & " ;;
	eori) $as_echo_n "ic->tme_m68k_ireg_${reg} ^ " ;;
	move_to) size=16 ; src=1 ;;
	esac
	$as_echo "(TME_M68K_INSN_OP${src}(tme_uint${size}_t) & TME_M68K_FLAG_"`$as_echo $reg | tr a-z A-Z`");"

	# sr changes are special:
	if test $reg = sr; then
	    $as_echo "  TME_M68K_INSN_PRIV;"
	    $as_echo "  TME_M68K_INSN_CHANGE_SR(reg);"
	else
	    $as_echo "  ic->tme_m68k_ireg_${reg} = reg;"
	fi

	$as_echo "  TME_M68K_INSN_OK;"
	$as_echo "}"
    done
done

# generate the multiply and divide instructions:

# permute on signed vs. unsigned:
for _sign in u s; do
    if test $_sign = u; then sign=u; else sign=; fi

    # permute on short vs. long:
    for size in s l; do
	if test $size = s; then
	    _size=
	    small=16
	    large=32
	    reg_size_shift=' << 1'
	else
	    _size=l
	    small=32
	    large=64
	    reg_size_shift=
	fi

	# if we're making the header, just emit declarations:
	if $header; then
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_mul${_sign}${_size});"
	    $as_echo "TME_M68K_INSN_DECL(tme_m68k_div${_sign}${_size});"
	    continue
	fi

	# emit the multiply function:
	$as_echo ""
	$as_echo "TME_M68K_INSN(tme_m68k_mul${_sign}${_size})"
	$as_echo "{"
 	if test $large = 64; then
	    $as_echo "#ifndef TME_HAVE_INT${large}_T"
	    $as_echo "  abort();"
	    $as_echo "#else /* TME_HAVE_INT${large}_T */"
	    $as_echo "  unsigned int flag_v;"
	    $as_echo "  int ireg_dh;"
	fi
	$as_echo "  int ireg_dl;"
	$as_echo "  tme_${sign}int${large}_t res;"
	$as_echo "  tme_uint8_t flags;"

	$as_echo ""
	$as_echo "  /* get the register containing the factor: */"
	$as_echo_n "  ireg_dl = TME_M68K_IREG_D0 + "
	if test $size = s; then
	    $as_echo "TME_M68K_INSN_OP0(tme_uint32_t);"
	else
	    $as_echo "TME_FIELD_EXTRACTU(TME_M68K_INSN_SPECOP, 12, 3);"
	fi

	$as_echo ""
	$as_echo "  /* perform the multiplication: */"
	$as_echo "  res = (((tme_${sign}int${large}_t) ic->tme_m68k_ireg_${sign}int${small}(ireg_dl${reg_size_shift}))"
	$as_echo "         * TME_M68K_INSN_OP1(tme_${sign}int${small}_t));"

	$as_echo ""
	$as_echo "  /* store the result: */"
	$as_echo "  ic->tme_m68k_ireg_${sign}int32(ireg_dl) = (tme_${sign}int32_t) res;"
	if test $large = 64; then
	    $as_echo "  flag_v = TME_M68K_FLAG_V;"
	    $as_echo "  if (TME_M68K_INSN_SPECOP & TME_BIT(10)) {"
	    $as_echo "    flag_v = 0;"
	    $as_echo "    ireg_dh = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(TME_M68K_INSN_SPECOP, 0, 3);"
	    $as_echo "    ic->tme_m68k_ireg_${sign}int32(ireg_dh) = (tme_${sign}int32_t) (res >> 32);"
	    $as_echo "  }"
	fi

	$as_echo ""
	$as_echo "  /* set the flags: */"
	$as_echo "  flags = ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_X;"
	$as_echo "  if (((tme_int${large}_t) res) < 0) flags |= TME_M68K_FLAG_N;"
	$as_echo "  if (res == 0) flags |= TME_M68K_FLAG_Z;"
	if test $large = 64; then
	    if test $_sign = s; then
		$as_echo_n "  if (res > 0x7fffffffL || res < ((0L - 0x7fffffffL) - 1L)"
	    else
		$as_echo_n "  if (res > 0xffffffffUL"
	    fi
	    $as_echo ") flags |= flag_v;"
	fi
	$as_echo "  ic->tme_m68k_ireg_ccr = flags;"

	$as_echo ""
	$as_echo "  TME_M68K_INSN_OK;"
 	if test $large = 64; then
	    $as_echo "#endif /* TME_HAVE_INT${large}_T */"
	fi
	$as_echo "}"

	# emit the divide function:
	$as_echo ""
	$as_echo "TME_M68K_INSN(tme_m68k_div${_sign}${_size})"
	$as_echo "{"
 	if test $large = 64; then
	    $as_echo "#ifndef TME_HAVE_INT${large}_T"
	    $as_echo "  abort();"
	    $as_echo "#else /* TME_HAVE_INT${large}_T */"
	    $as_echo "  int ireg_dr;"
	fi
	$as_echo "  int ireg_dq;"
	$as_echo "  tme_${sign}int${large}_t dividend, quotient;"
	$as_echo "  tme_${sign}int${small}_t divisor, remainder;"
	$as_echo "  tme_uint8_t flags;"

	$as_echo ""
	$as_echo "  /* get the register(s): */"
	$as_echo_n "  ireg_dq = TME_M68K_IREG_D0 + "
	if test $size = s; then
	    $as_echo "TME_M68K_INSN_OP0(tme_uint32_t);"
	else
	    $as_echo "TME_FIELD_EXTRACTU(TME_M68K_INSN_SPECOP, 12, 3);"
	    $as_echo "  ireg_dr = TME_M68K_IREG_D0 + TME_FIELD_EXTRACTU(TME_M68K_INSN_SPECOP, 0, 3);"
	fi

	$as_echo ""
	$as_echo "  /* form the dividend and the divisor: */"
	if test $large = 64; then
	    $as_echo "  if (TME_M68K_INSN_SPECOP & TME_BIT(10)) {"
	    $as_echo "    dividend = (tme_${sign}int${large}_t)"
	    $as_echo "               ((((tme_uint${large}_t) ic->tme_m68k_ireg_uint32(ireg_dr)) << 32)"
	    $as_echo "                | ic->tme_m68k_ireg_uint32(ireg_dq));"
	    $as_echo "  }"
	    $as_echo "  else"
	    $as_echo_n "  "
	fi
	$as_echo "  dividend = (tme_${sign}int${large}_t) ic->tme_m68k_ireg_${sign}int32(ireg_dq);"
	$as_echo "  divisor = TME_M68K_INSN_OP1(tme_${sign}int${small}_t);"
	$as_echo "  if (divisor == 0) {"
	$as_echo "    ic->tme_m68k_ireg_pc_last = ic->tme_m68k_ireg_pc;"
	$as_echo "    ic->tme_m68k_ireg_pc = ic->tme_m68k_ireg_pc_next;"
	$as_echo "    TME_M68K_INSN_EXCEPTION(TME_M68K_EXCEPTION_INST(TME_M68K_VECTOR_DIV0));"
	$as_echo "  }"

	$as_echo ""
	$as_echo "  /* do the division: */"
	$as_echo "  quotient = dividend / divisor;"
	$as_echo "  remainder = dividend % divisor;"

	$as_echo ""
	$as_echo "  /* set the flags and return the quotient and remainder: */"
	$as_echo "  flags = ic->tme_m68k_ireg_ccr & TME_M68K_FLAG_X;"
	$as_echo_n "  if ("
	case "${small}${_sign}" in
	16s) $as_echo_n "quotient > 0x7fff || quotient < -32768" ;;
	16u) $as_echo_n "quotient > 0xffff" ;;
	32s) $as_echo_n "quotient > 0x7fffffffL || quotient < ((0L - 0x7fffffffL) - 1L)" ;;
	32u) $as_echo_n "quotient > 0xffffffffUL" ;;
	esac
	$as_echo ") {"
	$as_echo "    flags |= TME_M68K_FLAG_V;"
	$as_echo "  }"
	$as_echo "  else {"
	$as_echo "    if (((tme_int${small}_t) quotient) < 0) flags |= TME_M68K_FLAG_N;"
	$as_echo "    if (quotient == 0) flags |= TME_M68K_FLAG_Z;"
	$as_echo "    ic->tme_m68k_ireg_${sign}int${small}(ireg_dq${reg_size_shift}) = (tme_${sign}int${small}_t) quotient;"
	if test $small = 16; then
	    $as_echo "    ic->tme_m68k_ireg_${sign}int${small}((ireg_dq${reg_size_shift}) + 1) = remainder;"
	else
	    $as_echo "    if (ireg_dr != ireg_dq) {"
	    $as_echo "      ic->tme_m68k_ireg_${sign}int${small}(ireg_dr) = remainder;"
	    $as_echo "    }"
	fi
	$as_echo "  }"
	$as_echo "  ic->tme_m68k_ireg_ccr = flags;"

	$as_echo ""
	$as_echo "  TME_M68K_INSN_OK;"
 	if test $large = 64; then
	    $as_echo "#endif /* TME_HAVE_INT${large}_T */"
	fi
	$as_echo "}"

    done
done

# done:
exit 0
