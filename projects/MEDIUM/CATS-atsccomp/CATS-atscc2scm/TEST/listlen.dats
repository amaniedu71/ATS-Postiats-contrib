(* ****** ****** *)
//
// HX-2016-05:
// A running example
// from ATS2 to Scheme
//
(* ****** ****** *)
//
#define ATS_DYNLOADFLAG 0
//
(* ****** ****** *)
//
#include
"share/atspre_define.hats"
//
(* ****** ****** *)
//
#include
"{$LIBATSCC2SCM}/staloadall.hats"
//
(* ****** ****** *)
//
extern
fun
listlen{a:t0p}
  : List0 (a) -> int = "mac#listlen"
//
implement
listlen{a}
  (xs) = let
//
prval
(
// argless
) = lemma_list_param (xs)
//
fun
loop{i,j:nat} .<i>.
(
  xs: list (a, i), res: int(j)
) : int(i+j) = let
in
//
case+ xs of
| list_nil () => res
| list_cons (_, xs) => loop (xs, res+1)
//
end // end of [loop]
//
in
  loop (xs, 0)
end // end of [listlen]

(* ****** ****** *)
//
extern
fun
fromto
  : (int, int) -> List0 (int) = "mac#fromto"
//
implement
fromto (m, n) =
if m < n
  then list_cons (m, fromto (m+1, n)) else list_nil ()
// end of [if]
//
(* ****** ****** *)

(* end of [listlen.dats] *)