import Cs2120f24.Lectures.«02_prop_logic».formal.semantics
import Cs2120f24.Lectures.«02_prop_logic».formal.interpretation

namespace cs2120f24

/-!
#### Truth Table Output Column

Given expression, return truth table outputs by ascending row
index, and where the all false row thus appears at the "top" of
the "table", and each subsequent row is "incremented" in binary
arithmetic up to the row at index 2^n-1, where n is the number
of variables.
-/

def truthTableOutputVector : PLExpr → List Bool
| e =>  evalBoolExpr_interps (interpsForExpr e) e where
evalBoolExpr_interps : List BoolInterp → PLExpr → List Bool
| [], _ => []
| h::t, e => [evalBoolExpr e h] ++ evalBoolExpr_interps t e

end cs2120f24