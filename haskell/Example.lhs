%include polycode.fmt

%subst keyword a = "\textcolor{BlueViolet}{\textbf{" a "}}"
\begin{code}
module Example where
\end{code}
%<*example>
\begin{code}
example :: IO ()
example = print "Hello!"
\end{code}
%</example>
