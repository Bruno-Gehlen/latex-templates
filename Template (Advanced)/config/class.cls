%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- ESSENTIAL -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{config/class}[Book LaTeX class]
\LoadClass[a4paper, 11pt, final, twoside]{book}
\RequirePackage[subpreambles=false]{standalone}

\RequirePackage[brazilian,main=english,french]{babel}
%	selects languages
\RequirePackage[T1]{fontenc}				
%	select font encoding and allow hyphenation
\RequirePackage{fontspec}		
\RequirePackage{soul}				
%	improves hyphenation
%\RequirePackage{luatextra}	
\RequirePackage{import}				    



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- FONTS -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{luatexbase}            
% 	solves problem btwn LuaLaTeX, 
%		TexLive 2018 and microtype
\RequirePackage[
	babel=true
%	kerning=true	(conflicts with LuaLaTeX)
]{microtype}					        	
% 	typographical refinements

\RequirePackage{lmodern}					
% 	uses better fonts (?)
\setsansfont{Gilroy}[                       
% 	set up custom font
    Extension = .otf,
    Path = config/fonts/,
    UprightFont = *-Light,
    BoldFont = *-SemiBold,
    ItalicFont = *-LightItalic,
    BoldItalicFont = *-SemiBoldItalic,
    FontFace={k}{n}{*-Bold},
    FontFace={k}{it}{*-BoldItalic}
	]
\newcommand{\textbbf}[1]{%                  
%	command to insert bolder text
    {\fontseries{k}\selectfont{}#1}
	}
\renewcommand{\familydefault}{\sfdefault}	
%	set sans-serif font
\def\mathfamilydefault{\rmdefault}          
%	keep serif font for formulas

\RequirePackage{xspace}						
%	add missing spaces
\RequirePackage{pifont}                     
%	dingbat characters
\RequirePackage{relsize}                    
%	define relative font sizes



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- FIGURES -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{graphicx}					
%	improves \includegraphics
\sodef\ugg{}{.4em plus 1fill}{1em plus 2 fill}{
		2em plus 2fill minus.1em}

\RequirePackage{wrapfig}
%	provide side-by-text figures



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- SPACE RELATED -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[
	top=2.5cm, 
    bottom=2.5cm, 
    left=1cm, 
    right=4.5cm]{geometry}					
%	changes document margins
\RequirePackage{setspace}\singlespacing					
%	controls spacing between lines
\RequirePackage{indentfirst}                
%	indent first paragraph



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- COLORS -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{luacolor}                       
%	prevent color changes at page breaks
%	\let\normalcolor\relax						    
%	prevent automatic restoration to black >> but also 
%	 sometimes causes table text to be completely colored
\RequirePackage[table, dvipsnames, svgnames, x11names]{xcolor}				    
%	define custom colors

\definecolor{background1}{RGB}{21,40,41}
%	background color	
\definecolor{background2}{RGB}{17,20,29}
\definecolor{ifBlue}{RGB}{15,102,136}
%	headers and hyperlinks
\definecolor{ifSemiDarkerBlue}{RGB}{9,61,82}
\definecolor{ifDarkerBlue}{RGB}{6,8,21}
%	background color in console

\definecolor{bgLightGray}{RGB}{235,235,235}     
%	pseudocode background
\definecolor{LightGrey}{rgb}{0.96,0.96,0.96}	
%	title page
\definecolor{DarkGrey}{rgb}{0.83,0.83,0.83}
\definecolor{BaseColor}{rgb}{0.64,0.69,0.31}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- MISC -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[english]{varioref}	
%	improves cross-refs
\RequirePackage[auto-lang=false]{lipsum}				
\RequirePackage{blindtext}
%	inserts filler text
\RequirePackage{xifthen}			
%	if/then expressions
\RequirePackage{printlen}			
%	displays lengths
\RequirePackage{xstring}			
%	handles strings functions
\RequirePackage{titling}			
%	bttr control over title
\RequirePackage{authoraftertitle}	
%	accesses title and author names
\RequirePackage{datetime}			
%	custom date format
\RequirePackage{etoolbox}			
%	test if a macro value is empty
\RequirePackage{multicol}           
%	switch to more columns
\RequirePackage{footmisc}           
%	footnote features
\RequirePackage{emptypage}
%	adds... an empty page

\RequirePackage{draftwatermark}				
%	watermark
	\SetWatermarkText{ }
	\SetWatermarkScale{1}
	\SetWatermarkLightness{0.95}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- GRAPHICS (TIKZ) -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{pgf}
\RequirePackage{tikz}					
% 	programmatically defines drawings
\RequirePackage{pgfplots}
	\pgfplotsset{compat=1.14}         
	\usetikzlibrary{arrows}					
	% 	configures arrow tips
	\usetikzlibrary{arrows.meta}			
	% 	necessary to draw graphs
	\tikzset{>=latex}						
	% 	uses larger default arrow tips
	\usetikzlibrary{calc}					
	% 	extended coordinate calculation
	\usetikzlibrary{decorations.markings}	
	% 	improved decorations
	\usetikzlibrary{math}					
	% 	use mathematical functions
	\usetikzlibrary{positioning} 			
	% 	ease relative positioning
	\usetikzlibrary{backgrounds}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- HYPERLINKS -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{xurl}						
% 	properly displays urls
\RequirePackage[
	bookmarks=true, 
	bookmarksnumbered=true, 
	bookmarksopen=true,
	unicode=true, 
	colorlinks=true, 
	linktoc=all,
	linkcolor=ifBlue, 
	citecolor=ifBlue, 
	filecolor=ifBlue, 
	urlcolor=ifBlue,
	pdfstartview=FitH, 
	pdfkeywords={LaTeX, Template},
    pdfencoding=auto    
]{hyperref}									

\makeatletter
\pdfstringdefDisableCommands{%
  \def\\{}%
  \def\hbox{}%
  \def\mathsurround{}%
  \def\z@{0}%
  \def\@@underline{}%
  \def\textsuperscript#1{}%
  \def\texttt#1{<#1>}%
}
\makeatother



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- TABLES -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{multirow}						    
% 	cells spanning several rows
\newcommand{\HRule}{\rule{\linewidth}{0.5mm}}	    
% 	thicker line for the tables

\RequirePackage{tabularx} 						    
% 	for larger tables
\newcolumntype{L}{>{$}l<{$}}                       
% 	math-mode version of "l" column type 
\newcolumntype{R}{>{$}r<{$}}                       
% 	math-mode version of "r" column type 
\newcolumntype{Y}{>{\centering\arraybackslash}X}    
% 	centered X column 
\newcolumntype{Z}{>{\raggedleft\arraybackslash}X}   
% 	right-aligned X column 

\RequirePackage{array}							    
% 	extends table and array functions

\makeatletter
	\def\hlinewd#1{
	\noalign{\ifnum0=`}\fi\hrule \@height #1
	\futurelet\reserved@a\@xhline}
\makeatother
% 	end macro
\RequirePackage{csvsimple}						    
% 	populates table with file content



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- ENVIRONMENTS -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%	-Margin Notes
\RequirePackage{marginnote}

\RequirePackage[loadshadowlibrary]{todonotes}
\setuptodonotes{
	backgroundcolor=DarkGrey!25!white, 
	textcolor=black, 
	linecolor=ifBlue!70!white, 
	bordercolor=ifBlue!70!white, 
	% \loadshadowlibrary 
	shadow,
	size=footnotesize,
	tickmarkheight=0.15cm
}
\if@todonotes@useshadow%
\if@todonotes@shadowlibraryloaded%
\tikzstyle{notestyle} = [notestyleraw,%
	general shadow={shadow xshift=9.1ex, shadow yshift=-9.1ex,%
		opacity=1,fill=black!50}]%
\else%
\PackageWarning{todonotes}{Trying to put a shadow below a todonote,%
but the loadshadowlibrary option was not given when loading%
the todonotes package}%
\tikzstyle{notestyle} = [notestyleraw]%
\fi%
\else%
\tikzstyle{notestyle} = [notestyleraw]%
\fi%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- MATH -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{tensor}
%	Better tensor notation
\RequirePackage{amsmath}						
% 	extended mathematical functions
\RequirePackage{physics}
%	Wel... physics (kets, derivatives...)
\RequirePackage{amsthm}							
% 	even more advanced math functions
\RequirePackage{amssymb}  						
% 	additional math symbols
\usepackage{mathtools}

\newtheorem{theorem}{Theorem}					
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{proposition}[theorem]{Proposition}
\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{fact}[theorem]{Fact}
\newtheorem{Hypothesis}[theorem]{Hypothesis}
\newtheorem{remark}[theorem]{Remark}
\newtheorem{definition}[theorem]{Definition}

\renewcommand\qedsymbol{$\blacksquare$}

%	-Equations (eq number ref)
\makeatletter
	\def\tagform@#1{
		\maketag@@@{(\color{ifBlue}\textbbf{#1}\normalcolor)\@@italiccorr}
	}
\makeatother

% \lstnewenvironment{TeXlstlisting}{
% 	\lstset{language={[LaTeX]TeX}, 
% 	numbers=none}
% 	}{}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- BIBLIOGRAPHIC SETTINGS -%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%\RequirePackage[numbers]{natbib}		
% 	incompatible with biblatex
\RequirePackage{doi}					
% 	displays DOIs in the bibliography
\RequirePackage[autostyle]{csquotes}	
% 	mystery (search later)
\RequirePackage[
	maxcitenames=2,						
	% 	max authors cited (only for author-year)
	maxbibnames=99,						
	% 	list all authors in the ref list
	style=numeric,						
	% 	num style for ref list
	citestyle=numeric-comp,				
	% 	num style for citations
	%style=authoryear,					
	% 	NOTE: if you want the author-year style instead:
	%citestyle=authoryear-comp,			
	% 	uncomment these 2 lines and comment both ones above
	%backref=true,						
	%	includes a page backlink in the reference list
	%dashed=false,						
	%	displays all author names (only for authoryear)
	backend=biber                       
	%	uses biber to compile (instead of bibtex)
]{biblatex}								
%	uses biblatex (instead of bibtex)	

\addbibresource{files/bibliography.bib}

\newcommand{\bibName}{Bibliography}	
%	define bibliography header
\setlength\bibitemsep{0.9\itemsep}		
%	reduce space between bibliographic items

\newcommand{\MyBibliography}{
	%	to insert the bibliography
	%	receives the bibtex file
	\newpage
	\phantomsection
	\addcontentsline{toc}{chapter}{\bibName}	
	%	add bib into ToC
	{	\setstretch{0.8}
		\printbibliography}
	\thispagestyle{plain}					
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- CAPTION SETTINGS -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{caption}					
%	caption customization
\captionsetup{
	labelfont={color=ifBlue, bf, small},	    
	textfont={small},						
	labelsep=period,						
	margin=10mm								
}
\DeclareCaptionType{fileText}[File][File List]



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- CUSTOM FLOATS -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{subcaption}                 
%	handles subfloats
\RequirePackage{float}	 					
%	custom floats environments
%\RequirePackage{tocloft}	 				

\makeatletter
	\setlength{\@fptop}{0pt}    
\makeatother



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- DOCUMENT DETAILS MACROS -%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\subtitle#1{\gdef\MySubtitle{#1}}		
%	subtitle
\def\major#1{\gdef\MyMajor{#1}}				
%	name of the class 
\def\specialization#1{\gdef\MySpecialization{#1}}	
%	specialization 
\def\course#1{\gdef\MyCourse{#1}}			
%	class name 
\def\subcourse#1{\gdef\MySubcourse{#1}}		
%	subclass name 

\newcommand{\advisor}[2][Encadrement]{		
	% teacher advsing stdnts (internship report, optional)
    \gdef\MyAdvisor{#2}
    \gdef\MyAdvisorTitle{#1}
}
\def\affiliations#1{\gdef\MyAffiliations{#1}}
%	affiliations (for technical or research reports)

\def\group#1{\gdef\MyGroup{#1}}				  
%	student group (for a project report)
\def\date#1{\gdef\MyDate{#1}}				  
%	date (optional)
\newcommand{\dateUpdt}[1]{%                   
%	date of last update (optional)
    \gdef\MyDateUpdt{#1}
}
\def\summary#1{\gdef\MySummary{#1}}			  
\def\mydate{\leavevmode\hbox{\twodigits\day/\twodigits\month/\the\year}}
\def\twodigits#1{\ifnum#1<10 0\fi\the#1}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- DIVISIONS -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% \RequirePackage[Lenny]{fncychap} 
%		Chapter headings styles. Options:
%		Sonny, Lenny, Glenn, Conny*, Rejne,
%		Bjarne, Bjornstrup, PetersLenny
%	* Personally, I prefer the titlesec (below)

\RequirePackage{titlesec}
\RequirePackage{xpatch}
\RequirePackage{titletoc}

\AtBeginDocument{
	\contentsmargin{1.55em}
	\dottedcontents{section}[3.8em]{\color{ifBlue}}{2.3em}{0.5pc}
	\dottedcontents{subsection}[5.8em]{\color{ifBlue}}{3.2em}{0.5pc}
	\dottedcontents{subsubsection}[7.8em]{\color{ifBlue}}{3.2em}{0.5pc}
	\dottedcontents{paragraph}[9.8em]{\color{ifBlue}}{3.2em}{0.5pc}
}

\titleformat{\part}
    {\color{ifBlue}\normalfont\Huge\bfseries}
    {\filleft \enspace \thepart \enspace}
    {7.5pt}
    {\thispagestyle{plain}\centering}[\hrule]
% \titlespacing{\part}{0pt}{*0}{45pt}[]

\titleformat{\chapter}[frame]
    {\color{ifBlue}\normalfont\Huge\bfseries}
    {\filleft \enspace \thechapter. \enspace}% \enspace}
    {8.5pt}
    {\thispagestyle{chap}\centering}[\vskip0.3cm]%\normalsize\DoPToC]
\titlespacing{\chapter}{0pt}{*0}{0pt}

\titleformat{\section}
	{\color{ifBlue}\normalfont\LARGE\bfseries}
    {\thesection}
    {1em}
    {}[]

\titleformat{\subsection}
	{\color{ifBlue}\normalfont\Large\bfseries}
    {\thesubsection}
    {1em}
    {}[]

\titleformat{\subsubsection}
	{\color{ifBlue}\normalfont\normalsize\bfseries}
    {\thesubsubsection}
    {1em}
    {}[]

\setcounter{secnumdepth}{3}			
\setcounter{tocdepth}{3}
%	number subsubsections and 
%		include them in the TOC

%	[2]
\newcommand\DoPToC{
	\startcontents[chapters]
	\printcontents[chapters]{}{1}{
		\noindent{\color{darkgray}\rule{\textwidth}{1pt}}\par\vskip10pt
	}
}

%	[2]
\makeatletter
\xpatchcmd{\ttl@printlist}{\endgroup}{{\noindent\color{darkgray}\rule{\textwidth}{1.5pt}}\vskip20pt\endgroup}{}{}
\makeatother

% \renewcommand{\chapter}[][]{\chapter \DoPToc}
\newcommand{\NewChapter}[1]{\chapter{#1} \DoPToC}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- APPENDIX -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{appendix}
%	W.I.P


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- LISTING -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{enumitem}	
%	gives more control over lists
\setlist{nolistsep}			
%	changes spacing between list items

\RequirePackage{listings}						
%	format source code
\lstset{
	%	frame=tb,									
	%	frame around the source code
	aboveskip=1mm,								
	%	space before the source code
	belowskip=1mm,								
	%	space after the source code
	showstringspaces=false,						
	%	display space char as underscore
	columns=flexible,
    captionpos=b,                               
	%	position of the caption (t or b)
	basicstyle={\small\ttfamily\NoAutoSpacing},
	keywordstyle=\color{colKeywords},			
	%	set keyword color
	commentstyle=\color{colComments},			
	%	set comment color
	stringstyle=\color{colStrings},				
	%	set string literal color
    backgroundcolor=\color{bgLightGray},		
	%	set background color
	numbers=left,								
	%	line numbering: left, none
	numberstyle=\tiny\color{colNumber},			
	%	line number format
	breaklines=true,							
	breakatwhitespace=true,						
	tabsize=3,									
	%	size of tabulation (in chars)
	upquote=true,                               
	%	straight quote character (' instead of ’)
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- TABLE OF CONTENTS (EXTRAS) -%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\tocName}{Contents}									
%	define TOC header
\addto\captionsfrench{\renewcommand{\contentsname}{\tocName}}	
%	change TOC header
\newcommand{\lofName}{List of Figures}							
%	define LOF header
\addto\captionsfrench{\renewcommand{\listfigurename}{\lofName}}	
%	change LOF header (2)
\newcommand{\lotName}{List of Tables}							
%	define LOT header
\addto\captionsfrench{\renewcommand{\listtablename}{\lotName}}	
%	change LOT header (2)
    
\newcommand{\MyToc}{
	\phantomsection
	\addcontentsline{toc}{section}{\tocName}	
	% add the TOC in the TOC
	\tableofcontents							
	% insert TOC
	\thispagestyle{plain}						
	% no hdr/ftr
	\newpage
}
\newcommand{\MyLof}{
	\phantomsection
	\addcontentsline{toc}{section}{\lofName}	
	\listoffigures								
	\thispagestyle{plain}						
	\newpage
}
\newcommand{\MyLot}{
	\phantomsection
	\addcontentsline{toc}{section}{\lotName}	
	\listoftables								
	\thispagestyle{plain}						
	\newpage
}		

\renewcommand{\paragraph}[1]{
	\par\vspace{0.15cm}
	\phantomsection
    \IfEndWith{\thesection}{0}{
    	\addcontentsline{toc}{section}{#1}
    }{\IfEndWith{\thesubsection}{.0}{
    	\addcontentsline{toc}{subsection}{#1}
    	}{\IfEndWith{\thesubsubsection}{.0}{
    		\addcontentsline{toc}{subsubsection}{#1}
    		}{\addcontentsline{toc}{paragraph}{#1}}
        }
    }
    \noindent
    \textbbf{#1}\hspace{0.1cm}
}
%	Custom Paragraphs in TOC



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- ALIGN ENVIRONMENT -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%	[3]
\newcommand*\eqlineset{\pgfqkeys{/eqlines}}
\eqlineset{
  picture/.style={baseline, remember picture},
  line/.style={thick, draw=ifBlue, line cap=round},
  node/.style={
    minimum size=+0pt, inner sep=+0pt, outer ysep=+.3333em, anchor=base,
    name=tma\thetikzmarkalign},
}
\newcounter{tikzmarkalign}
\makeatletter
\AtBeginEnvironment{align}{%
  \setcounter{tikzmarkalign}{0}%
  \newcommand*\noeq{\hphantom{={}}}%
  \newcommand*\eq{
    \ifnum\value{tikzmarkalign}=0
      \mathrel{\tikz[/eqlines/picture]\node[/eqlines/node]{$=$};}
    \else
      \mathrel{
        \begin{tikzpicture}[/eqlines/picture]
          \node[/eqlines/node] (tma\thetikzmarkalign) {$=$};
          \unless\ifmeasuring@
            \path[/eqlines/line, overlay] (tma\thetikzmarkalign)
                        -- (tma\pgfinteval{\thetikzmarkalign-1});
          \fi
        \end{tikzpicture}
      }
    \fi
    \stepcounter{tikzmarkalign}
  }%
}
\makeatother

\makeatletter
\AtBeginEnvironment{align*}{%
  \setcounter{tikzmarkalign}{0}%
  \newcommand*\noeq{\hphantom{={}}}%
  \newcommand*\eq{
    \ifnum\value{tikzmarkalign}=0
      \mathrel{\tikz[/eqlines/picture]\node[/eqlines/node]{$=$};}
    \else
      \mathrel{
        \begin{tikzpicture}[/eqlines/picture]
          \node[/eqlines/node] (tma\thetikzmarkalign) {$=$};
          \unless\ifmeasuring@
            \path[/eqlines/line, overlay] (tma\thetikzmarkalign)
                        -- (tma\pgfinteval{\thetikzmarkalign-1});
          \fi
        \end{tikzpicture}
      }
    \fi
    \stepcounter{tikzmarkalign}
  }%
}
\makeatother



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- HEADER/FOOTER -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{lastpage}		
%	 computes the number of pages
\RequirePackage{fancyhdr}		
%	 changes headers and setters
\setlength{\headheight}{14pt}	
%	 increases header size
\newcommand{\setHeaders}{		
%	 macro for hdrs and ftrs
	\pagestyle{fancy}
		\fancyhf{}

		\fancyhead[RO,LE]{
			\textcolor{black}{\MyTitle} 
			%\ifdefined\MySubtitle -- \MySubtitle 
			%\else \fi
			}

		\fancyhead[LO,RE]{
			\nouppercase{\rightmark}
			}

		\cfoot{\textcolor{black}{\textbbf{\thepage}}}
		%\ / \pageref*{LastPage}}}
	
		\renewcommand\headrule{					
		% 	color and thickness of the header rule
    		{\color{black}\hrule width \hsize}
			}
		\renewcommand\footrule{					
		% 	color and thickness of the footer rule
			{\color{black}\hrule width \hsize} \kern 1mm
			}

	\fancypagestyle{plain}{
		\fancyhead{}
		\cfoot{\textcolor{black}{\textbbf{\thepage}}}
		\renewcommand\headrule{					
    		{\color{black}\hrule width 0pt}
			}
		\renewcommand\footrule{					
			{\color{black}\hrule width 0pt} \kern 1mm
			}
	}

	
}
\fancypagestyle{plain}{
		\fancyhead{}
		\cfoot{\textcolor{black}{\textbbf{\thepage}}}
		\renewcommand\headrule{					
    		{\color{black}\hrule width 0pt}
			}
		\renewcommand\footrule{					
			{\color{black}\hrule width 0pt} \kern 1mm
			}
	}
\fancypagestyle{chap}{
		\fancyhead{}
		\cfoot{\textcolor{black}{\textbbf{\thepage}}}
		\renewcommand\headrule{					
    		{\color{black}\hrule width 0pt}
			}
		\renewcommand\footrule{					
			{\color{black}\hrule width \hsize} \kern 1mm
			}
	}

%	[1]
\makeatletter
\renewcommand*{\cleardoublepage}{\clearpage\if@twoside \ifodd\c@page\else
\hbox{}%
\thispagestyle{empty}%
\newpage%
\if@twocolumn\hbox{}\newpage\fi\fi\fi}
\makeatother



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- DEFAULT TITLE PAGE -%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makeTheTitle}{
	\thispagestyle{plain}
	\hypersetup{
    	pdftitle={\ifdefined\MyTitle \MyTitle \else \fi \ifdefined\MySubtitle -- \MySubtitle \else \fi},
	   	pdfauthor={\ifdefined\MyAuthor \MyAuthor \else \fi},
    	pdfsubject={\ifdefined\MyCourse \MyCourse \else \fi}
	}
	\setHeaders
	%	setup PDF doc info, headers/footers
    
	\phantomsection 
	\addcontentsline{toc}{section}{Title}	
	\begin{titlepage}
		\begin{tikzpicture}[remember picture,overlay,background rectangle/.style={fill=background1}, show background rectangle]
	    	\node at (current page.south west)
			{	\begin{tikzpicture}[remember picture,overlay]
                    \newlength{\ypos}
			% *-background e imagem
					\useasboundingbox (0,0) rectangle(\the\paperwidth,\the\paperheight);
                    \node[draw=white, line width=4pt,
					 anchor=north east, xshift=-0.85cm, yshift=-1.25cm] (picture) at (current page.north east){%
                        % \ifaspectratio{169}{
					\includegraphics[height=0.65\pagewidth]{config/images/pineforest.jpeg}};
            % *-title and possibly subtitle
					\pgftext[x=1cm, y=8.5cm, top, left]
					    {\parbox[t]{19cm}{\raggedright\fontsize{45}{45}{\textbbf{\textcolor{white}{\MyTitle}}} \ifdefined\MySubtitle {\\[0.15cm] \fontsize{35}{35}{\textit{\textbbf{\textcolor{white}{\parbox[t]{19cm}{\raggedright\MySubtitle}}}}}} \else \fi}}
                    %\pgfmathsetmacro{\ypos}{17.5cm}
                    \setlength{\ypos}{5cm}
					\ifdefined\MyGroup \pgftext[x=1cm, y=\ypos, top, left]
					{\fontsize{20}{20}{\textmd{\textcolor{white}{\parbox[t]{19cm}{\raggedright\MyGroup}}}}} 
					\addtolength{\ypos}{-0.9cm}
                    \else\fi
            % *-authors
					\pgftext[x=1cm, y=\ypos, top, left]{
					    % {\begin{minipage}{19cm}
					        % \begin{doublespace}
					            \fontsize{20}{20}{\textbbf{\textcolor{white}{\MyAuthor}}}
					        % \end{doublespace}
				        % \end{minipage}}
					}
            % *-date
					\pgftext[x=20cm, y=\ypos, top, right]
				        {\fontsize{20}{20}{\textbbf{\textcolor{white}{
				            \ifdefined\MyDate 
				                {\ifdefempty{\MyDate}{\mydate}{\MyDate}} 
			                \else {\mydate} 
			                \fi}}}}
		    % *-update date
				    \addtolength{\ypos}{-0.8cm}
					\pgftext[x=20cm, y=\ypos, top, right]
				        {\fontsize{17}{17}{\textmd{\textcolor{white}{
			                \ifdefined\MyDateUpdt 
			                    {\ifdefempty{\MyDateUpdt}{}{\MyDateUpdt}} 
		                    \else {}
		                    \fi}}}}
			% *-affiliations
                    \ifdefined\MyMajor \setlength{\ypos}{9.5cm} \else \fi
					\ifdefined\MyAffiliations \setlength{\ypos}{1.5cm}
					\node[anchor=north, xshift=0cm, yshift=2cm] (ifusp) at (current page.south){
					\includegraphics[height=0.06\pagewidth]{config/images/logo_IFUSP_darkBckgrnd.png}};\pgftext[x=0cm, y=\ypos, top, at={\pgfpoint{10cm}{0cm}}]{
					    % {\begin{minipage}{19cm}
				            \fontsize{13}{13}{\textmd{\textcolor{white}{\MyAffiliations}}}
				        % \end{minipage}}					
						}\else\fi
            % *-advisors
                    \setlength{\ypos}{3cm}
					\ifdefined\MyAdvisor \pgftext[x=20cm, y=\ypos, top, right]
					    {\begin{minipage}{19cm}
					        \raggedleft
				            \fontsize{16}{16}{\textbbf{\textcolor{white}\MyAdvisorTitle} \\ \textmd{\textcolor{white}\MyAdvisor \\}}
			            \end{minipage}} 
					    \else\fi
            % *-misc
					\pgftext[x=1cm, y=14cm, top, left]
					    {\begin{minipage}{19cm}
					        \fontsize{16}{16}{
					        \raggedleft
					        % major
					        \ifdefined\MyMajor \textbbf{\textcolor{white}\MyMajor} \\ \else\fi
					        % specialization
					        \ifdefined\MySpecialization \textbbf{\textcolor{white}\MySpecialization} \\ \else\fi
					        \vspace{0.2cm}
			% *-course
					        \ifdefined\MyCourse \textmd{\textcolor{white}\MyCourse} \\ \else\fi
			% *-subcourse
					        \ifdefined\MySubcourse \textmd{\textcolor{white}\MySubcourse} \\ \else\fi
					    }\end{minipage}} 
				\end{tikzpicture}
			};
		\end{tikzpicture}
	\end{titlepage}
	%	draw title page
	
	\newpage
	\setcounter{page}{2} 	% set the 2nd page
	\thispagestyle{plain}
	
	\
	
	\newpage
	\thispagestyle{plain}

	\ifdefined\MySummary
		\phantomsection
		\addcontentsline{toc}{section}{\abstractname}
		\noindent \textcolor{ifBlue}{\textbbf{\huge \abstractname}}
           
		\vspace{0.25cm}
		\MySummary
		\newpage
		
	\else\fi
	%	insert Abstract
        
	\MyToc
	%	insert ToC
}
\renewcommand{\maketitle}{\makeTheTitle}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- "LIGHT" OPTION -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption{light}{%
	\SetWatermarkText{DRAFT}

	\renewcommand{\maketitle}{
		% setup PDF doc info
		\hypersetup{
    	    pdftitle={\ifdefined\MyTitle \MyTitle \else \fi \ifdefined\MySubtitle -- \MySubtitle \else \fi},
	    	pdfauthor={\ifdefined\MyAuthor \MyAuthor \else \fi},
    		pdfsubject={\ifdefined\MyCourse \MyCourse \else \fi}
		}
			
		% custom headers and footers
		\pagestyle{fancy}
		\fancyhf{}
		\renewcommand{\headrulewidth}{0.4pt}
		\renewcommand{\footrulewidth}{0.4pt}
		\cfoot{\thepage\ / \pageref*{LastPage}} 
		\chead{\MyTitle \ifdefined\MySubtitle -- \MySubtitle \else \fi} 

		% first page style
		\fancypagestyle{firststyle}
		{	\fancyhf{}
			\renewcommand{\headrulewidth}{0pt}
			\renewcommand{\footrulewidth}{0.4pt}
			\cfoot{\thepage\ / \pageref*{LastPage}} 
		}
			
		% draw title page
		\phantomsection 
		\addcontentsline{toc}{section}{Title}	
		\begin{center}
           	% title
			% \Huge{\textbbf{\textcolor{ifBlue}{\MyTitle}}} \\
			% \Large{\textbbf{\textcolor{ifBlue}{\MySubtitle}}} \\
			% % authors
			% \Large{\MyAuthor} \\
	        % % affiliations
			% \ifdefined\MyAffiliations 
    		% 	\vspace{0.1cm}
			%     \small{\textmd{\textcolor{black}{\MyAffiliations}}} \\
		    % \else\fi
			% % group
			% \vspace{0.2cm}
			% \ifdefined\MyGroup 
			% 	\normalsize{\MyGroup} \\
			% \else\fi
			% % date
			% \ifdefined\MyDate
			% 	\ifdefempty{\MyDate}{\small{\mydate} \\}{\small{\MyDate} \\}
			% \else
			% 	{\small{\mydate}} \\
			% \fi
			% % major and specialization
            % \ifdefined\MyMajor
    		% 	\vspace{0.2cm}
			% 	\normalsize{\textbbf{\MyMajor}}
			% 	\ifdefined\MySpecialization
			% 		\normalsize{ -- }
			% 	\else
			% 		\\
			% 	\fi
			% \else\fi
			% \ifdefined\MySpecialization
            % 	\normalsize{\textbbf{\MySpecialization}} \\
            % \else\fi
			% % course
			% \ifdefined\MyCourse
    		% 	\vspace{0.2cm}
			% 	\normalsize{\textbbf{TU} \MyCourse} \\
			% \else\fi
			% % subcourse
			% \ifdefined\MySubcourse
			% 	\normalsize{\textbbf{CTU} \MySubcourse} \\
			% \else\fi
			% % advisor
			% \ifdefined\MyAdvisor
    		% 	\vspace{0.2cm}
			% 	{\small{\textbbf{\MyAdvisorTitle :} \\ \MyAdvisor}} \\
			% \else\fi
            % % abstract
            % \ifdefined\MySummary
            % 	\phantomsection
            %     \addcontentsline{toc}{section}{\abstractname}
            %     \parbox[c][][s]{0.75\textwidth}{\footnotesize \vspace{0.5cm} \noindent \textcolor{ifBlue}{\textbbf{\abstractname.}} \MySummary}
			% \else\fi
		\end{center}	
	
		\setcounter{page}{1} 		% set the 2nd page
		\thispagestyle{firststyle}	% force hdr/ftr
	}
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%- "REPORT" OPTION -%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\DeclareOption{report}{
	\renewcommand{\maketitle}{	
		\makeTheTitle
		\MyLof %	Insert the list of figures
		\MyLot %	Insert the list of tables
		%falta dedicatoria, etc
	}
}

\ProcessOptions
% \ExecuteOptions


% REFERENCES-

% [1] Remove hrds and ftrs from blank pages between chapters, by Stefan kottwitz at https://tex.stackexchange.com/questions/1681/how-to-remove-headers-and-footers-for-pages-between-chapters?noredirect=1&lq=1

% [2] Add subToCs, by Gonzalo Medina at https://tex.stackexchange.com/questions/122759/how-to-obtain-this-fancy-chapter-page-with-the-book-class

% [3] Connection between align lines, by Lucas "O Brabo" Ximmens at https://www.overleaf.com/latex/templates/a-soft-template-for-homework-solutions/gsbwqcqkyyzt
% [4] 