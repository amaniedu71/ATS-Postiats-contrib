(* ****** ****** *)
//
// HX-2014-08:
// A running example
// from ATS2 to Python3
//
(* ****** ****** *)
//
#include
"share/atspre_define.hats"
#include
"share/atspre_staload.hats"
//
(* ****** ****** *)
//
staload
"{$LIBATSCC2PY}/SATS/integer.sats"
//
(* ****** ****** *)
//
extern
fun acker : (int, int) -> int = "mac#acker"
//
implement
acker (m, n) =
(
case+
  (m, n) of 
| (0, _) => n + 1
| (_, 0) => acker(m-1, 1)
| (_, _) => acker(m-1, acker(m, n-1)) 
)
//
(* ****** ****** *)

%{^
import sys
######
from basics_cats import *
from integer_cats import *
######
sys.setrecursionlimit(1000000)
%} // end of [%{^]

(* ****** ****** *)

%{$
if (len(sys.argv) >= 3):
  print(acker(int(sys.argv[1]), int(sys.argv[2])))
else:
  print('Usage: acker <integer> <integer>')
#endif
%} // end of [%{$]

(* ****** ****** *)

(* end of [acker.dats] *)
