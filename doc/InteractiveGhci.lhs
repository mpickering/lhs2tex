%include poly.fmt

%if False

> module InteractiveGhci where

%endif
%format . = "."
%format forall a = "\forall" a
%options ghci -XRankNTypes -fprint-explicit-foralls

> fix    ::  forall a. (a -> a) -> a
> fix f  =   f (fix f)

This function is of type \eval{:t fix},
and |take 10 (fix ('x':))| 
evaluates to \eval{take 10 (fix ('x':))}.
