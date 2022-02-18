\ProvidesClass{BeanSET}
\LoadClass[11pt]{article}

\usepackage{fullpage}
\usepackage{ifthen}
\usepackage{hyperref}

\hypersetup{
	colorlinks=true,
	linkcolor=blue,
}

\setlength{\parindent}{0pt}

\newcommand{\name}[1]{\gdef\@name{#1}} 
\newcommand{\mail}[1]{\gdef\@mail{#1}} 
\newcommand{\coursename}[1]{\gdef\@coursename{#1}} 
\newcommand{\courseNo}[1]{\gdef\@courseNo{#1}} 
\newcommand{\semester}[1]{\gdef\@sem{#1}} 
\newcommand{\hwNo}[1]{\gdef\@hwNo{#1}} 
\newcommand{\duedate}[1]{\gdef\@duedate{#1}}
\newcommand{\collabs}[1]{\gdef\@collabs{#1}}

\newcommand{\psetheader}{
    \ifthenelse{\isundefined{\@collabs}}{
        \begin{center}
            \setlength{\parindent}{0cm} \setlength{\parskip}{0mm}
				
				{\textbf{\@courseNo~\@sem: PSET \@hwNo} \hfill \@name}
				
				\@coursename \hfill \href{mailto: \@mail}{\tt{\@mail}}
				
				Collaborator(s): $\emptyset$ \hfill Due Date:~\@duedate	
				
				\hrulefill
        \end{center}
    }
    {
        \begin{center}
            \setlength{\parindent}{0cm} \setlength{\parskip}{0mm}
				
				{\textbf{\@courseNo~\@sem: PSET \@hwNo} \hfill \@name}
				
				\@coursename \hfill \href{mailto: \@mail}{\tt{\@mail}}
				
				Collaborator(s):~\@collabs \hfill Due Date:~\@duedate	
				
				\hrulefill
        \end{center}
    }
}