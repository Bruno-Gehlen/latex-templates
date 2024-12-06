%%%%%%%%%-IDENTIFICATION-%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
%   Identification

\ProvidesClass{AdvancedArticle}[2022/08/24]
%   Identifies & release date

%%%%%%%%%-PRELIMINARY DECLARATIONS-%%%%%%%%%

\LoadClass{article}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax


%%%%%%%%%-OPTIONS-%%%%%%%%%

\RequirePackage{xcolor}
\RequirePackage{titling}
\RequirePackage{fancyhdr}
\RequirePackage{calc}
\RequirePackage{graphicx}
\RequirePackage{geometry}
\RequirePackage[tabular, light]{sourcesanspro}
\RequirePackage{PlayfairDisplay}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{hyperref}
\RequirePackage[default,light,bold]{sourceserifpro}
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{mdframed}
\RequirePackage{caption}
\RequirePackage{setspace}
\RequirePackage[T1]{fontenc}
\RequirePackage{enumitem}
\RequirePackage[some, top]{background}



%%%%%%%%%-MORE DECLARATIONS-%%%%%%%%%

% Colors
\definecolor{mgggblue}{HTML}{0099cd}
\definecolor{mgggdarkblue}{HTML}{006b9c}
\newcommand{\headlinecolor}{\color{mgggblue}}
\definecolor{mgggdarkgray}{HTML}{666666}
\definecolor{mggggray}{HTML}{777777}
\definecolor{mggglightgray}{HTML}{f9f9f9}

% Links
\hypersetup{
    colorlinks=true,
    linkcolor=mgggdarkblue,
    urlcolor=mgggdarkblue,
    citecolor=mgggdarkblue
}

\fancypagestyle{decoratedsection}{%
\renewcommand{\headrulewidth}{0pt}
\chead{}
\lhead{}
\rhead{}
\lfoot{}
\cfoot{}
\rfoot{\headertext\thepage}
\setlength{\headheight}{0pt}
}

\mdfdefinestyle{decoratedsection}{%
    backgroundcolor=mggglightgray,
    topline=true,
    bottomline=true,
    rightline=false,
    leftline=false,
    innertopmargin=1em,
    innerbottommargin=1em,
    innerrightmargin=1.5in,
    innerleftmargin=1.5in,
    leftmargin=-1.5in,
    rightmargin=-1.5in,
    linecolor=mgggdarkblue,
    linewidth=0.4pt
}

\newcommand\decoratedsection[1]{%
    \newpage
    \thispagestyle{decoratedsection}
    \begin{mdframed}[style=decoratedsection]
    \section{#1}
    % \noindent {\color{mgggdarkblue} \rule{\textwidth}{1.2pt}}
    \end{mdframed}
    \vskip 1em
}