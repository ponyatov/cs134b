let multiply_by n =
  let multiplier x = n * x in
	  multiplier;; (* return function *)

let double = multiply_by 2;;
let triple = multiply_by 3;;

triple 5;;  (* 15 *)

let apply_twice f x = f (f x)
let square x = x * x

let result = apply_twice square 2
