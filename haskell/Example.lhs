%include polycode.fmt
%subst keyword a = "\textcolor{BlueViolet}{\textbf{" a "}}"
%format inv (a) = a "^{-1} "
\begin{code}
  module Example where
\end{code}
%<*example>
\begin{code}
  example :: IO ()
  example = putStrLn "example"
\end{code}
%</example>