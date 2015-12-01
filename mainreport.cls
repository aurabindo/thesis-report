%	Latex Template for Project/Thesis Report
%
%    Copyright (C) 2010  Govt. Engineering College, Thrissur
%
%		Jain Basil Aliyas <jainbasil@gmail.com>
%
%    Copyright (C) 2014-2016  School of Information Sciences, Manipal University, Manipal
%
%		Aurabindo J <mail@aurabindo.in>
%		Sumana Bhat <sbsumana74@gmail.com>
%
%    This program is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    This program is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with this program.  If not, see <http://www.gnu.org/licenses/>.

\NeedsTeXFormat{LaTeX2e}[1996/12/01]
\ProvidesClass{mainreport}[]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
%\DeclareOption*{\PassOptionsToClass{\CurrentOption}{extreport}}
\PassOptionsToClass{a4paper}{extreport}
\ProcessOptions\relax
\LoadClass[11pt,oneside]{report}
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
\lfoot{\footnotesize{\institutename}} 
\rfoot{\thepage}
\lhead{\footnotesize Boot-time Optimization for Android\\ on Intel Atom Architecture}
\rhead{\footnotesize Aurabindo J}
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
  \vspace*{30\p@}%
  {\parindent \z@ \raggedright \normalfont
    %\ifnum \c@secnumdepth >\m@ne
    %    \huge\bfseries \@chapapp\space \thechapter
    %    \par\nobreak
    %    \vskip 20\p@
    %\fi
    \interlinepenalty\@M
    {\centering  \fontsize{14}{16.82} \selectfont  \bf \bfseries \thechapter .  \MakeTextUppercase{#1}\par\nobreak }
    \vskip 25\p@
  }}
  
  \makeatother
\makeatletter 
 \def\@makeschapterhead#1{%
  \vspace*{30\p@}%
  {\parindent \z@ \raggedright \normalfont
    %\ifnum \c@secnumdepth >\m@ne
    %    \huge\bfseries \@chapapp\space \thechapter
    %    \par\nobreak
    %    \vskip 20\p@
    %\fi
    \interlinepenalty\@M
    {\centering  \fontsize{14}{16.82} \selectfont  \bf \bfseries \MakeTextUppercase{#1}\par\nobreak }
    \vskip 25\p@
  }}
  
  \makeatother

  

\def\maketitle{%
	\begin{titlepage}
	\thispagestyle{empty}
	{\centering     
	
	{\rm \Large  \linespread{1.5} \bf \MakeTextUppercase \projecttitle}\\
	
	%Title must be in capital letters
	%Adjust space here if the title goes to more than one line
	\vspace*{0.3cm}
	{\centering	Thesis submitted in partial fulfillment of the requirements for the degree of\\}
	
	%\vspace{.3cm}
	\vspace*{0.3cm}

	{\bf \centering	Master of Science in Technology\\}
	{\bf \centering	M.Sc. Tech (Branch of M.Sc. Tech Program)\\}
	\vspace*{0.3cm}

	%\bf \Large{M.Sc. Tech\\ Project Report - 2015}\\
	{Submitted by\\}
	\vspace{.3cm}
	\rm
	%{\bf \MakeTextUppercase \projectauthors \\}
	{\bf \normalsize Aurabindo J\\}
	{\normalsize \#141021003\\}
	\vspace{.6cm}
	{\centering Under the guidance of,\\}
	\vspace{1.5cm}

	\noindent	{\bf External Guide} \hfill {\bf Internal Guide\\}
	Mr. Satish A Hipparagi \hfill Dr. Harishchandra Hebbar\\
	{Engineering Manager} \hfill {Director\\}
	Intel Corp. \hfill SOIS\\
	Bengaluru \hfill Manipal University, Manipal \\

	%{{Guided By}} \\
	%\vspace{.5cm}
	 %\hspace{.05cm} 
	 %{\normalsize \bf {guide-name}}\\
	 %{\normalsize \bf {designation}}\\
	%\vspace{2cm}
	\vspace{1.5cm}
	\begin{figure}[ht] 
	{\centering {\includegraphics[scale=.4]{manipal.jpg}}\par}
	\end{figure}
	{\bf \large{ School of Information Sciences} \\}
	{\large Manipal University, Manipal \\}
	} 
	\pagebreak
	\end{titlepage}
}

\def\makecertificate{%
	\thispagestyle{empty}
	{\centering     
	{\bf \Large \MakeTextUppercase School of Information Sciences\\}
	{\Large Manipal University, Manipal \\}
		
		{\centering {\includegraphics[scale=.3]{manipal.jpg}}\par}
	
	\begin{Large}
		 \Large \bf {CERTIFICATE\\}
	\end{Large}
	\vspace*{.3cm}
	
	This is to certify that this thesis work titled\\
	{\bf \MakeTextUppercase \projecttitle \\}
	Is a bonafide record of the work done by \\
	
	\vspace*{.3cm}
	\rm
	%{\bf \MakeTextUppercase \projectauthors \\}
	{\bf  \projectauthors \\}
	{\rollno \\}
	}
	\vspace*{.3cm}
%	{ \linespread{1} Of the Third Semester, Emebedded Systems in partial fulfillment of the requirement for the award of the Degree of Master of Sciences and Technology in Embedded Systems under the Manipal University in the year 2015 \\}
	\noindent
	In partial fulfillment of the requirements for the award of the degree of {\bf Master of
	Science in Technology - M.Sc. Tech (Branch of M.Sc. Tech Program)} under
	Manipal University, Manipal and the same has not been submitted elsewhere for
	the award of any other degree.

	\vspace{2cm}

	\noindent	{\bf External Guide} \hfill {\bf Internal Guide\\}
	Mr. Satish A Hipparagi \hfill Dr. Harishchandra Hebbar\\
	{Engineering Manager} \hfill {Director\\}
	Intel Corp. \hfill SOIS\\
	Bengaluru \hfill Manipal University, Manipal \\
	
	\vspace{2cm}
	
	{\centering \bf Director\\}
	{\centering School of Information Science\\}
}



