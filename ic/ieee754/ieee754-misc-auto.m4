AS_INIT

# $Id: ieee754-misc-auto.sh,v 1.6 2007/08/24 01:05:43 fredette Exp $

# ic/ieee754/ieee754-misc-auto.sh - automatically generates C code 
# for miscellaneous IEEE 754 emulation support:

#
# Copyright (c) 2004 Matt Fredette
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
#include <tme/common.h>
_TME_RCSID("\$Id: ieee754-misc-auto.sh,v 1.6 2007/08/24 01:05:43 fredette Exp $");

EOF
if $header; then 
    :
else
    cat <<EOF
#include <tme/ic/ieee754.h>
#include "softfloat-tme.h"
#include <math.h>
#ifdef HAVE_FLOAT_H
#include <float.h>
#endif
#ifdef HAVE_LIMITS_H
#include <limits.h>
#endif
EOF
fi

# permute for the different precisions we want to support:
#
for precision in single double extended80 quad; do

    # get information about this precision:
    #
    _precision=`$as_echo $0 | sed -e "s/$PROG/ieee754-precision.sh/"`
    eval `sh ${_precision} ${precision}`

    # if we're generating a header:
    #
    if $header; then
	cat <<EOF

/* decide which builtin C floating-point type is the best match for
   the IEEE 754 ${precision} precision format.  if a builtin type matches
   this format exactly, use that type, otherwise we assume that the
   smallest builtin type that is at least ${size} bytes wide is the best
   match.  if no builtin type is at least that wide, we use long
   double, or double if long double is not available: */
#if ((TME_FLOAT_FORMATS_BUILTIN & TME_FLOAT_FORMAT_IEEE754_${capprecision}) != 0)
#define TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN TME_FLOAT_FORMAT_IEEE754_${capprecision}
#elif (_TME_SIZEOF_FLOAT >= ${size})
#define TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN TME_FLOAT_FORMAT_FLOAT
#elif (_TME_SIZEOF_DOUBLE >= ${size} || !defined(_TME_HAVE_LONG_DOUBLE))
#define TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN TME_FLOAT_FORMAT_DOUBLE
#else
#define TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN TME_FLOAT_FORMAT_LONG_DOUBLE
#endif

/* typedef the builtin C floating-point type that is the best match
   for the IEEE 754 ${precision} precision format: */
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_FLOAT)
typedef float tme_ieee754_${precision}_builtin_t;
#define tme_float_value_ieee754_${precision}_builtin tme_float_value_float
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_DOUBLE)
typedef double tme_ieee754_${precision}_builtin_t;
#define tme_float_value_ieee754_${precision}_builtin tme_float_value_double
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_LONG_DOUBLE))
typedef long double tme_ieee754_${precision}_builtin_t;
#define tme_float_value_ieee754_${precision}_builtin tme_float_value_long_double
#endif

/* this asserts that the float is either in IEEE 754 ${precision}
   precision format, or in the best-match builtin type format.  it
   evaluates to nonzero if the float is in IEEE 754 ${precision}
   precision format: */
#define tme_ieee754_${precision}_is_format(x) \\
  (tme_float_assert_formats(x, \\
                            TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN) \\
   && tme_float_is_format(x, \\
                          TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN, \\
		          TME_FLOAT_FORMAT_IEEE754_${capprecision}))

/* this asserts that the float is either in IEEE 754 ${precision}
   precision format, or in the best-match builtin type format.  it
   evaluates to nonzero if the float is in the best-match builtin 
   type format: */
#define tme_ieee754_${precision}_is_format_builtin(x) \\
  (tme_float_assert_formats(x, \\
                            TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN) \\
   && tme_float_is_format(x, \\
                          TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN, \\
		          TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN))

/* this asserts that the float is either in IEEE 754 ${precision}
   precision format, or in the best-match builtin type format.  it
   evaluates to nonzero if the float is a NaN: */
#define tme_ieee754_${precision}_is_nan(x) \\
  (tme_float_assert_formats(x, \\
                            TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN) \\
   && tme_float_is_nan(x, \\
                       TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN))

/* this asserts that the float is either in IEEE 754 ${precision}
   precision format, or in the best-match builtin type format.  it
   evaluates to nonzero if the float is an infinity: */
#define tme_ieee754_${precision}_is_inf(x) \\
  (tme_float_assert_formats(x, \\
                            TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN) \\
   && tme_float_is_inf(x, \\
                       TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN))

/* this asserts that the float is either in IEEE 754 ${precision}
   precision format, or in the best-match builtin type format.  it
   evaluates to nonzero if the float is a zero: */
#define tme_ieee754_${precision}_is_zero(x) \\
  (tme_float_assert_formats(x, \\
                            TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN) \\
   && tme_float_is_zero(x, \\
                        TME_FLOAT_FORMAT_IEEE754_${capprecision} | TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN))

/* tme_ieee754_${precision}_value_get(x, buffer) returns a pointer to
   the value of x in IEEE 754 ${precision} precision format (i.e., it 
   returns a pointer to ${integral}).  if x isn't already in this 
   format, it is converted into that format in the given buffer: */
#define tme_ieee754_${precision}_value_get(x, buffer) \\
  (tme_ieee754_${precision}_is_format(x) \\
   ? &(x)->tme_float_value_ieee754_${precision} \\
   : tme_ieee754_${precision}_value_from_builtin((x)->tme_float_value_ieee754_${precision}_builtin, buffer))

/* tme_ieee754_${precision}_value_set(x, y) sets the value of x to
   y, in IEEE 754 ${precision} precision format (i.e., y is a ${integral}).  
   (the internal function _tme_ieee754_${precision}_value_set(x, t, y) 
   takes the type of y, which must be compatible with ${integral}): */
#define tme_ieee754_${precision}_value_set(x, y) \\
  do { \\
    (x)->tme_float_value_ieee754_${precision} = (y); \\
    (x)->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision}; \\
  } while (/* CONSTCOND */ 0)
#define _tme_ieee754_${precision}_value_set(x, t, y) \\
  do { \\
    *((t *) &(x)->tme_float_value_ieee754_${precision}) = (y); \\
    (x)->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision}; \\
  } while (/* CONSTCOND */ 0)

/* tme_ieee754_${precision}_value_set_constant(x, y) sets the value of 
   x to the constant y (i.e., y is a const ${constant} *): */
#define tme_ieee754_${precision}_value_set_constant(x, y) \\
  do { \\
EOF
	x_value="(x)->tme_float_value_ieee754_${precision}"
	case "${precision}" in
	single)
	    $as_echo "    ${x_value} = *(y); \\"
	    ;;
	double)
	    $as_echo "    ${x_value}.tme_value64_uint32_hi = (y)->tme_ieee754_double_constant_hi; \\"
	    $as_echo "    ${x_value}.tme_value64_uint32_lo = (y)->tme_ieee754_double_constant_lo; \\"
	    ;;
	extended80)
	    $as_echo "    ${x_value}.tme_float_ieee754_extended80_sexp = (y)->tme_ieee754_extended80_constant_sexp; \\"
	    $as_echo "    ${x_value}.tme_float_ieee754_extended80_significand.tme_value64_uint32_hi = (y)->tme_ieee754_extended80_constant_significand_hi; \\"
	    $as_echo "    ${x_value}.tme_float_ieee754_extended80_significand.tme_value64_uint32_lo = (y)->tme_ieee754_extended80_constant_significand_lo; \\"
	    ;;
	quad)
	    $as_echo "    ${x_value}.tme_float_ieee754_quad_hi.tme_value64_uint32_hi = (y)->tme_ieee754_quad_constant_hi_hi; \\"
	    $as_echo "    ${x_value}.tme_float_ieee754_quad_hi.tme_value64_uint32_lo = (y)->tme_ieee754_quad_constant_hi_lo; \\"
	    $as_echo "    ${x_value}.tme_float_ieee754_quad_lo.tme_value64_uint32_hi = (y)->tme_ieee754_quad_constant_lo_hi; \\"
	    $as_echo "    ${x_value}.tme_float_ieee754_quad_lo.tme_value64_uint32_lo = (y)->tme_ieee754_quad_constant_lo_lo; \\"
	    ;;
	esac
	cat <<EOF
    (x)->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision}; \\
  } while (/* CONSTCOND */ 0)

/* tme_ieee754_${precision}_value_builtin_get(x) returns the value of 
   x as the builtin C type that is the best match for the IEEE 754
   ${precision} precision format: */
#define tme_ieee754_${precision}_value_builtin_get(x) \\
  (tme_ieee754_${precision}_is_format_builtin(x) \\
   ? (x)->tme_float_value_ieee754_${precision}_builtin \\
   : tme_ieee754_${precision}_value_to_builtin(&(x)->tme_float_value_ieee754_${precision}))

/* tme_ieee754_${precision}_value_builtin_set(x, format, y) sets the value of
   x to y, whose type is a builtin C type with format format.  if the value of
   y is a NaN or an infinity, y is stored in x in IEEE 754 ${precision}
   precision format, otherwise y is stored in x as the builtin C type 
   that is the best match for the IEEE 754 ${precision} precision format: */
#define tme_ieee754_${precision}_value_builtin_set(x, format, y) \\
  do { \\
    /* set the value: */ \\
    tme_float_value_builtin_set(x, format, y); \\
    \\
    /* if the result is a NaN: */ \\
    if (tme_float_is_nan(x, format)) { \\
      \\
      /* use the proper default IEEE 754 ${precision} precision NaN: */ \\
      (x)->tme_float_value_ieee754_${precision} = ieee754_ctl->tme_ieee754_ctl_default_nan_${precision}; \\
      (x)->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision}; \\
    } \\
    \\
    /* otherwise, if the result isn't already in IEEE 754 ${precision} precision format: */ \\
    else if ((format) != TME_FLOAT_FORMAT_IEEE754_${capprecision}) { \\
      \\
      /* if the result is infinite: */ \\
      if (tme_float_is_inf(x, format)) { \\
        \\
	/* use the IEEE 754 ${precision} precision infinity: */ \\
	(x)->tme_float_value_ieee754_${precision}${sexp} = ${mask_exp} | (tme_float_is_negative(x, (format)) ? ${mask_sign} : 0); \\
EOF
	case "${precision}" in
	single) ;;
	double)
	    $as_echo "	(x)->tme_float_value_ieee754_double.tme_value64_uint32_lo = 0; \\"
	    ;;
	extended80)
	    $as_echo "	(x)->tme_float_value_ieee754_extended80.tme_float_ieee754_extended80_significand.tme_value64_uint32_hi = 0; \\"
	    $as_echo "	(x)->tme_float_value_ieee754_extended80.tme_float_ieee754_extended80_significand.tme_value64_uint32_lo = 0; \\"
	    ;;
	quad)
	    $as_echo "	(x)->tme_float_value_ieee754_quad.tme_float_ieee754_quad_hi.tme_value64_uint32_lo = 0; \\"
	    $as_echo "	(x)->tme_float_value_ieee754_quad.tme_float_ieee754_quad_lo.tme_value64_uint32_hi = 0; \\"
	    $as_echo "	(x)->tme_float_value_ieee754_quad.tme_float_ieee754_quad_lo.tme_value64_uint32_lo = 0; \\"
	    ;;
	esac
	cat <<EOF
        (x)->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision}; \\
      } \\
      \\
      /* otherwise, if the result isn't already the builtin C type that \\
         is the best match for the IEEE 754 ${precision} precision format: */ \\
      else if ((format) != TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN) { \\
        \\
	/* convert the result: */ \\
	if ((format) == TME_FLOAT_FORMAT_FLOAT) { \\
	  (x)->tme_float_value_ieee754_${precision}_builtin = (x)->tme_float_value_float; \\
	} \\
        TME_FLOAT_IF_LONG_DOUBLE(else if ((format) == TME_FLOAT_FORMAT_LONG_DOUBLE) { \\
	  (x)->tme_float_value_ieee754_${precision}_builtin = (x)->tme_float_value_long_double; \\
	}) \\
	else { \\
	  assert((format) == TME_FLOAT_FORMAT_DOUBLE); \\
	  (x)->tme_float_value_ieee754_${precision}_builtin = (x)->tme_float_value_double; \\
	} \\
        (x)->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN; \\
      } \\
    } \\
  } while (/* CONSTCOND */ 0)

/* this converts a value from IEEE 754 ${precision} precision format
   into the builtin C type that is the best match for that format: */
tme_ieee754_${precision}_builtin_t tme_ieee754_${precision}_value_to_builtin _TME_P((const ${integral} *));

/* this converts a value from the builtin C type that is the best
   match for the IEEE 754 ${precision} precision format, into that
   format: */
const ${integral} *tme_ieee754_${precision}_value_from_builtin _TME_P((tme_ieee754_${precision}_builtin_t, ${integral} *));

/* this does a NaN check for an IEEE 754 ${precision} precision monadic function: */
int tme_ieee754_${precision}_check_nan_monadic _TME_P((struct tme_ieee754_ctl *, const struct tme_float *, struct tme_float *));

/* this does a NaN check for an IEEE 754 ${precision} precision dyadic function: */
int tme_ieee754_${precision}_check_nan_dyadic _TME_P((struct tme_ieee754_ctl *, const struct tme_float *, const struct tme_float *, struct tme_float *));
EOF

	# emit the prototypes for the from-integer conversion
	# functions:
	#
	for convert in int32 int64; do

	    cond=1
	    case ${convert} in
	    int32) convert_builtin="tme_uint32_t" ;;
	    int64) convert_builtin="tme_uint64_t" ; cond="defined(TME_HAVE_INT64_T)" ;;
	    esac

	    if test "${cond}" != 1; then
		$as_echo ""
		$as_echo "#if ${cond}"
	    fi

	    $as_echo ""
	    $as_echo "/* this converts a ${convert_builtin} to a ${precision}: */"
	    $as_echo "void tme_ieee754_${precision}_from_${convert} _TME_P((${convert_builtin}, struct tme_float *));"

	    if test "${cond}" != 1; then
		$as_echo ""
		$as_echo "#endif /* ${cond} */"
	    fi
	done

	# permute over the radices:
	#
	for radix in 10; do

	    cat <<EOF

/* this converts an in-range IEEE 754 ${precision} precision value into its
   radix ${radix} mantissa and exponent.  the mantissa is either zero, or 
   in the range incl 1 to ${radix} excl: */
void tme_ieee754_${precision}_radix${radix}_mantissa_exponent _TME_P((struct tme_ieee754_ctl *, const struct tme_float *, struct tme_float *, struct tme_float *));

/* this scales an IEEE 754 ${precision} precision value by adding n to its 
   radix ${radix} exponent: */
void tme_ieee754_${precision}_radix${radix}_scale _TME_P((struct tme_ieee754_ctl *, const struct tme_float *, const struct tme_float *, struct tme_float *));

EOF
	done

    # otherwise, we're not generating a header:
    #
    else

	cat <<EOF

/* this converts a value from IEEE 754 ${precision} precision format
   to the builtin C type that is the best match for that format: */
tme_ieee754_${precision}_builtin_t
tme_ieee754_${precision}_value_to_builtin(const ${integral} *x_ieee754)
{
  tme_ieee754_${precision}_builtin_t x_builtin;
  tme_uint32_t exponent;
  tme_uint32_t sign;
  tme_uint32_t chunk;
  tme_uint32_t fracor;
  
  /* get x's biased exponent: */
  exponent = TME_FIELD_MASK_EXTRACTU((*x_ieee754)${sexp}, ${mask_exp});

  /* convert the fraction one 16-bit chunk at a time, and track
     a bitwise-or of all of the fraction bits: */
EOF
	chunk_i=0
	while true; do
	    eval "chunk_member=\$chunk_member_${chunk_i} ; chunk_mask=\$chunk_mask_${chunk_i}"
	    if test "x${chunk_member}" = xx; then
		break
	    fi
	    $as_echo "  chunk = TME_FIELD_MASK_EXTRACTU((*x_ieee754)${chunk_member}, ${chunk_mask});"
	    if test ${chunk_i} = 0; then
		$as_echo "  fracor = chunk;"
		if ${implicit}; then
		    $as_echo "  /* if the exponent is nonzero, add the implicit integer bit: */"
		    $as_echo "  if (exponent != 0) chunk |= ((${chunk_mask} / _TME_FIELD_MASK_FACTOR(${chunk_mask})) + 1);"
		else
		    $as_echo "  /* if the exponent is the biased maximum, clear the explicit integer bit: */"
		    $as_echo "  if (exponent == ${exp_biased_max}) fracor &= ~_TME_FIELD_MASK_MSBIT(${chunk_mask} / _TME_FIELD_MASK_FACTOR(${chunk_mask}));"
		fi
		$as_echo "  x_builtin = chunk;"
	    else
		$as_echo "  fracor |= chunk;"
		$as_echo "  x_builtin = (x_builtin * 65536) + chunk;"
	    fi
	    chunk_i=`expr ${chunk_i} + 1`
	done
	cat <<EOF

  /* get x's sign bit: */
  sign = ((*x_ieee754)${sexp} & ${mask_sign});

  /* if the exponent is the biased maximum, x is either an infinity or a NaN: */
  if (exponent == ${exp_biased_max}) {

    /* if the fraction is nonzero, x is a NaN.  x must not be a NaN,
       because we were supposed to catch this earlier: */
    assert (fracor == 0);

    /* x is an infinity.  construct a builtin infinity: */
    x_builtin = 
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_FLOAT)
      tme_float_infinity_float
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_DOUBLE)
      tme_float_infinity_double
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_LONG_DOUBLE))
      tme_float_infinity_long_double
#endif
      (sign);
  }

  /* if the exponent is the biased minimum and the fraction is
     all-bits-zero, x is a zero: */
  else if (exponent == 0
	   && fracor == 0) {

    /* construct a builtin zero: */
    x_builtin = 
      (sign ?
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_FLOAT)
       tme_float_negative_zero_float()
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_DOUBLE)
       tme_float_negative_zero_double()
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_LONG_DOUBLE))
       tme_float_negative_zero_long_double()
#endif
       : 0.0);
  }

  /* otherwise, x is an in-range value that needs to be converted: */
  else {

    /* scale the result by the unbiased exponent, adjusted by the
       number of fraction bits (which are currently to the left of the
       floating point in x_builtin): */
    x_builtin = 
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_FLOAT)
      tme_float_radix2_scale_float
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_DOUBLE)
      tme_float_radix2_scale_double
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_LONG_DOUBLE))
      tme_float_radix2_scale_long_double
#endif
      (x_builtin, (exponent - ${exp_bias}) - ${fracbits});

    if (sign) {
      x_builtin = 0 - x_builtin;
    }
  }

  /* done: */
  return (x_builtin);
}

/* this converts a value from the builtin C type that is the best
   match for the IEEE 754 ${precision} precision format, to that
   format: */
const ${integral} *
tme_ieee754_${precision}_value_from_builtin(tme_ieee754_${precision}_builtin_t x_builtin, ${integral} *x_ieee754)
{
  tme_int32_t exponent;
  tme_uint32_t chunk;
  tme_ieee754_${precision}_builtin_t x_builtin_buffer;
  const tme_ieee754_${precision}_builtin_t pzero_builtin = +0.0;

  /* x must not be a NaN or an infinity: */
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_FLOAT)
  assert (!isnan(x_builtin));
  assert (!isinf(x_builtin));
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_DOUBLE)
  assert (!isnan(x_builtin));
  assert (!isinf(x_builtin));
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_LONG_DOUBLE))
  assert (!isnan(x_builtin));
  assert (!isinf(x_builtin));
#endif

  /* get the mantissa and exponent of x: */
  x_builtin = 
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_FLOAT)
    tme_float_radix2_mantissa_exponent_float
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_DOUBLE)
    tme_float_radix2_mantissa_exponent_double
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_LONG_DOUBLE))
    tme_float_radix2_mantissa_exponent_long_double
#endif
    (x_builtin, &exponent);

  /* zero the IEEE 754 version: */
  memset((char *) x_ieee754, 0, sizeof((*x_ieee754)));

  /* if x is positive or negative zero: */
  if (x_builtin == 0
      || -x_builtin == 0) {

    /* set x's sign bit if x is not positive zero: */
    memcpy((char *) &x_builtin_buffer, (char *) &pzero_builtin, sizeof(pzero_builtin));
    x_builtin_buffer = x_builtin;
    if (x_builtin < 0
        || memcmp((char *) &x_builtin_buffer, (char *) &pzero_builtin, sizeof(pzero_builtin)) != 0) {
      (*x_ieee754)${sexp} |= ${mask_sign};
    }

    /* return the zero: */
    return (x_ieee754);
  }

  /* set x's sign bit: */
  if (x_builtin < 0) {
    (*x_ieee754)${sexp} |= ${mask_sign};
    x_builtin = -x_builtin;
  }

  /* bias the exponent: */
  exponent += ${exp_bias};

  /* if the biased exponent is greater than or equal to the biased
     maximum, we must represent x as an infinity: */
  if (exponent >= (tme_int32_t) ${exp_biased_max}) {

    /* we do this by just setting the biased exponent to the biased
       maximum: */
    exponent = ${exp_biased_max};
  }

  /* otherwise, x will be either a normalized number, a denormalized
     number, or possibly a zero: */
  else {

    /* if the biased exponent is less than or equal to the biased
       minimum, x will be a denormalized number (possibly so
       denormalized that it becomes a zero): */
    if (exponent <= 0) {

      /* scale x into a denormalized number: */
      assert (x_builtin >= 1);
      x_builtin = 
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_FLOAT)
	tme_float_radix2_scale_float
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_DOUBLE)
	tme_float_radix2_scale_double
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision}_BUILTIN == TME_FLOAT_FORMAT_LONG_DOUBLE))
	tme_float_radix2_scale_long_double
#endif
	(x_builtin, exponent - 1);
      assert (x_builtin < 1);
      exponent = 0;
    }

    /* convert the mantissa, one 16-bit chunk at a time: */
EOF
	chunk_i=0
	while true; do
	    eval "chunk_member=\$chunk_member_${chunk_i} ; chunk_mask=\$chunk_mask_${chunk_i}"
	    if test "x${chunk_member}" = xx; then
		break
	    fi
	    factor="((${chunk_mask} / _TME_FIELD_MASK_FACTOR(${chunk_mask})) + 1)"
	    if test ${chunk_i} = 0; then
		if ${implicit}; then
		    $as_echo "    /* remove any implicit integer bit: */"
		    $as_echo "    if (x_builtin >= 1) {"
		    $as_echo "      x_builtin -= 1;"
		    $as_echo "    }"
		else
		    factor="(${factor} / 2)"
		fi
	    fi
	    $as_echo "    x_builtin = x_builtin * ${factor};"
	    $as_echo "    chunk = x_builtin;"
	    $as_echo "    chunk -= (chunk > x_builtin);"
	    $as_echo "    x_builtin -= chunk;"
	    $as_echo "    TME_FIELD_MASK_DEPOSITU((*x_ieee754)${chunk_member}, ${chunk_mask}, chunk);"
	    chunk_i=`expr ${chunk_i} + 1`
	done
	cat <<EOF
  }

  /* set x's biased exponent: */
  TME_FIELD_MASK_DEPOSITU((*x_ieee754)${sexp}, ${mask_exp}, exponent);

  /* done: */
  return (x_ieee754);
}
EOF

	# emit the NaN check functions:
	#
	for monadic in true false; do
	    if ${monadic}; then type=monadic; else type=dyadic; fi

	    $as_echo ""
	    $as_echo "/* this does a NaN check for an IEEE 754 ${precision} precision ${type} function: */"
	    $as_echo "int"
	    $as_echo_n "tme_ieee754_${precision}_check_nan_${type}(struct tme_ieee754_ctl *ieee754_ctl, const struct tme_float *src0"
	    if ${monadic}; then :; else
		$as_echo_n ", const struct tme_float *src1"
	    fi
	    $as_echo ", struct tme_float *dst)"
	    $as_echo "{"
	    $as_echo "  const ${integral} *nan0;"
	    if $monadic; then :; else
		$as_echo "  const ${integral} *nan1;"
	    fi
	    $as_echo ""
	    $as_echo "  /* check for a NaN operand: */"
	    $as_echo "  nan0 = NULL;"
	    $as_echo "  if (tme_ieee754_${precision}_is_nan(src0)) {"
	    $as_echo "    assert (src0->tme_float_format == TME_FLOAT_FORMAT_IEEE754_${capprecision});"
	    $as_echo "    nan0 = &src0->tme_float_value_ieee754_${precision};"
	    $as_echo "  }"
	    if $monadic; then nan1=nan0; else
		nan1=nan1
		$as_echo "  nan1 = nan0;"
		$as_echo "  if (tme_ieee754_${precision}_is_nan(src1)) {"
		$as_echo "    assert (src1->tme_float_format == TME_FLOAT_FORMAT_IEEE754_${capprecision});"
		$as_echo "    nan1 = &src1->tme_float_value_ieee754_${precision};"
		$as_echo "    if (nan0 == NULL) {"
		$as_echo "      nan0 = nan1;"
		$as_echo "    }"
		$as_echo "  }"
	    fi
	    $as_echo ""
	    $as_echo "  /* if we have a NaN operand: */"
	    $as_echo "  if (__tme_predict_false(nan0 != NULL)) {"
	    $as_echo ""
	    $as_echo "    /* propagate a NaN: */"
	    $as_echo "    dst->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision};"
	    $as_echo "    (*ieee754_ctl->tme_ieee754_ctl_nan_from_nans_${precision})"
	    $as_echo "      (ieee754_ctl, nan0, ${nan1}, &dst->tme_float_value_ieee754_${precision});"
	    $as_echo "    return (TRUE);"
	    $as_echo "  }"
	    $as_echo ""
	    $as_echo "  return (FALSE);"
	    $as_echo "}"
	done

	# emit the from-integer conversion functions:
	#
	for convert in int32 int64; do

	    cond=1
	    case ${convert} in
	    int32) convert_builtin="tme_uint32_t" ;;
	    int64) convert_builtin="tme_uint64_t" ; cond="defined(TME_HAVE_INT64_T)" ;;
	    esac

	    if test "${cond}" != 1; then
		$as_echo ""
		$as_echo "#if ${cond}"
	    fi

	    $as_echo ""
	    $as_echo "/* this converts a ${convert_builtin} to a ${precision}: */"
	    $as_echo "void"
	    $as_echo "tme_ieee754_${precision}_from_${convert}(${convert_builtin} src, struct tme_float *dst)"
	    $as_echo "{"
	    $as_echo "  _tme_ieee754_${precision}_value_set(dst, ${precision_sf}, ${convert}_to_${precision_sf}(src));"
	    $as_echo "}"

	    if test "${cond}" != 1; then
		$as_echo ""
		$as_echo "#endif /* ${cond} */"
	    fi
	done

	# permute over the radices:
	#
	for radix in 2 10; do

	    # XXX FIXME - for now, skip quad precisions.  this is just
	    # laziness over generating the constants:
	    #
	    if test "${precision}" = quad; then continue; fi

	    cat <<EOF

/* this converts an in-range IEEE 754 ${precision} precision value into its
   radix ${radix} mantissa and exponent.  the mantissa is either zero, or 
   in the range incl 1 to ${radix} excl: */
void
tme_ieee754_${precision}_radix${radix}_mantissa_exponent(struct tme_ieee754_ctl *ieee754_ctl, const struct tme_float *src, struct tme_float *_mantissa, struct tme_float *_exponent)
{
  tme_int32_t exponent;
EOF
	    if test ${radix} != 2; then
		cat <<EOF
#if ((TME_FLOAT_FORMATS_BUILTIN & TME_FLOAT_FORMAT_IEEE754_${capprecision}) == 0)
  ${integral} value_ieee754_buffer;
  struct tme_float value_buffer;
  struct tme_float zero_buffer;
  struct tme_float one_buffer;
  struct tme_float constant_buffer;
  struct tme_float radix_buffer;
  ${precision_sf} * const value = (${precision_sf} *) &value_buffer.tme_float_value_ieee754_${precision};
  const ${precision_sf} * const zero = (${precision_sf} *) &zero_buffer.tme_float_value_ieee754_${precision};
  const ${precision_sf} * const one = (${precision_sf} *) &one_buffer.tme_float_value_ieee754_${precision};
  const ${precision_sf} * const constant = (${precision_sf} *) &constant_buffer.tme_float_value_ieee754_${precision};
  const ${precision_sf} * const radix = (${precision_sf} *) &radix_buffer.tme_float_value_ieee754_${precision};
  tme_uint32_t exponent_bit;
  int negate;
#endif /* ((TME_FLOAT_FORMATS_BUILTIN & TME_FLOAT_FORMAT_IEEE754_${capprecision}) == 0) */
EOF
	    fi
	    cat <<EOF

  /* check for a NaN operand: */
  if (__tme_predict_false(tme_ieee754_${precision}_check_nan_monadic(ieee754_ctl, src, _mantissa))) {
    if (_exponent != NULL) {
      *_exponent = *_mantissa;
    }
    return;
  }

  /* if this is an infinity: */
  if (tme_ieee754_${precision}_is_inf(src)) {

    /* return a NaN: */
    _mantissa->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision};
    _mantissa->tme_float_value_ieee754_${precision} = ieee754_ctl->tme_ieee754_ctl_default_nan_${precision};
    if (_exponent != NULL) {
      *_exponent = *_mantissa;
    }
    return;
  }
EOF
	    if test ${radix} = 2; then
		$as_echo ""
		$as_echo "  /* extract the unbiased exponent: */"
		$as_echo "  exponent = TME_FIELD_MASK_EXTRACTU(src->tme_float_value_ieee754_${precision}${sexp}, ${mask_exp});"
		$as_echo "  exponent -= ${exp_bias};"
		$as_echo ""
		$as_echo "  /* the mantissa is the source with a biased zero for the exponent: */"
		$as_echo "  *_mantissa = *src;"
		$as_echo "  TME_FIELD_MASK_DEPOSITU(_mantissa->tme_float_value_ieee754_${precision}${sexp}, ${mask_exp}, ${exp_bias});"
	    else
		cat <<EOF

  /* if a builtin type matches the IEEE 754 ${precision} format exactly, 
     use the corresponding mantissa-exponent function: */
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision} == TME_FLOAT_FORMAT_FLOAT)
  tme_ieee754_${precision}_value_builtin_set
    (_mantissa,
     TME_FLOAT_FORMAT_FLOAT,
     tme_float_radix${radix}_mantissa_exponent_float(tme_ieee754_${precision}_value_builtin_get(src), &exponent));
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision} == TME_FLOAT_FORMAT_DOUBLE)
  tme_ieee754_${precision}_value_builtin_set
    (_mantissa,
     TME_FLOAT_FORMAT_DOUBLE,
     tme_float_radix${radix}_mantissa_exponent_double(tme_ieee754_${precision}_value_builtin_get(src), &exponent));
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision} == TME_FLOAT_FORMAT_LONG_DOUBLE))
  tme_ieee754_${precision}_value_builtin_set
    (_mantissa,
     TME_FLOAT_FORMAT_LONG_DOUBLE,
     tme_float_radix${radix}_mantissa_exponent_long_double(tme_ieee754_${precision}_value_builtin_get(src), &exponent));
#else

  /* get this value and some constants: */
  tme_ieee754_${precision}_value_set(&value_buffer, *tme_ieee754_${precision}_value_get(src, &value_ieee754_buffer));
  tme_ieee754_${precision}_value_set_constant(&zero_buffer, &tme_ieee754_${precision}_constant_zero);
  tme_ieee754_${precision}_value_set_constant(&one_buffer, &tme_ieee754_${precision}_constant_one);
  tme_ieee754_${precision}_value_set_constant(&radix_buffer, &tme_ieee754_${precision}_constant_${radix}e2ex[[0]]);

  /* take the magnitude of the value, but remember if it was negative: */
  negate = ${precision_sf}_lt(*value, *zero);
  if (negate) {
    *value = ${precision_sf}_sub(*zero, *value);
  }

  /* start with an exponent of zero: */
  exponent = 0;

  /* if the value is nonzero: */
  if (!${precision_sf}_eq(*value, *zero)) {

    /* while the value is less than one: */
    exponent_bit = TME_ARRAY_ELS(tme_ieee754_${precision}_constant_${radix}e_minus_2ex) - 1;
    tme_ieee754_${precision}_value_set_constant(&constant_buffer, &tme_ieee754_${precision}_constant_${radix}e_minus_2ex[[exponent_bit]]);
    for (; ${precision_sf}_lt(*value, *one); ) {

      /* if value is less than or equal to ${radix}^-(2^exponent_bit),
         divide value by ${radix}^-(2^exponent_bit), and subtract 2^exponent_bit
         from exponent: */
      if (${precision_sf}_le(*value, *constant)
          || exponent_bit == 0) {
        *value = ${precision_sf}_div(*value, *constant);
        exponent -= (1 << exponent_bit);
      }

      /* otherwise, move to the next exponent bit: */
      else {
        exponent_bit--;
        tme_ieee754_${precision}_value_set_constant(&constant_buffer, &tme_ieee754_${precision}_constant_${radix}e_minus_2ex[[exponent_bit]]);
      }
    }

    /* while the value is greater than ${radix}: */
    exponent_bit = TME_ARRAY_ELS(tme_ieee754_${precision}_constant_${radix}e2ex) - 1;
    tme_ieee754_${precision}_value_set_constant(&constant_buffer, &tme_ieee754_${precision}_constant_${radix}e2ex[[exponent_bit]]);
    for (; !(${precision_sf}_le(*value, *radix)) ; ) {

      /* if value is greater than or equal to ${radix}^(2^exponent_bit),
         divide value by ${radix}^(2^exponent_bit), and add 2^exponent_bit
         to exponent: */
      if (!(${precision_sf}_lt(*value, *constant))
          || exponent_bit == 0) {
        *value = ${precision_sf}_div(*value, *constant);
        exponent += (1 << exponent_bit);
      }

      /* otherwise, move to the next exponent bit: */
      else {
        exponent_bit--;
        tme_ieee754_${precision}_value_set_constant(&constant_buffer, &tme_ieee754_${precision}_constant_${radix}e2ex[[exponent_bit]]);
      }
    }

    /* if the value was originally negative, negate the mantissa: */
    if (negate) {
      *value = ${precision_sf}_sub(*zero, *value);
    }

    /* return the mantissa: */
    _tme_ieee754_${precision}_value_set(_mantissa, ${precision_sf}, *value);
  }
#endif
EOF
	    fi
	    cat <<EOF

  /* return the exponent: */
  if (_exponent != NULL) {
    _tme_ieee754_${precision}_value_set(_exponent, ${precision_sf}, int32_to_${precision_sf}(exponent));
  }
}

/* this scales an IEEE 754 ${precision} precision value by adding n to its 
   radix ${radix} exponent: */
void
tme_ieee754_${precision}_radix${radix}_scale(struct tme_ieee754_ctl *ieee754_ctl, const struct tme_float *src0, const struct tme_float *src1, struct tme_float *dst)
{
  ${integral} src_buffer;
  tme_int8_t rounding_mode;
  tme_int32_t _n;
#if ((TME_FLOAT_FORMATS_BUILTIN & TME_FLOAT_FORMAT_IEEE754_${capprecision}) == 0)
  tme_int32_t exponent;
  tme_uint32_t exponent_bit, n;
  ${precision_sf} * const value = (${precision_sf} *) &dst->tme_float_value_ieee754_${precision};
  struct tme_float constant_buffer;
  const ${precision_sf} * const constant = (${precision_sf} *) &constant_buffer.tme_float_value_ieee754_${precision};
#endif /* ((TME_FLOAT_FORMATS_BUILTIN & TME_FLOAT_FORMAT_IEEE754_${capprecision}) == 0) */
    
  /* check for a NaN operand: */
  if (__tme_predict_false(tme_ieee754_${precision}_check_nan_dyadic(ieee754_ctl, src0, src1, dst))) {
    return;
  }

  /* if the exponent is an infinity: */
  if (tme_ieee754_${precision}_is_inf(src1)) {

    /* return a NaN: */
    dst->tme_float_format = TME_FLOAT_FORMAT_IEEE754_${capprecision};
    dst->tme_float_value_ieee754_${precision} = ieee754_ctl->tme_ieee754_ctl_default_nan_${precision};
    return;
  }

  /* if the operand is a zero or an infinity: */
  if (tme_ieee754_${precision}_is_zero(src1)
      || tme_ieee754_${precision}_is_inf(src1)) {

    /* return the operand unchanged: */
    *dst = *src0;
    return;
  }

  /* truncate the exponent to an integer, using the round-to-zero mode: */
  rounding_mode = ieee754_ctl->tme_ieee754_ctl_rounding_mode;
  ieee754_ctl->tme_ieee754_ctl_rounding_mode = TME_FLOAT_ROUND_TO_ZERO;
  _n = ${precision_sf}_to_int32(*((const ${precision_sf} *) tme_ieee754_${precision}_value_get(src1, &src_buffer)));
  ieee754_ctl->tme_ieee754_ctl_rounding_mode = rounding_mode;

  /* if a builtin type matches the IEEE 754 ${precision} format exactly, 
     use the corresponding mantissa-exponent function: */
#if (TME_FLOAT_FORMAT_IEEE754_${capprecision} == TME_FLOAT_FORMAT_FLOAT)
  tme_ieee754_${precision}_value_builtin_set
    (dst,
     TME_FLOAT_FORMAT_FLOAT,
     tme_float_radix${radix}_scale_float(tme_ieee754_${precision}_value_builtin_get(src0), _n));
#elif (TME_FLOAT_FORMAT_IEEE754_${capprecision} == TME_FLOAT_FORMAT_DOUBLE)
  tme_ieee754_${precision}_value_builtin_set
    (dst,
     TME_FLOAT_FORMAT_DOUBLE,
     tme_float_radix${radix}_scale_double(tme_ieee754_${precision}_value_builtin_get(src0), _n));
#elif (defined(_TME_HAVE_LONG_DOUBLE) && (TME_FLOAT_FORMAT_IEEE754_${capprecision} == TME_FLOAT_FORMAT_LONG_DOUBLE))
  tme_ieee754_${precision}_value_builtin_set
    (dst,
     TME_FLOAT_FORMAT_LONG_DOUBLE,
     tme_float_radix${radix}_scale_long_double(tme_ieee754_${precision}_value_builtin_get(src0), _n));
#else

  /* start this value: */
  tme_ieee754_${precision}_value_set(dst, *tme_ieee754_${precision}_value_get(src0, &src_buffer));

  /* start with the most significant exponent bit: */
  exponent_bit = TME_ARRAY_ELS(tme_ieee754_${precision}_constant_${radix}e2ex) - 1;
  exponent = (1 << exponent_bit);
  tme_ieee754_${precision}_value_set_constant(&constant_buffer, &tme_ieee754_${precision}_constant_${radix}e2ex[[exponent_bit]]);

  /* if n is negative: */
  if (_n < 0) {

    for (n = 0 - _n; n > 0;) {
      if (n >= exponent || exponent == 1) {
        *value = ${precision_sf}_div(*value, *constant);
        n -= exponent;
      }
      else {
        exponent >>= 1;
        exponent_bit--;
	tme_ieee754_${precision}_value_set_constant(&constant_buffer, &tme_ieee754_${precision}_constant_${radix}e2ex[[exponent_bit]]);
      }
    }
  }

  /* otherwise, n is positive: */
  else {
    for (n = _n; n > 0;) {
      if (n >= exponent || exponent == 1) {
        *value = ${precision_sf}_mul(*value, *constant);
        n -= exponent;
      }
      else {
        exponent >>= 1;
        exponent_bit--;
	tme_ieee754_${precision}_value_set_constant(&constant_buffer, &tme_ieee754_${precision}_constant_${radix}e2ex[[exponent_bit]]);
      }
    }
  }
#endif
}
EOF
	done

    fi
done

# done:
#
exit 0;
