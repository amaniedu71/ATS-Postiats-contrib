(*
** For writing ATS code
** that translates into JavaScript
*)

(* ****** ****** *)

(*
** Permission to use, copy, modify, and distribute this software for any
** purpose with or without fee is hereby granted, provided that the above
** copyright notice and this permission notice appear in all copies.
** 
** THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
** WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
** MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
** ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
** WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
** ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
** OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
*)

(* ****** ****** *)

(*
** Author: Hongwei Xi
** Authoremail: gmhwxi AT gmail DOT com
** Start Time: October, 2015
*)

(* ****** ****** *)

#define
ATS_STALOADFLAG 0 // no staloading at run-time
#define
ATS_EXTERN_PREFIX "ats2js_bacon_ext_" // prefix for external names

(* ****** ****** *)
//
staload
"./../../basics_js.sats"
//
(* ****** ****** *)
//
staload "./baconjs.sats"
//
(* ****** ****** *)
//
fun
Bacon_stream
  {a:t0p}(xs: stream(a)): EStream(a) = "mac#%"
//
(* ****** ****** *)

(* end of [baconjs_ext.sats] *)
