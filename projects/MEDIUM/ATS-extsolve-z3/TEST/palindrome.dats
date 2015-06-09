(* ****** ****** *)
//
staload
"libats/SATS/ilist_prf.sats"
//
(* ****** ****** *)
//
stacst
append: (ilist, ilist) -> ilist
//
stacst reverse: (ilist) -> ilist
//
(* ****** ****** *)
//
propdef
isPalindrome(xs: ilist) = ILISTEQ(xs, reverse(xs))
//
(* ****** ****** *)
//
extern
prfun
mylemma1{xs:ilist}(): ILISTEQ(xs, reverse(reverse(xs)))
//
(* ****** ****** *)
//
extern
prfun
mylemma2
{xs,ys:ilist}
(
// argumentless
) :
ILISTEQ
(
  reverse(append(xs, ys)), append(reverse(ys), reverse(xs))
) (* end of [mylemma2] *)
//
(* ****** ****** *)
//
extern
prfun
mylemma_main{xs:ilist}(): isPalindrome(append(xs, reverse(xs)))
//
(* ****** ****** *)

primplmnt
mylemma_main
  {xs}() = ILISTEQ() where
{
//
prval ILISTEQ() = mylemma1{xs}()
prval ILISTEQ() = mylemma2{xs,reverse(xs)}()
//
} (* end of [mylemma_main] *)

(* ****** ****** *)

(* end of [palindrome.dats] *)