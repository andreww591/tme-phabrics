#! /bin/sh
# Generated from ../../libtme/memory-auto.m4 by GNU Autoconf 2.69.
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


# $Id: memory-auto.sh,v 1.2 2010/02/15 15:16:28 fredette Exp $

# libtme/memory-auto.sh - automatically generates C code for
# memory support:

#
# Copyright (c) 2005, 2006 Matt Fredette
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

/*
 * Copyright (c) 2005, 2006 Matt Fredette
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *      This product includes software developed by Matt Fredette.
 * 4. The name of the author may not be used to endorse or promote products
 *    derived from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR "AS IS" AND ANY EXPRESS OR
 * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 * DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY DIRECT,
 * INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 * (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
 * SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT,
 * STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
 * ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */
EOF

if $header; then :; else
    cat <<EOF

/* includes: */
#include <tme/memory.h>

EOF
fi
cat <<EOF

_TME_RCSID("\$Id: memory-auto.sh,v 1.2 2010/02/15 15:16:28 fredette Exp $");
EOF
if $header; then
    cat <<EOF

/* macros: */

/* the plain partial read internal macro: */
#define _tme_memory_read(type_whole, type_part, mem, offset)		\\
  (((type_whole)							\\
    *((_tme_const type_part *)						\\
      (_tme_cast_pointer_const(tme_uint8_t *, type_whole *, mem)	\\
       + (offset))))							\\
   << (8 * (TME_ENDIAN_NATIVE == TME_ENDIAN_BIG				\\
	    ? (sizeof(type_whole)					\\
	       - ((offset) + sizeof(type_part)))			\\
	    : (offset))))

/* the plain partial write internal macro: */
#define _tme_memory_write(type_whole, type_part, mem, offset, x)	\\
  do {									\\
    *((type_part *)							\\
      (_tme_cast_pointer(tme_uint8_t *, type_whole *, mem)		\\
       + (offset)))							\\
      = (type_part)							\\
        (((type_whole) (x))						\\
	 >> (8 * (TME_ENDIAN_NATIVE == TME_ENDIAN_BIG			\\
		  ? (sizeof(type_whole)					\\
		     - ((offset) + sizeof(type_part)))			\\
		  : (offset))));					\\
  } while (/* CONSTCOND */ 0)

/* this tests bits in a memory address: */
#define _tme_memory_address_test(mem, bits, align_min)			\\
  (((bits) & ~((align_min - 1))) & ((tme_uintptr_t) (mem)))

/* this returns a mask of all-bits-one in given type: */
#define _tme_memory_type_mask(type, shift)				\\
  ((type) ((((type) 0) - ((type) 1)) shift))

EOF
fi

# the different sizes we handle, and the smallest size that we have to
# wrap in an ifdef:
#
sizes='8 16 32 64 128'
size_ifdef=64

# the largest possible host boundary that we will consider:
#
host_boundary_largest=64

# permute for the different sizes:
#
for size in ${sizes}; do

    # we don't need bus eight-bit read and write slow functions:
    #
    if test ${size} = 8; then continue; fi

    if test `expr ${size} \>= ${size_ifdef}` = 1; then
	$as_echo ""
	$as_echo "#ifdef TME_HAVE_INT${size}_T"
    fi

    # emit the bus read and write slow functions:
    #
    for op in read write; do

	# dispatch on the operation:
	#
	if test ${op} = read; then
	    op_return_type="tme_uint${size}_t"
	    op_cap=READ
	    op_const="_tme_const "
	    op_proto_operand=
	    op_operand=
	else
	    op_return_type=void
	    op_cap=WRITE
	    op_const=
	    op_proto_operand=", tme_uint${size}_t"
	    op_operand="${op_proto_operand} x"
	fi

	# if we're making the header, just emit a prototype:
	#
	if $header; then
	    $as_echo ""
	    $as_echo "/* the bus ${size}-bit ${op} slow function: */"
	    $as_echo "${op_return_type} tme_memory_bus_${op}${size} _TME_P((${op_const}tme_shared tme_uint${size}_t *${op_proto_operand}, tme_rwlock_t *, unsigned int, unsigned int));"
	    continue
	fi

	$as_echo ""
	$as_echo "/* undefine the macro version of tme_memory_bus_${op}${size}: */"
	$as_echo "#undef tme_memory_bus_${op}${size}"
	$as_echo ""
	$as_echo "/* the bus ${size}-bit ${op} slow function: */"
	$as_echo ${op_return_type}
	$as_echo "tme_memory_bus_${op}${size}(${op_const}tme_shared tme_uint${size}_t *mem${op_operand}, tme_rwlock_t *rwlock, unsigned int align_min, unsigned int bus_boundary)"
	$as_echo "{"
	$as_echo "  const unsigned int host_boundary = TME_MEMORY_BUS_BOUNDARY;"
	$as_echo "  unsigned int size_skip;"
	$as_echo "  unsigned int size_done;"
	if test ${op} = read; then
	    $as_echo "  tme_uint${size}_t x;"
	fi

	# emit the locals for the possible host boundaries:
	#
	host_boundary=${host_boundary_largest}
	while test ${host_boundary} != 4; do
	    if test `expr ${host_boundary} \>= ${size_ifdef}` = 1; then
		$as_echo "#ifdef TME_HAVE_INT${host_boundary}_T"
	    fi
	    $as_echo "  ${op_const}tme_shared tme_uint${host_boundary}_t *parts${host_boundary};"
	    $as_echo "  tme_uint${host_boundary}_t part${host_boundary};"
	    if test ${op} = write; then
		$as_echo "  tme_uint${host_boundary}_t part${host_boundary}_cmp;"
	    fi
	    if test `expr ${host_boundary} \>= ${size_ifdef}` = 1; then
		$as_echo "#endif /* TME_HAVE_INT${host_boundary}_T */"
	    fi
	    host_boundary=`expr ${host_boundary} / 2`
	done
	$as_echo ""
	$as_echo_n "  assert (bus_boundary != 0 && bus_boundary <= host_boundary);"

	# loop over the possible host boundaries:
	#
	host_boundary=${host_boundary_largest}
	while test ${host_boundary} != 4; do

	    # calculate the worst number of host boundaries that an
	    # access of this size could cross:
	    #
	    host_boundaries_worst=`expr ${size} - 16`
	    host_boundaries_worst=`expr ${host_boundaries_worst} / ${host_boundary}`
	    host_boundaries_worst=`expr ${host_boundaries_worst} + 1`

	    # open this host boundary:
	    #
	    if test ${host_boundary} != 8; then
		if test `expr ${host_boundary} \>= ${size_ifdef}` = 1; then
		    $as_echo ""
		    $as_echo ""
		    $as_echo "#ifdef TME_HAVE_INT${host_boundary}_T"
		    $as_echo ""
		    $as_echo_n " "
		fi
		$as_echo_n " if (host_boundary == sizeof(tme_uint${host_boundary}_t))"
	    fi
	    $as_echo " {"

	    $as_echo ""
	    $as_echo "    /* prepare to ${op} the first ${host_boundary}-bit part of the memory: */"
	    $as_echo "    parts${host_boundary} = (${op_const}tme_shared tme_uint${host_boundary}_t *) (((tme_uintptr_t) mem) & (((tme_uintptr_t) 0) - (${host_boundary} / 8)));"
	    $as_echo "    size_skip = (((unsigned int) (tme_uintptr_t) mem) % (${host_boundary} / 8)) * 8;"
	    $as_echo "    size_done = 0;"

	    $as_echo ""
	    $as_echo "    /* ${op} the first ${host_boundary}-bit part of the memory: */"

	    # emit two accesses.  if the worst number of boundaries
	    # that this access could cross is one, the second access
	    # is inside an if, else it's in a for loop:
	    #
	    indent0=
	    size_done=0
	    size_skip=size_skip
	    access_or=
	    while true; do

		# read this memory part:
		#
		$as_echo "${indent0}    part${host_boundary} = tme_memory_atomic_read${host_boundary}(parts${host_boundary}, rwlock, sizeof(tme_uint${host_boundary}_t));"

		# if this is a read:
		#
		if test ${op} = read; then

		    $as_echo ""
		    $as_echo "${indent0}    /* on a little-endian host, we shift off the skip"
		    $as_echo "${indent0}       data on the right, and shift the remaining data"
		    $as_echo "${indent0}       up into position in the result: */"
		    $as_echo "${indent0}    if (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE) {"
		    $as_echo "${indent0}      x ${access_or}= (((tme_uint${size}_t) (part${host_boundary} >> ${size_skip})) << ${size_done});"
		    $as_echo "${indent0}    }"
		    $as_echo ""
		    $as_echo "${indent0}    /* on a big-endian host, we shift off the skip data"
		    $as_echo "${indent0}       on the left, and shift the remaining data down"
		    $as_echo "${indent0}       into position in the result: */"
		    #
		    # NB: on a big-endian host, because the skip data
		    # is on the left, the type of what we shift
		    # depends on how this host boundary size compares
		    # to the access size:
		    #
		    $as_echo "${indent0}    else {"
		    $as_echo_n "${indent0}      x ${access_or}= "
		    if test `expr ${host_boundary} \> ${size}` = 1; then
			$as_echo "((part${host_boundary} << ${size_skip}) >> ((${host_boundary} - ${size}) + ${size_done}));"
		    else
			$as_echo "((((tme_uint${size}_t) part${host_boundary}) << ((${size} - ${host_boundary}) + ${size_skip})) >> ${size_done});"
		    fi
		    $as_echo "${indent0}    }"

		# otherwise, this is a write:
		#
		else

		    # start the compare-and-exchange do loop:
		    #
		    $as_echo "${indent0}    do {"
		    $as_echo "${indent0}      part${host_boundary}_cmp = part${host_boundary};"
		    $as_echo ""
		    $as_echo "${indent0}      /* on a little-endian host, we clear with zeroes"
		    $as_echo "${indent0}         shifted up past the skip data, and then we"
		    $as_echo "${indent0}         insert the data shifted up past the skip data: */"
		    $as_echo "${indent0}      if (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE) {"
		    $as_echo "${indent0}        part${host_boundary} &= (_tme_memory_type_mask(tme_uint${host_boundary}_t, + 0) ^ (((tme_uint${host_boundary}_t) _tme_memory_type_mask(tme_uint${size}_t, << ${size_done})) << ${size_skip}));"
		    $as_echo "${indent0}        part${host_boundary} |= (((tme_uint${host_boundary}_t) x) << ${size_skip});"
		    $as_echo "${indent0}      }"
		    $as_echo ""
		    $as_echo "${indent0}      /* on a big-endian host, we clear with zeroes"
		    $as_echo "${indent0}         shifted down past the skip data, and then we"
		    $as_echo "${indent0}         insert the data shifted down past the skip data: */"
		    #
		    # NB: on a big-endian host, because the skip data
		    # is on the left, exactly how we shift depends on
		    # how this host boundary size compares to the
		    # access size:
		    #
		    $as_echo "${indent0}      else {"
		    if test `expr ${host_boundary} \> ${size}` = 1; then
			$as_echo "${indent0}        part${host_boundary} &= ~((((tme_uint${host_boundary}_t) _tme_memory_type_mask(tme_uint${size}_t, + 0)) << ((${host_boundary} - ${size}) + ${size_done})) >> ${size_skip});"
			$as_echo "${indent0}        part${host_boundary} |= ((((tme_uint${host_boundary}_t) x) << (${host_boundary} - ${size})) >> ${size_skip});"
		    else
			$as_echo "${indent0}        part${host_boundary} &= ~(_tme_memory_type_mask(tme_uint${host_boundary}_t, << ${size_done}) >> ${size_skip});"
			$as_echo "${indent0}        part${host_boundary} |= (x >> ((${size} - ${host_boundary}) + ${size_skip}));"
		    fi
		    $as_echo "${indent0}      }"
		    $as_echo ""
		    $as_echo "${indent0}      /* loop until we can atomically update this part: */"
		    $as_echo "${indent0}      part${host_boundary} = tme_memory_atomic_cx${host_boundary}(parts${host_boundary}, part${host_boundary}_cmp, part${host_boundary}, rwlock, sizeof(tme_uint${host_boundary}_t));"
		    $as_echo "${indent0}    } while (part${host_boundary} != part${host_boundary}_cmp);"
		    if test ${host_boundaries_worst} != 1 || test ${size_skip} != 0; then
			$as_echo "${indent0}    if (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE) {"
			$as_echo "${indent0}      x >>= (${host_boundary} - ${size_skip});"
			$as_echo "${indent0}    }"
			$as_echo "${indent0}    else {"
			$as_echo "${indent0}      x <<= (${host_boundary} - ${size_skip});"
			$as_echo "${indent0}    }"
		    fi
		fi

		# if this was the first access:
		#
		if test ${size_done} = 0; then

		    $as_echo "    size_done = ${host_boundary} - size_skip;"
		    size_done=size_done
		    size_skip=0
		    access_or='|'

		    # if the worst number of boundaries that this
		    # access could cross is more than one, we will do
		    # the remaining accesses in a loop, otherwise we
		    # will do one more access, if necessary:
		    #
		    if test ${host_boundaries_worst} = 1; then
			access_if=true
		    else
			access_if=false

			# as an optimization, writes of full parts are
			# done directly:
			#
			if test ${op} = write; then
			    if test `expr ${host_boundary} \< ${size}` = 1; then
				$as_echo ""
				if test ${host_boundaries_worst} = 2; then
				    $as_echo "    /* try to write one full ${host_boundary}-bit part of memory: */"
				    $as_echo_n "    if (__tme_predict_true(size_done <= (${size} - ${host_boundary})))"
				else
				    $as_echo "    /* write as many full ${host_boundary}-bit parts of the memory as we can: */"
				    $as_echo_n "    for (; size_done <= (${size} - ${host_boundary}); )"
				fi
				$as_echo " {"
				$as_echo ""
				$as_echo "      /* make a boundary: */"
				$as_echo "      tme_memory_barrier(mem, (${size} / 8), TME_MEMORY_BARRIER_${op_cap}_BEFORE_${op_cap});"
				$as_echo ""
				$as_echo "      /* write a full ${host_boundary}-bit part of memory: */"
				$as_echo "      part${host_boundary} = (x >> ((TME_ENDIAN_NATIVE == TME_ENDIAN_BIG) * (${size} - ${host_boundary})));"
				$as_echo "      parts${host_boundary}++;"
				$as_echo "      tme_memory_atomic_write${host_boundary}(parts${host_boundary}, part${host_boundary}, rwlock, sizeof(tme_uint${host_boundary}_t));"
				$as_echo "      size_done += ${host_boundary};"
				$as_echo "      if (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE) {"
				$as_echo "        x >>= ${host_boundary};"
				$as_echo "      }"
				$as_echo "      else {"
				$as_echo "        x <<= ${host_boundary};"
				$as_echo "      }"
				$as_echo "    }"
				access_if=true
			    fi
			fi
		    fi
		    $as_echo ""
		    if $access_if; then
			$as_echo "    /* ${op} at most one remaining ${host_boundary}-bit part of the memory: */"
			$as_echo_n "    if (__tme_predict_false(size_done < ${size}))"
		    else
			$as_echo "    /* ${op} any remaining ${host_boundary}-bit parts of the memory: */"
			$as_echo_n "    for (; size_done < ${size}; size_done += ${host_boundary})"
		    fi
		    $as_echo " {"

		    $as_echo ""
		    $as_echo "      /* make a boundary: */"
		    $as_echo "      tme_memory_barrier(mem, (${size} / 8), TME_MEMORY_BARRIER_${op_cap}_BEFORE_${op_cap});"
		    $as_echo ""
		    $as_echo "      /* ${op} the next ${host_boundary}-bit part of the memory: */"
		    $as_echo "      parts${host_boundary}++;"
		    indent0="  "

		# otherwise, this was the loop or second access:
		#
		else
		    $as_echo "    }"
		    break
		fi

	    done

	    $as_echo "  }"

	    # close this host boundary:
	    #
	    if test ${host_boundary} != 8; then
		$as_echo ""
		$as_echo_n "  else"
		if test `expr ${host_boundary} \>= ${size_ifdef}` = 1; then
		    $as_echo ""
		    $as_echo ""
		    $as_echo_n "#endif /* TME_HAVE_INT${host_boundary}_T */"
		    if test ${host_boundary} = ${size_ifdef}; then
			$as_echo ""
			$as_echo ""
			$as_echo_n " "
		    fi
		fi
	    fi

	    # advance:
	    #
	    host_boundary=`expr ${host_boundary} / 2`
	done
	if test ${op} = read; then
	    $as_echo ""
	    $as_echo "  /* return the value read: */"
	    $as_echo "  return (x);"
	fi
	$as_echo "}"
    done

    if test `expr ${size} \>= ${size_ifdef}` = 1; then
	$as_echo ""
	$as_echo "#endif /* TME_HAVE_INT${size}_T */"
    fi

done

# emit the bus read and write buffer functions:
#
for op in read write; do

    # dispatch on the operation:
    #
    if test ${op} = read; then
	op_cap=READ
	op_rwlock=rd
	op_const_mem="_tme_const "
	op_const_buffer=
	op_audit_mem=
	op_audit_buffer=_tme_audit_pointer
	op_memcpy="(buffer), ((_tme_const tme_uint8_t *) (mem))"
	op_copy="*buffer = *part_buffer"
    else
	op_cap=WRITE
	op_rwlock=wr
	op_const_mem=
	op_const_buffer="_tme_const "
	op_audit_mem=_tme_audit_pointer_shared
	op_audit_buffer=_tme_audit_pointer_const
	op_memcpy="(tme_uint8_t *) (mem), (buffer)"
	op_copy="*part_buffer = *buffer"
    fi

    # if we're making the header:
    #
    if $header; then

	$as_echo ""
	$as_echo "/* the bus ${op} buffer function and default macro implementation: */"

	# emit the prototype:
	#
	$as_echo "void tme_memory_bus_${op}_buffer _TME_P((${op_const_mem}tme_shared tme_uint8_t *, ${op_const_buffer}tme_uint8_t *, unsigned long, tme_rwlock_t *, unsigned int, unsigned int));"

	# emit the default macro definition:
	#
	$as_echo "#define tme_memory_bus_${op}_buffer(mem, buffer, count, rwlock, align_min, bus_boundary) \\"
	$as_echo "  do { \\"
	$as_echo "    if (tme_thread_cooperative()) { \\"
	$as_echo "      memcpy(${op_memcpy}, (count)); \\"
	$as_echo "    } \\"
	$as_echo "    else { \\"
	$as_echo "      tme_memory_bus_${op}_buffer(((${op_const_mem}tme_shared tme_uint8_t *) ${op_audit_mem}(mem)), ((${op_const_buffer}tme_uint8_t *) ${op_audit_buffer}(buffer)), (count), (rwlock), (align_min), (bus_boundary)); \\"
	$as_echo "    } \\"
	$as_echo "  } while (/* CONSTCOND */ 0)"

	continue
    fi

    # start the function:
    #
    $as_echo ""
    $as_echo "/* undefine the macro version of tme_memory_bus_${op}_buffer: */"
    $as_echo "#undef tme_memory_bus_${op}_buffer"
    $as_echo ""
    $as_echo "/* the bus ${op} buffer function: */"
    $as_echo "void"
    $as_echo "tme_memory_bus_${op}_buffer(${op_const_mem}tme_shared tme_uint8_t *mem, ${op_const_buffer}tme_uint8_t *buffer, unsigned long count, tme_rwlock_t *rwlock, unsigned int align_min, unsigned int bus_boundary)"
    $as_echo "{"
    $as_echo "  const unsigned int host_boundary = TME_MEMORY_BUS_BOUNDARY;"
    $as_echo "  ${op_const_mem}tme_uint8_t *part_buffer;"
    $as_echo "  unsigned int count_done;"
    $as_echo "  unsigned int count_misaligned;"
    $as_echo "  unsigned int bits_misaligned;"

    # emit the locals for the possible host boundaries:
    #
    host_boundary=${host_boundary_largest}
    while test ${host_boundary} != 4; do
	if test `expr ${host_boundary} \>= ${size_ifdef}` = 1; then
	    $as_echo "#ifdef TME_HAVE_INT${host_boundary}_T"
	fi
	$as_echo "  ${op_const_mem}tme_shared tme_uint${host_boundary}_t *parts${host_boundary};"
	$as_echo "  tme_uint${host_boundary}_t part${host_boundary}_buffer;"
	$as_echo "  tme_uint${host_boundary}_t part${host_boundary};"
	$as_echo "  tme_uint${host_boundary}_t part${host_boundary}_next;"
	if test ${op} = write; then
	    $as_echo "  tme_uint${host_boundary}_t part${host_boundary}_mask;"
	    $as_echo "  tme_uint${host_boundary}_t part${host_boundary}_cmp;"
	fi
	if test `expr ${host_boundary} \>= ${size_ifdef}` = 1; then
	    $as_echo "#endif /* TME_HAVE_INT${host_boundary}_T */"
	fi
	host_boundary=`expr ${host_boundary} / 2`
    done
    $as_echo ""
    $as_echo "  assert (count != 0);"
    $as_echo "  assert (bus_boundary != 0);"

    $as_echo ""
    $as_echo "  /* if we are locking for all memory accesses, lock memory"
    $as_echo "     around a memcpy: */"
    $as_echo "  if (TME_MEMORY_ALIGNMENT_ATOMIC(TME_MEMORY_TYPE_COMMON) == 0) {"
    $as_echo "    tme_rwlock_${op_rwlock}lock(rwlock);"
    $as_echo "    memcpy(${op_memcpy}, (count));"
    $as_echo "    tme_rwlock_${op_rwlock}unlock(rwlock);"
    $as_echo "  }"
    $as_echo ""
    $as_echo "  /* otherwise, if the emulated bus boundary is greater than the"
    $as_echo "     host's bus boundary, we are forced to stop all other threads"
    $as_echo "     around a memcpy: */"
    $as_echo "  else if (__tme_predict_false(bus_boundary == 0"
    $as_echo "                               || bus_boundary > host_boundary)) {"
    $as_echo "    tme_thread_suspend_others();"
    $as_echo "    memcpy(${op_memcpy}, (count) + (0 && align_min));"
    $as_echo "    tme_thread_resume_others();"
    $as_echo "  }"

    # loop over the possible host boundaries:
    #
    host_boundary=${host_boundary_largest}
    indent0=
    while test ${host_boundary} != 4; do

	# open this host boundary:
	#
	if test `expr ${host_boundary} \>= ${size_ifdef}` = 1; then
	    $as_echo ""
	    $as_echo "#ifdef TME_HAVE_INT${host_boundary}_T"
	fi
	$as_echo ""
	$as_echo_n "  else"
	if test ${host_boundary} != 8; then
	    $as_echo_n " if (host_boundary == sizeof(tme_uint${host_boundary}_t))"
	fi
	$as_echo " {"

	if test ${op} = write; then
	    op_part_read="tme_memory_read${host_boundary}((const tme_uint${host_boundary}_t *) buffer, sizeof(tme_uint${host_boundary}_t))"
	    op_part_write="tme_memory_atomic_write${host_boundary}(parts${host_boundary}, part${host_boundary}, rwlock, sizeof(tme_uint${host_boundary}_t))"
	else
	    op_part_read="tme_memory_atomic_read${host_boundary}(parts${host_boundary}, rwlock, sizeof(tme_uint${host_boundary}_t))"
	    op_part_write="tme_memory_write${host_boundary}((tme_uint${host_boundary}_t *) buffer, part${host_boundary}, sizeof(tme_uint${host_boundary}_t))"
	fi

	$as_echo ""
	$as_echo "    /* make a ${host_boundary}-bit pointer to the memory: */"
	$as_echo "    parts${host_boundary} = (${op_const_mem}tme_shared tme_uint${host_boundary}_t *) mem;"
	$as_echo ""
	$as_echo "    /* if this pointer is not ${host_boundary}-bit aligned: */"
	$as_echo "    if (__tme_predict_false((((tme_uintptr_t) parts${host_boundary}) % sizeof(tme_uint${host_boundary}_t)) != 0)) {"
	$as_echo ""
	$as_echo "      /* get the misalignment from the previous ${host_boundary}-bit boundary: */"
	$as_echo "      count_misaligned = ((tme_uintptr_t) parts${host_boundary}) % sizeof(tme_uint${host_boundary}_t);"
	$as_echo ""
	$as_echo "      /* truncate this pointer to the previous ${host_boundary}-bit boundary: */"
	$as_echo "      parts${host_boundary} = (${op_const_mem}tme_shared tme_uint${host_boundary}_t *) (((tme_uintptr_t) parts${host_boundary}) & (((tme_uintptr_t) 0) - sizeof(tme_uint${host_boundary}_t)));"
	$as_echo ""
	$as_echo "      /* get the number of bytes to ${op} in the first ${host_boundary}-bit memory part: */"
	$as_echo "      count_done = sizeof(tme_uint${host_boundary}_t) - count_misaligned;"
	$as_echo "      if (__tme_predict_false(count_done > count)) {"
	$as_echo "        count_done = count;"
	$as_echo "      }"

	if test ${op} = write; then
	    $as_echo ""
	    $as_echo "      /* make a mask that clears for the data to write in the"
	    $as_echo "         first ${host_boundary}-bit memory part: */"
	    $as_echo "      part${host_boundary}_mask = 1;"
	    $as_echo "      part${host_boundary}_mask = (part${host_boundary}_mask << (count_done * 8)) - 1;"
	    $as_echo "      part${host_boundary}_mask"
	    $as_echo "        <<= (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE"
	    $as_echo "             ? (count_misaligned * 8)"
	    $as_echo "             : (${host_boundary} - ((count_misaligned + count_done) * 8)));"
	    $as_echo "      part${host_boundary}_mask = ~part${host_boundary}_mask;"
	    $as_echo ""
	    $as_echo "      /* copy from the buffer the bytes to write in the first"
	    $as_echo "         ${host_boundary}-bit memory part: */"
	    $as_echo "      part${host_boundary}_buffer = 0;"
	else
	    $as_echo ""
	    $as_echo "      /* read the first ${host_boundary}-bit memory part: */"
	    $as_echo "      part${host_boundary}_buffer = ${op_part_read};"
	    $as_echo "      parts${host_boundary}++;"
	    $as_echo ""
	    $as_echo "      /* copy to the buffer the bytes to read in the first"
	    $as_echo "         ${host_boundary}-bit memory part: */"
	fi
	$as_echo "      part_buffer = ((tme_uint8_t *) &part${host_boundary}_buffer) + count_misaligned;"
	$as_echo "      count -= count_done;"
	$as_echo "      do {"
	$as_echo "        ${op_copy};"
	$as_echo "        part_buffer++;"
	$as_echo "        buffer++;"
	$as_echo "      } while (--count_done != 0);"

	if test ${op} = write; then
	    $as_echo ""
	    $as_echo "      /* compare-and-exchange the first ${host_boundary}-bit memory part: */"
	    $as_echo "      part${host_boundary} = ${op_part_read};"
	    $as_echo "      do {"
	    $as_echo "        part${host_boundary}_cmp = part${host_boundary};"
	    $as_echo "        part${host_boundary} = (part${host_boundary} & part${host_boundary}_mask) | part${host_boundary}_buffer;"
	    $as_echo "        part${host_boundary} = tme_memory_atomic_cx${host_boundary}(parts${host_boundary}, part${host_boundary}_cmp, part${host_boundary}, rwlock, sizeof(tme_uint${host_boundary}_t));"
	    $as_echo "      } while (part${host_boundary} != part${host_boundary}_cmp);"
	    $as_echo "      parts${host_boundary}++;"
	fi
	$as_echo "    }"

	$as_echo ""
	$as_echo "    /* if we have full ${host_boundary}-bit parts to ${op}: */"
	$as_echo "    if (__tme_predict_true(count >= sizeof(tme_uint${host_boundary}_t))) {"
	$as_echo ""
	$as_echo "      /* if the buffer is ${host_boundary}-bit aligned: */"
	$as_echo "      if (__tme_predict_true((((tme_uintptr_t) buffer) % sizeof(tme_uint${host_boundary}_t)) == 0)) {"
	$as_echo ""
	$as_echo "        /* ${op} full ${host_boundary}-bit parts without shifting: */"
	$as_echo "        do {"
	$as_echo "          part${host_boundary} = ${op_part_read};"
	$as_echo "          ${op_part_write};"
	$as_echo ""
	$as_echo "          /* advance: */"
	$as_echo "          parts${host_boundary}++;"
	$as_echo "          buffer += sizeof(tme_uint${host_boundary}_t);"
	$as_echo "          count -= sizeof(tme_uint${host_boundary}_t);"
	$as_echo "        } while (count >= sizeof(tme_uint${host_boundary}_t));"
	$as_echo "      }"
	$as_echo ""
	$as_echo "      /* otherwise, the buffer is not ${host_boundary}-bit aligned: */"
	$as_echo "      else {"
	$as_echo ""
	$as_echo "        /* get the misalignment to the next ${host_boundary}-bit boundary: */"
	$as_echo "        count_misaligned = (sizeof(tme_uint${host_boundary}_t) - ((unsigned int) (tme_uintptr_t) buffer)) % sizeof(tme_uint${host_boundary}_t);"
	if test ${op} = write; then
	    $as_echo ""
	    $as_echo "        /* copy from the buffer until it is aligned: */"
	    $as_echo "        part${host_boundary}_buffer = 0;"
	else
	    $as_echo ""
	    $as_echo "        /* read the next ${host_boundary}-bit memory part: */"
	    $as_echo "        part${host_boundary}_buffer = ${op_part_read};"
	    $as_echo "        parts${host_boundary}++;"
	    $as_echo ""
	    $as_echo "        /* copy to the buffer until it is aligned: */"
	fi
	$as_echo "        part_buffer = ((${op_const_mem}tme_uint8_t *) &part${host_boundary}_buffer);"
	$as_echo "        count_done = count_misaligned;"
	$as_echo "        count -= count_misaligned;"
	$as_echo "        do {"
	$as_echo "          ${op_copy};"
	$as_echo "          part_buffer++;"
	$as_echo "          buffer++;"
	$as_echo "        } while (--count_done != 0);"

	$as_echo ""
	$as_echo "        /* ${op} full ${host_boundary}-bit words with shifting: */"
	$as_echo "        bits_misaligned = count_misaligned * 8;"
	if test ${op} = write; then
	    op_shift=bits_misaligned
	    op_shift_next="(${host_boundary} - bits_misaligned)"
	    $as_echo "        part${host_boundary} = part${host_boundary}_buffer;"
	else
	    op_shift="(${host_boundary} - bits_misaligned)"
	    op_shift_next=bits_misaligned
	    $as_echo "        part${host_boundary}"
	    $as_echo "          = (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE"
	    $as_echo "             ? (part${host_boundary}_buffer >> ${op_shift_next})"
	    $as_echo "             : (part${host_boundary}_buffer << ${op_shift_next}));"
	fi
	$as_echo "        for (; count >= sizeof(tme_uint${host_boundary}_t); ) {"
	$as_echo "          part${host_boundary}_next = ${op_part_read};"
	$as_echo "          if (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE) {"
	$as_echo "            part${host_boundary} |= (part${host_boundary}_next << ${op_shift});"
	$as_echo "            ${op_part_write};"
	$as_echo "            part${host_boundary} = (part${host_boundary}_next >> ${op_shift_next});"
	$as_echo "          }"
	$as_echo "          else {"
	$as_echo "            part${host_boundary} |= (part${host_boundary}_next >> ${op_shift});"
	$as_echo "            ${op_part_write};"
	$as_echo "            part${host_boundary} = (part${host_boundary}_next << ${op_shift_next});"
	$as_echo "          }"
	$as_echo ""
	$as_echo "          /* advance: */"
	$as_echo "          parts${host_boundary}++;"
	$as_echo "          buffer += sizeof(tme_uint${host_boundary}_t);"
	$as_echo "          count -= sizeof(tme_uint${host_boundary}_t);"
	$as_echo "        }"

	$as_echo ""
	$as_echo "        /* calculate how many more bytes there are to ${op} in this"
	$as_echo "           ${host_boundary}-bit memory part: */"
	$as_echo "        count_done = sizeof(tme_uint${host_boundary}_t) - count_misaligned;"
	$as_echo "        part${host_boundary}_buffer = part${host_boundary};"
	if test ${op} = write; then
	    $as_echo ""
	    $as_echo "        /* if we can't write one more full ${host_boundary}-bit memory part: */"
	    $as_echo "        if (count_done > count) {"
	    $as_echo ""
	    $as_echo "          /* we will reread this data to write below: */"
	    $as_echo "          buffer -= count_misaligned;"
	    $as_echo "          count += count_misaligned;"
	    $as_echo "        }"
	    $as_echo ""
	    $as_echo "        /* otherwise, we can write one more full ${host_boundary}-bit memory part: */"
	    $as_echo "        else {"
	    $as_echo ""
	    $as_echo "          /* copy from the buffer until we have the full ${host_boundary}-bit part: */"
	    $as_echo "          part_buffer = ((${op_const_mem}tme_uint8_t *) &part${host_boundary}_buffer) + count_misaligned;"
	    $as_echo "          count -= count_done;"
	    $as_echo "          do {"
	    $as_echo "            ${op_copy};"
	    $as_echo "            part_buffer++;"
	    $as_echo "            buffer++;"
	    $as_echo "          } while (--count_done != 0);"
	    $as_echo ""
	    $as_echo "          /* write the last full ${host_boundary}-bit memory part: */"
	    $as_echo "          part${host_boundary} = part${host_boundary}_buffer;"
	    $as_echo "          ${op_part_write};"
	    $as_echo "        }"
	else
	    $as_echo ""
	    $as_echo "        /* copy to the buffer the remaining bytes in this ${host_boundary}-bit part: */"
	    $as_echo "        if (count_done > count) {"
	    $as_echo "          count_done = count;"
	    $as_echo "        }"
	    $as_echo "        part_buffer = ((${op_const_mem}tme_uint8_t *) &part${host_boundary}_buffer);"
	    $as_echo "        count -= count_done;"
	    $as_echo "        do {"
	    $as_echo "          ${op_copy};"
	    $as_echo "          part_buffer++;"
	    $as_echo "          buffer++;"
	    $as_echo "        } while (--count_done != 0);"
	fi
	$as_echo "      }"
	$as_echo "    }"

	$as_echo ""
	$as_echo "    /* if we still have bytes to ${op}: */"
	$as_echo "    if (__tme_predict_false(count > 0)) {"
	$as_echo ""
	$as_echo "      /* we must have less than a full ${host_boundary}-bit part to ${op}: */"
	$as_echo "      assert (count < sizeof(tme_uint${host_boundary}_t));"
	if test ${op} = write; then
	    $as_echo ""
	    $as_echo "      /* make a mask that clears for the data to write in the last"
	    $as_echo "         ${host_boundary}-bit memory part: */"
	    $as_echo "      part${host_boundary}_mask"
	    $as_echo "        = (TME_ENDIAN_NATIVE == TME_ENDIAN_LITTLE"
	    $as_echo "           ? _tme_memory_type_mask(tme_uint${host_boundary}_t, << (count * 8))"
	    $as_echo "           : _tme_memory_type_mask(tme_uint${host_boundary}_t, >> (count * 8)));"
	    $as_echo ""
	    $as_echo "      /* copy from the buffer the bytes to write in the last"
	    $as_echo "         ${host_boundary}-bit memory part: */"
	    $as_echo "      part${host_boundary}_buffer = 0;"
	else
	    $as_echo ""
	    $as_echo "      /* read the last ${host_boundary}-bit memory part: */"
	    $as_echo "      part${host_boundary}_buffer = ${op_part_read};"
	    $as_echo ""
	    $as_echo "      /* copy to the buffer the bytes to read in the first"
	    $as_echo "         ${host_boundary}-bit memory part: */"
	fi
	$as_echo "      part_buffer = ((${op_const_mem}tme_uint8_t *) &part${host_boundary}_buffer);"
	$as_echo "      count_done = count;"
	$as_echo "      do {"
	$as_echo "        ${op_copy};"
	$as_echo "        part_buffer++;"
	$as_echo "        buffer++;"
	$as_echo "      } while (--count_done != 0);"
	if test ${op} = write; then
	    $as_echo ""
	    $as_echo "      /* compare-and-exchange the last ${host_boundary}-bit memory part: */"
	    $as_echo "      part${host_boundary} = ${op_part_read};"
	    $as_echo "      do {"
	    $as_echo "        part${host_boundary}_cmp = part${host_boundary};"
	    $as_echo "        part${host_boundary} = (part${host_boundary} & part${host_boundary}_mask) | part${host_boundary}_buffer;"
	    $as_echo "        part${host_boundary} = tme_memory_atomic_cx${host_boundary}(parts${host_boundary}, part${host_boundary}_cmp, part${host_boundary}, rwlock, sizeof(tme_uint${host_boundary}_t));"
	    $as_echo "      } while (part${host_boundary} != part${host_boundary}_cmp);"
	fi
	$as_echo "    }"

	# close this host boundary:
	#
	$as_echo ""
	$as_echo "  }"
	if test `expr ${host_boundary} \>= ${size_ifdef}` = 1; then
	    $as_echo ""
	    $as_echo "#endif /* TME_HAVE_INT${host_boundary}_T */"
	fi

	# advance:
	#
	host_boundary=`expr ${host_boundary} / 2`
    done

    $as_echo "}"
done

# permute for the different sizes:
#
for size in ${sizes}; do

    if test `expr ${size} \>= ${size_ifdef}` = 1; then
	$as_echo ""
	$as_echo "#ifdef TME_HAVE_INT${size}_T"
    fi

    # permute for the different types of memory read and write macros.
    # all of these macros work with memory of any alignment, but for
    # best performance they accept the minimum alignment of the memory
    # known at compile time.
    #
    # the "plain" macros are used to read and write memory that is not
    # shared.
    #
    # the "atomic" macros are used to read and write memory that is
    # shared.  the total read or write is always atomic.
    #
    # the "bus" macros are used to read and write memory that is
    # shared, with the access split across the given bus boundary into
    # atomic partials.
    #
    for type_user in plain atomic bus; do

	# permute over read and write:
	#
	for op in read write; do

	    # these macros are for the header file, and there are
	    # hand-coded macros for 8-bit values:
	    #
	    if $header; then :; else continue; fi
	    if test ${size} = 8; then continue; fi

	    # characterize this macro:
	    #
	    type="_${type_user}"
	    type_lock=", lock"
	    type_part=_atomic
	    type_bus_boundary=
	    case ${type_user} in
	    plain)
		type=
		type_lock=
		type_part=
		;;
	    bus)
		type_bus_boundary=", bus_boundary"
		;;
	    esac
	    if test ${op} = read; then
		op_x=
		op_open="  ( \\"
		op_indent0="   "
		op_indent1=${op_indent0}
		op_then="${op_indent1}? \\"
		op_else_if="${op_indent1}: \\"
		op_else=${op_else_if}
		op_indent2="${op_indent1}  "
		op_semi=
		op_close="  )"
	    else
		op_x=", x"
		op_open="  do { \\@    if \\"
		op_indent0="      "
		op_indent1=${op_indent0}
		op_then="      { \\"
		op_else_if="      } \\@    else if \\"
		op_else="      } \\@    else \\@${op_then}"
		op_indent2="        "
		op_semi=';'
		op_close="      } \\@  } while (/* CONSTCOND */ 0)"
	    fi

	    # start the macro:
	    #
	    $as_echo ""
	    $as_echo "/* the default ${size}-bit memory ${type_user} ${op} macro: */"
	    $as_echo "#define tme_memory${type}_${op}${size}(mem${op_x}${type_lock}, align_min${type_bus_boundary}) \\"
	    $as_echo "${op_open}" | tr '@' '\n'

	    # dispatch on the macro type:
	    #
	    case ${type_user} in

	    plain)
		$as_echo "${op_indent0}/* if we know at compile time that the memory is aligned \\"
		$as_echo "${op_indent0}   enough to ${op} directly, do the single direct ${op}. \\"
		$as_echo "${op_indent0}\\"
		$as_echo "${op_indent0}   otherwise, if we know at compile time that the memory \\"
		$as_echo "${op_indent0}   is less aligned than the smallest acceptable parts size, \\"
		$as_echo "${op_indent0}   test if the memory is aligned enough to ${op} directly, \\"
		$as_echo "${op_indent0}   and do the single direct ${op} if it is: */ \\"
		$as_echo "${op_indent0}(__tme_predict_true((_TME_ALIGNOF_INT${size}_T == 1 \\"
		$as_echo "${op_indent0}                     || (align_min) >= _TME_ALIGNOF_INT${size}_T) \\"
		$as_echo "${op_indent0}                    || ((align_min) < TME_MEMORY_ALIGNMENT_ACCEPT(tme_uint${size}_t) \\"
		$as_echo "${op_indent0}                        && _tme_memory_address_test(mem, _TME_ALIGNOF_INT${size}_T - 1, align_min) == 0))) \\"
		$as_echo "${op_then}"
		$as_echo "${op_indent2}_tme_memory_${op}(tme_uint${size}_t, tme_uint${size}_t, mem, 0${op_x})${op_semi} \\"

		# loop over the possible part sizes:
		#
		size_part=8
		while test ${size_part} != ${size}; do

		    # at this point, we know that the memory is at
		    # least aligned to the part size:
		    #

		    # if this is the last possible part size:
		    #
		    if test `expr ${size_part} \* 2` = ${size}; then

			# we will just access all parts of this size:
			#
			$as_echo "${op_else}" | tr '@' '\n'

		    # otherwise, this is not the last possible part
		    # size:
		    #
		    else

			# if we know at compile time that accessing
			# all parts of this size is acceptable over
			# further testing of the address, and the
			# memory is not more aligned than this part
			# size, we will just access all parts of this
			# size:
			#
			$as_echo "${op_else_if}" | tr '@' '\n'
			$as_echo "${op_indent1}((TME_MEMORY_ALIGNMENT_ACCEPT(tme_uint${size}_t) <= sizeof(tme_uint${size_part}_t)) \\"
			$as_echo "${op_indent1} && ((align_min) <= sizeof(tme_uint${size_part}_t))) \\"
			$as_echo "${op_then}"
		    fi

		    # we always emit one set of partial accesses, all
		    # of this part size.
		    #
		    # then, if this isn't the last possible part size,
		    # we test if the address is aligned only to this
		    # part size.  if it is, we emit a second set of partial
		    # accesses, to transfer this part size, some number
		    # of parts of the next part size, and one part of this
		    # part size:
		    #
		    size_now=${size_part}
		    misaligned=false
		    while true; do
			size_done=0
			while test ${size_done} != ${size}; do

			    # emit one partial transfer:
			    #
			    $as_echo_n "${op_indent2}"
			    op_delim=${op_semi}
			    if test ${op} = read; then
				if test ${size_done} = 0; then $as_echo_n '('; else $as_echo_n ' | '; fi
				if test `expr ${size_done} + ${size_now}` = ${size}; then op_delim=')'; fi
			    fi
			    $as_echo "_tme_memory${type}_${op}(tme_uint${size}_t, tme_uint${size_now}_t, mem, (${size_done} / 8)${op_x})${op_delim} \\"

			    # advance:
			    #
			    size_done=`expr ${size_done} + ${size_now}`
			    size_now=`expr ${size} - ${size_done}`
			    if test `expr ${size_now} \> ${size_part}` = 1; then
				size_now=${size_part}
			    fi
			done

			# if we have already done the misaligned set,
			# stop now:
			#
			if ${misaligned}; then
			    break
			fi
			misaligned=true

			# advance to test and do the misaligned set:
			#
			size_now=${size_part}
			size_part=`expr ${size_part} \* 2`
			if test ${size_part} = ${size}; then
			    break
			fi
			$as_echo "${op_else_if}" | tr '@' '\n'
			$as_echo "${op_indent1}(_tme_memory_address_test(mem, sizeof(tme_uint${size_now}_t), align_min) != 0) \\"
			$as_echo "${op_then}"
		    done
		done
		;;

	    atomic)
		$as_echo "${op_indent0}/* if threads are cooperative, do a plain ${op}: */ \\"
		$as_echo "${op_indent0}(tme_thread_cooperative()) \\"
		$as_echo "${op_then}"
		$as_echo_n "${op_indent2}tme_memory_${op}${size}("
		# this strips off the tme_shared qualifier:
		#
		if test ${op} = read; then
		    $as_echo_n "(_tme_const tme_uint${size}_t *) _tme_audit_type(mem, tme_uint${size}_t *)"
		else
		    $as_echo_n "(tme_uint${size}_t *) _tme_cast_pointer_shared(tme_uint${size}_t *, tme_uint${size}_t *, mem)"
		fi
		$as_echo "${op_x}, align_min)${op_semi} \\"

		$as_echo "${op_indent1}/* otherwise, if we aren't locking for all memory accesses, and we can \\"
		$as_echo "${op_indent1}   make direct ${size}-bit accesses, and this memory is aligned \\"
		$as_echo "${op_indent1}   enough to make a single direct atomic access, do the single \\"
		$as_echo "${op_indent1}   direct atomic ${op}: */ \\"
		$as_echo "${op_else_if}" | tr '@' '\n'
		$as_echo "${op_indent1}(__tme_predict_true(TME_MEMORY_ALIGNMENT_ATOMIC(TME_MEMORY_TYPE_COMMON) != 0 \\"
		$as_echo "${op_indent1}                    && TME_MEMORY_ALIGNMENT_ATOMIC(tme_uint${size}_t) != 0 \\"
		$as_echo "${op_indent1}                    && _tme_memory_address_test(mem, TME_MEMORY_ALIGNMENT_ATOMIC(tme_uint${size}_t) - 1, align_min) == 0)) \\"
		$as_echo "${op_then}"
		$as_echo "${op_indent2}(*_tme_audit_type(mem, tme_uint${size}_t *)) \\"
		if test ${op} = write; then
		    $as_echo "${op_indent2}  = (x); \\"
		fi
		$as_echo "${op_indent1}/* otherwise, we must do a slow indirect atomic ${op}: */ \\"
		$as_echo "${op_else}" | tr '@' '\n'
		$as_echo "${op_indent2}tme_memory${type}_${op}${size}(mem${op_x}${type_lock}, align_min)${op_semi} \\"
		;;

	    bus)
		$as_echo "${op_indent0}/* if threads are cooperative, do a plain ${op}: */ \\"
		$as_echo "${op_indent0}(tme_thread_cooperative()) \\"
		$as_echo "${op_then}"
		$as_echo_n "${op_indent2}tme_memory_${op}${size}("
		# this strips off the tme_shared qualifier:
		#
		if test ${op} = read; then
		    $as_echo_n "(_tme_const tme_uint${size}_t *) _tme_audit_type(mem, tme_uint${size}_t *)"
		else
		    $as_echo_n "(tme_uint${size}_t *) _tme_cast_pointer_shared(tme_uint${size}_t *, tme_uint${size}_t *, mem)"
		fi
		$as_echo "${op_x}, align_min)${op_semi} \\"

		$as_echo "${op_indent1}/* otherwise, if we aren't locking for all memory accesses, the \\"
		$as_echo "${op_indent1}   host supports misaligned ${size}-bit accesses, the host's bus \\"
		$as_echo "${op_indent1}   boundary is greater than or equal to the emulated bus \\"
		$as_echo "${op_indent1}   boundary, and this memory is aligned enough, do a single \\"
		$as_echo "${op_indent1}   direct bus ${op}: */ \\"
		$as_echo "${op_else_if}" | tr '@' '\n'
		$as_echo "${op_indent1}(__tme_predict_true(TME_MEMORY_ALIGNMENT_ATOMIC(TME_MEMORY_TYPE_COMMON) != 0 \\"
		$as_echo "${op_indent1}                    && _TME_ALIGNOF_INT${size}_T < sizeof(tme_uint${size}_t) \\"
		$as_echo "${op_indent1}                    && TME_MEMORY_BUS_BOUNDARY >= (bus_boundary) \\"
		$as_echo "${op_indent1}                    && _tme_memory_address_test(mem, _TME_ALIGNOF_INT${size}_T - 1, align_min) == 0)) \\"
		$as_echo "${op_then}"
		$as_echo "${op_indent2}(*_tme_audit_type(mem, tme_uint${size}_t *)) \\"
		if test ${op} = write; then
		    $as_echo "${op_indent2}  = (x); \\"
		fi

		$as_echo "${op_indent1}/* otherwise, if we're locking for all memory accesses, or \\"
		$as_echo "${op_indent1}   if this memory must cross at least one host bus boundary \\"
		$as_echo "${op_indent1}   and the host bus boundary is less than the emulated bus \\"
		$as_echo "${op_indent1}   boundary, do a slow indirect atomic ${op}: */ \\"
		$as_echo "${op_else_if}" | tr '@' '\n'
		$as_echo "${op_indent1}(__tme_predict_false(TME_MEMORY_ALIGNMENT_ATOMIC(TME_MEMORY_TYPE_COMMON) == 0 \\"
		$as_echo "${op_indent1}                     || (sizeof(tme_uint${size}_t) > TME_MEMORY_BUS_BOUNDARY \\"
		$as_echo "${op_indent1}                         && TME_MEMORY_BUS_BOUNDARY < (bus_boundary)))) \\"
		$as_echo "${op_then}"
		$as_echo "${op_indent2}tme_memory_atomic_${op}${size}(mem${op_x}, lock, align_min)${op_semi} \\"

		$as_echo "${op_indent1}/* otherwise, if the memory is not larger than the emulated \\"
		$as_echo "${op_indent1}   bus boundary, or if size-alignment would mean an atomic \\"
		$as_echo "${op_indent1}   host access and it is size-aligned, do a single atomic \\"
		$as_echo "${op_indent1}   ${op}, which may be direct or slow: */ \\"
		$as_echo "${op_else_if}" | tr '@' '\n'
		$as_echo "${op_indent1}(__tme_predict_true((sizeof(tme_uint${size}_t) <= (bus_boundary) \\"
		$as_echo "${op_indent1}                     || (TME_MEMORY_ALIGNMENT_ATOMIC(tme_uint${size}_t) != 0 \\"
		$as_echo "${op_indent1}                         && TME_MEMORY_ALIGNMENT_ATOMIC(tme_uint${size}_t) <= sizeof(tme_uint${size}_t))) \\"
		$as_echo "${op_indent1}                    && _tme_memory_address_test(mem, sizeof(tme_uint${size}_t) - 1, align_min) == 0)) \\"
		$as_echo "${op_then}"
		$as_echo "${op_indent2}tme_memory_atomic_${op}${size}(mem${op_x}, lock, sizeof(tme_uint${size}_t))${op_semi} \\"
		$as_echo "${op_indent1}/* otherwise, we must do a slow bus ${op}: */ \\"
		$as_echo "${op_else}" | tr '@' '\n'
		$as_echo "${op_indent2}tme_memory${type}_${op}${size}(mem${op_x}${type_lock}, align_min, bus_boundary)${op_semi} \\"
		;;

	    esac

	    # close this macro:
	    #
	    $as_echo "${op_close}" | tr '@' '\n'
	done
    done

    $as_echo ""
    $as_echo "/* the ${size}-bit atomic operations: */"

    # the atomic operations.  NB that cx, read, and write are
    # deliberately at the end and in that order, to allow all earlier
    # default implementations to still use any host CPU-specific cx,
    # read and write macros:
    #
    for op in add sub mul div and or xor not neg xchg cx read write; do

	# dispatch on the operation.  NB that we don't need to
	# generate 8-bit atomic read and write operations:
	#
	op_rval="tme_uint${size}_t"
	op_const=
	op_proto_operand=", tme_uint${size}_t"
	op_operand=operand
	op_from=to
	op_operator=
	op_operation=
	op_indent=
	case ${op} in
	read)
	    if test ${size} = 8; then continue; fi
	    op_const="_tme_const "
	    op_from=from
	    op_proto_operand=
	    ;;
	write)
	    if test ${size} = 8; then continue; fi
	    op_rval=void
	    op_operand=value_written
	    ;;
	cx)
	    op_proto_operand=", tme_uint${size}_t, tme_uint${size}_t"
	    op_operand=value_written
	    op_indent="  "
	    ;;
	add) op_operator='+' ;;
	sub) op_operator='-' ;;
	mul) op_operator='*' ;;
	div) op_operator='/' ;;
	and) op_operator='&' ;;
	or)  op_operator='|' ;;
	xor) op_operator='^' ;;
	not) op_operation='~value_read' ; op_proto_operand= ;;
	neg) op_operation='0 - value_read' ; op_proto_operand= ;;
	xchg) op_operand=value_written
	esac
	if test "x${op_operator}" != x; then
	    op_operation="value_read ${op_operator} ${op_operand}"
	fi

	# if we're making the header, just emit a prototype:
	#
	if $header; then
	    $as_echo "${op_rval} tme_memory_atomic_${op}${size} _TME_P((${op_const}tme_shared tme_uint${size}_t *${op_proto_operand}, tme_rwlock_t *, unsigned int));"
	    continue
	fi

	$as_echo ""
	$as_echo "/* undefine any macro version of tme_memory_atomic_${op}${size}: */"
	$as_echo "#undef tme_memory_atomic_${op}${size}"
	$as_echo ""
	$as_echo "/* the ${size}-bit atomic ${op} function: */"
	$as_echo "${op_rval}"
	$as_echo "tme_memory_atomic_${op}${size}(${op_const}tme_shared tme_uint${size}_t *memory,"
	if test ${op} = cx; then
	    $as_echo "                        tme_uint${size}_t value_cmp,"
	fi
	if test "x${op_proto_operand}" != x; then
	    $as_echo "                        tme_uint${size}_t ${op_operand},"
	fi
	$as_echo "                        tme_rwlock_t *rwlock,"
	$as_echo "                        unsigned int align_min)"
	$as_echo "{"
	if test ${op} != write; then
	    $as_echo "  tme_uint${size}_t value_read;"
	fi
	if test "x${op_operation}" != x; then
	    $as_echo "  tme_uint${size}_t value_written;"
	fi
	if test ${op} = read || test ${op} = write || test ${op} = cx; then :; else
	    $as_echo "  tme_uint${size}_t value_read_verify;"
	fi
	$as_echo ""
	$as_echo "  /* if we can't make direct accesses at all, all atomic"
	$as_echo "     accesses must be done under lock.  (when threads are"
	$as_echo "     cooperative the actual locking isn't needed): */"
	$as_echo "  if (TME_MEMORY_ALIGNMENT_ATOMIC(TME_MEMORY_TYPE_COMMON) == 0) {"
	$as_echo "    if (!tme_thread_cooperative()) {"
	if test ${op} = read; then
	    $as_echo "      tme_rwlock_rdlock(rwlock);"
	else
	    $as_echo "      tme_rwlock_wrlock(rwlock);"
	fi
	$as_echo "    }"
	if test ${op} != write; then
	    $as_echo "    value_read = tme_memory_read${size}((_tme_const tme_uint${size}_t *) memory, align_min);"
	fi
	if test ${op} = cx; then
	    $as_echo "    if (value_read == value_cmp) {"
	fi
	if test "x${op_operation}" != x; then
	    $as_echo "    value_written = ${op_operation};"
	fi
	if test ${op} != read; then
	    $as_echo "${op_indent}    tme_memory_write${size}((tme_uint${size}_t *) memory, value_written, align_min);"
	fi
	if test "x${op_indent}" != x; then
	    $as_echo "    }"
	fi
	$as_echo "    if (!tme_thread_cooperative()) {"
	if test ${op} = read; then
	    $as_echo "      tme_rwlock_rdunlock(rwlock);"
	else
	    $as_echo "      tme_rwlock_wrunlock(rwlock);"
	fi
	$as_echo "    }"
	$as_echo "  }"
	$as_echo ""
	$as_echo "  /* otherwise, threads are not cooperative and this host CPU"
	$as_echo "     can make atomic accesses to at least the most common memory"
	$as_echo "     size."
	$as_echo ""
	$as_echo "     in that case, the only reason this function should get"
	$as_echo "     called is if the host CPU can't do an atomic ${size}-bit"
	$as_echo "     ${op} at all, or if it can't do it at this alignment."
	if test ${op} = read || test ${op} = write || test ${op} = cx; then
	    $as_echo ""
	    $as_echo "     we assume that these problematic atomic ${op}s are rare,"
	    $as_echo "     and to emulate them we simply stop all other threads while"
	    $as_echo "     doing the ${op}: */"
	    $as_echo "  else {"
	    $as_echo "    tme_thread_suspend_others();"
	    if test ${op} != write; then
		$as_echo "    value_read = tme_memory_read${size}((_tme_const tme_uint${size}_t *) memory, align_min);"
	    fi
	    if test ${op} = cx; then
		$as_echo "    if (value_read == value_cmp) {"
	    fi
	    if test ${op} != read; then
		$as_echo "${op_indent}    tme_memory_write${size}((tme_uint${size}_t *) memory, value_written, align_min);"
	    fi
	    if test "x${op_indent}" != x; then
		$as_echo "    }"
	    fi
	    $as_echo "    tme_thread_resume_others();"
	    $as_echo "  }"
	else
	    $as_echo ""
	    $as_echo "     we emulate the atomic ${size}-bit ${op} with a compare-and-exchange: */"
	    $as_echo "  else {"
	    $as_echo ""
	    $as_echo "    /* do an atomic read of the memory: */"
	    $as_echo "    value_read = tme_memory_atomic_read${size}(memory, rwlock, align_min);"
	    $as_echo ""
	    $as_echo "    /* spin the ${op} in a compare-and-exchange loop: */"
	    $as_echo "    for (;;) {"
	    if test "x${op_operation}" != x; then
		$as_echo ""
		$as_echo "      /* make the value to write: */"
		$as_echo "      value_written = ${op_operation};"
	    fi
	    $as_echo ""
	    $as_echo "      /* try the compare-and-exchange: */"
	    $as_echo "      value_read_verify = tme_memory_atomic_cx${size}(memory, value_read, value_written, rwlock, align_min);"
	    $as_echo ""
	    $as_echo "      /* if the compare-and-exchange failed: */"
	    $as_echo "      if (__tme_predict_false(value_read_verify != value_read)) {"
	    $as_echo ""
	    $as_echo "        /* loop with the new value read from the memory: */"
	    $as_echo "        value_read = value_read_verify;"
	    $as_echo "        continue;"
	    $as_echo "      }"
	    $as_echo ""
	    $as_echo "      /* stop now: */"
	    $as_echo "      break;"
	    $as_echo "    }"
	    $as_echo "  }"
	fi
	if test ${op} != write; then
	    $as_echo ""
	    $as_echo "  /* return the value read: */"
	    $as_echo "  return (value_read);"
	fi
	$as_echo "}"
    done

    if test `expr ${size} \>= ${size_ifdef}` = 1; then
	$as_echo ""
	$as_echo "#endif /* TME_HAVE_INT${size}_T */"
    fi

done

# done:
#
exit 0
