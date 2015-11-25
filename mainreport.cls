\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{mainreport}[]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extreport}}
\PassOptionsToClass{a4paper}{extreport}
\ProcessOptions\relax
\LoadClass[12pt,oneside]{report}
%\LoadClass[12pt,oneside]{extreport}
\RequirePackage{fancyhdr}
\RequirePackage{amsmath}
\RequirePackage{setspace}
\RequirePackage{textcase}
\RequirePackage{graphicx}
\RequirePackage{amsfonts}
\RequirePackage{multicol}


\RequirePackage[top=1.5in, bottom=1in, left=1.25in, right=1.25in]{geometry}
\usepackage{fancyhdr}
\pagestyle{plain}
\fancypagestyle{plain}{% 
\fancyhf{} 
\cfoot{\small{School of Information Sciences, Manipal}\\ {\thepage}} 
%\cfoot{\thepage} 
\renewcommand{\headrulewidth}{0pt} 
\renewcommand{\footrulewidth}{0pt} 
}
%
\pagestyle{plain}


\renewcommand{\rmdefault}{phv}
\renewcommand{\sfdefault}{phv}
\onehalfspacing

% Macro for List of Symbols
\def\listofsymbols{\input{symbols} \clearpage}
\def\addsymbol #1: #2#3{$#1$ \> \parbox{5in}{#2 \dotfill \pageref{#3}}\\}
\def\newsymbol#1{\label{#1}} 

\pagenumbering{roman}

\setcounter{secnumdepth}{5}
\setcounter{tocdepth}{5}


% for setting up alternative directory paths to graphics files,
% remember to comment in "graphics" package
%
\graphicspath{{./eps/}{./tiff/}{./jpg/}{./fig/}{./dia/}{./gnuplot/}{./png/}}


%------------
\usepackage{geometry}
%\geometry{verbose,a4paper,tmargin=24.2mm,bmargin=31.4mm,lmargin=38.1mm,rmargin=31.75mm}

%To generate list of abbreviations
\usepackage{nomencl}
\makenomenclature


\renewcommand{\section}{\@startsection
{section}%                   % the name
{1}%                         % the level
%{0mm}%                       % the indent
{2mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\fontsize{12pt}{14pt}\selectfont \bf  \MakeTextUppercase}} % the style
%{\fontsize{14pt}{16pt}\selectfont \bf  \MakeTextUppercase}} % the style
\renewcommand*\thesection{\arabic{section}}

\renewcommand{\subsection}{\@startsection
{subsection}%                   % the name
{1}%                         % the level
%{0mm}%                       % the indent
{1mm}%                       % the indent
{-\baselineskip}%            % the before skip
{0.5\baselineskip}%          % the after skip
{\fontsize{12pt}{14pt}\selectfont \bf}} % the style


\renewcommand\contentsname{\fontsize{14pt}{18pt}\selectfont \bf    \MakeTextUppercase{ Table of Contents}}
\renewcommand\listfigurename{\fontsize{14pt}{18pt}\selectfont \bf    \MakeTextUppercase{ List of Figures}}
\renewcommand\listtablename{\fontsize{14pt}{18pt}\selectfont \bf    \MakeTextUppercase{List of Tables }}
\renewcommand\nomname{\fontsize{14pt}{18pt}\selectfont \bf    \MakeTextUppercase{List of Abbreviations }}
\renewcommand\abstractname{\fontsize{14pt}{18pt}\selectfont \bf    \MakeTextUppercase{Abstract }}
\renewcommand\bibname{\fontsize{14pt}{18pt}\selectfont \bf    \MakeTextUppercase{Bibliography }}


\newcommand{\chhead}{\fontsize{14pt}{16.8pt}\selectfont \centerline}
\makeatletter
\def\@makechapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    %\ifnum \c@secnumdepth >\m@ne
    %    \huge\bfseries \@chapapp\space \thechapter
    %    \par\nobreak
    %    \vskip 20\p@
    %\fi
    \interlinepenalty\@M
    {\centering  \fontsize{14}{16.82} \selectfont  \bf \bfseries \thechapter .  \MakeTextUppercase{#1}\par\nobreak }
    \vskip 40\p@
  }}
  
  \makeatother
\makeatletter 
 \def\@makeschapterhead#1{%
  \vspace*{50\p@}%
  {\parindent \z@ \raggedright \normalfont
    %\ifnum \c@secnumdepth >\m@ne
    %    \huge\bfseries \@chapapp\space \thechapter
    %    \par\nobreak
    %    \vskip 20\p@
    %\fi
    \interlinepenalty\@M
    {\centering  \fontsize{14}{16.82} \selectfont  \bf \bfseries \MakeTextUppercase{#1}\par\nobreak }
    \vskip 40\p@
  }}
  
  \makeatother

  
  
\def\maketitle{%
	\begin{titlepage}
	\thispagestyle{empty}
	\vspace*{0.5cm}
	{\centering     
	
	{\rm \Huge  \linespread{2.0} \bf \MakeTextUppercase \projecttitle}\\
	
	%Title must be in capital letters
	%Adjust space here if the title goes to more than one line
	
	\vspace{1cm}
	\begin{figure}[ht] 
	{\centering {\includegraphics[scale=.5]{manipal.jpg}}\par}
	\end{figure}
	\vspace{.5cm}
	\bf \Large{M.Sc. Tech\\ Project Report - 2015}\\
	\vspace{.2cm}
	Submitted By \\
	%\vspace{.5cm}
	\rm
	\projectauthors\\

	\vspace{.5cm}
	%{{Guided By}} \\
	%\vspace{.5cm}
	 %\hspace{.05cm} 
	 %{\normalsize \bf {guide-name}}\\
	 %{\normalsize \bf {designation}}\\
	%\vspace{2cm}
	{\bf \normal School of Information Sciences, Manipal \\ }
	} 
	\pagebreak
	\end{titlepage}
}

\def\makecertificate{%
	\thispagestyle{empty}
	\vspace*{0.2cm}
	{\centering     
	{\bf \Large School of Information Sciences, Manipal \\}
	\vspace*{0.2cm}
		
		{\centering {\includegraphics[scale=.4]{cd.png}}\par}
	
	
	\begin{Large}
		 \huge Certificate\\
	\end{Large}
	
	%\vspace*{0.5cm}
	Certified that this is a bonafide report of the project report titled \\
	{\bf \projecttitle \\}
	Presented by \\
	
	\vspace{.1cm}
	\rm
	\projectauthors \\
	}
	%\vspace*{0.5cm}
	{ \linespread{1} Of the Third Semester, Embedded Systems in partial fulfillment of the requirement for the award of the Degree of Master of Science and Technology in Embedded Systems under the Manipal University in the year 2015 \\}
	\vspace*{.1cm}\\
	\noindent
	
	Guided by \hfill Director\\
	Dr. S. Arockiaraj \hfill Dr. Harishchandra Hebbar\\
        SOIS \hfill SOIS \\
	
	%\noindent
	Date: \\
	Place: \\
	
	\pagebreak
}


\def\maketitle{%
	\begin{titlepage}
	\thispagestyle{empty}
	\vspace*{0.5cm}
	{\centering     
	
	{\rm \Large  \linespread{1.5} \bf \MakeTextUppercase \projecttitle}\\
	
	%Title must be in capital letters
	%Adjust space here if the title goes to more than one line
	
	\vspace{.7cm}
	\begin{figure}[ht] 
	{\centering {\includegraphics[scale=.5]{manipal.jpg}}\par}
	\end{figure}
	%\vspace{.3cm}
	\bf \Large{M.Sc. Tech\\ Project Report - 2015}\\
	\vspace{1cm}
	Submitted By \\
	\vspace{.5cm}
	\rm
	%{\bf \MakeTextUppercase \projectauthors \\}
	{\bf \normalsize Aurabindo J \#141021001\\}
	{\bf \normalsize Piyush Itankar \#141021003\\}
	{\bf \normalsize Namrata Singh \#141021049 \\}
	\vspace{1.5cm}
	%{{Guided By}} \\
	%\vspace{.5cm}
	 %\hspace{.05cm} 
	 %{\normalsize \bf {guide-name}}\\
	 %{\normalsize \bf {designation}}\\
	%\vspace{2cm}
	{\bf \large{ School of Information Sciences, Manipal} \\}
	} 
	\pagebreak
	\end{titlepage}
}

\def\makecertificate{%
	\thispagestyle{empty}
	\vspace*{0.2cm}
	{\centering     
	{\bf \Large School of Information Sciences, Manipal \\}
	\vspace*{0.1cm}
		
		{\centering {\includegraphics[scale=.4]{manipal.jpg}}\par}
	
	
	\begin{Large}
		 \Large \bf {CERTIFICATE\\}
	\end{Large}
	
	%\vspace*{0.5cm}
	Certified that this is a bonafide report of the Project Report titled \\
	{\bf \MakeTextUppercase \projecttitle \\}
	Done by \\
	
	%\vspace{.3cm}
	\rm
	%{\bf \MakeTextUppercase \projectauthors \\}
	{\bf  \projectauthors \\}
	}
	%\vspace*{0.5cm}
	{ \linespread{1} Of the Third Semester, Emebedded Systems in partial fulfillment of the requirement for the award of the Degree of Master of Sciences and Technology in Embedded Systems under the Manipal University in the year 2015 \\}
	\vspace*{.2 cm}\\
	\noindent
	{\bf Guided By} \hfill {\bf Director\\}
	Dr. S. Arockiaraj \hfill Dr. Harishchandra Hebbar\\
	SOIS \hfill SOIS \\
	
	\noindent Date: \\
	Place:
}





