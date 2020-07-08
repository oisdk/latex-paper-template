%include polycode.fmt
%options ghci

%subst keyword a = "\textcolor{BlueViolet}{\textbf{" a "}}"
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
