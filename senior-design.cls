\ProvidesClass{senior-design}[2022-01-01 by Martin Zhong (zhongmartin@outlook.com) Template for ZJU-UIUC Senior Design Inividual Report]

\LoadClass[letterpaper,11pt]{report}

\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{amsmath}  % for math spacing
\RequirePackage{amssymb}
\RequirePackage{amsfonts}
\RequirePackage[margin=2.54cm]{geometry} % page layout; same with the default of MS word
\RequirePackage{enumitem}
\RequirePackage{verbatim} % allows for verbatim text ignoring any TeX commands inside "verbatim" environment
\RequirePackage{listings}
\RequirePackage[dvipsnames,svgnames,table,xcdraw]{xcolor}
\RequirePackage{hyperref}
\RequirePackage[ruled,hangingcomment,nofillcomment,noend]{algorithm2e}% pseudo-code support
\RequirePackage[en-US]{datetime2}
\RequirePackage[bottom]{footmisc}
\RequirePackage{float}
\RequirePackage{tcolorbox}
\RequirePackage{cite}
\RequirePackage{titlesec}
\RequirePackage{fontspec}
\RequirePackage{unicode-math}
\RequirePackage{anyfontsize}
% \setmainfont[
%     BoldItalicFont=cambriaz.ttf,
%     BoldFont      =cambriab.ttf,
%     ItalicFont    =cambriai.ttf]{cambria.ttc}
% \setsansfont[
%     BoldItalicFont=calibriz.ttf,
%     BoldFont      =calibrib.ttf,
%     ItalicFont    =calibrii.ttf]{calibri.ttf}
\setmainfont{Calibri}
\setsansfont{Calibri}
\setmathfont{Cambria Math}

\newfontfamily\Cambria{Cambria}

\newcommand\reporttitle[1]{\def\RPTTITLE{#1}}
\newcommand\reportdate[1]{\def\RPTDATE{#1}}
\newcommand\authorname[1]{\def\AUTHORNAME{#1}}
\newcommand\semester[1]{\def\SEMESTER{#1}}
\newcommand\sponsor[1]{\def\FACULTYNAME{#1}}
\newcommand\ta[1]{\def\TANAME{#1}}
\newcommand\projectnumber[1]{\def\PROJECTNUMBER{#1}}

\newcommand\maketitlepage{
    \begin{titlepage}
        \begin{center}
        \sf
        ~~\\ % to make the vspace effective
        \vspace{1.5cm}
        {\fontsize{16}{18.4}\selectfont Zhejiang University/University of Illinois Urbana-Champaign Institute}\\
        \vspace{1.88cm}
        {\fontsize{28}{26.45}\selectfont Senior Design Individual Report}\\
        \vspace{1.6cm}
        {\fontsize{28}{26.45}\selectfont\RPTTITLE}\\
        \vspace{0.8cm}
        {\fontsize{13}{19.5}\selectfont By}\\
        \vspace{1.3cm}
        {\fontsize{13}{19.5}\selectfont\AUTHORNAME}\\
        \vspace{3.4cm}
        {\fontsize{12}{18}\selectfont Individual Report for Senior Design, \SEMESTER\\\vspace{10pt}
        Sponsor: \FACULTYNAME\\\vspace{13pt}
        TA: \TANAME}\\
        \vspace{1.2cm}
        {\fontsize{12}{18}\selectfont\RPTDATE\\\vspace{10pt}
        Project No. \PROJECTNUMBER\\}
        \end{center}
        \end{titlepage}
}