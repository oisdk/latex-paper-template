%include polycode.fmt
%subst keyword a = "\textcolor{BlueViolet}{\textbf{" a "}}"
%options ghci -package lean-peano

\begin{code}
module Example where

import Numeric.Peano
\end{code}
%<*example>
\begin{code}
example :: Nat
example = S (S (S Z))
\end{code}
%</example>
%<*calc-example>
\eval{example}
%</calc-example>

