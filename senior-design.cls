\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{senior-design}[2023-04-17 by Martin Zhong (zhongmartin@outlook.com) Template for ZJU-UIUC Senior Design Inividual Report]

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
\RequirePackage{anyfontsize}
\RequirePackage{csquotes}
\RequirePackage[style=ieee]{biblatex}
\RequirePackage[title, titletoc]{appendix}
\RequirePackage{newtx}
\RequirePackage{titlesec}
\titleformat{\chapter}
  {\normalfont\LARGE\sc\bfseries}
  {\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{0pt}{2pt}

\titleformat{\section}
  {\normalfont\Large\bfseries}
  {\thesection}{1em}{}

 \titleformat{\subsection}
  {\normalfont\large\bfseries}
  {\thesubsection}{1em}{}

\titleformat{\subsubsection}
  {\normalfont\bfseries}
  {\thesubsubsection}{1em}{}

\newcommand\reporttitle[1]{\def\RPTTITLE{#1}}
\newcommand\reportdate[1]{\def\RPTDATE{#1}}
\newcommand\authorname[1]{\def\AUTHORNAME{#1}}
\newcommand\semester[1]{\def\SEMESTER{#1}}
\newcommand\sponsor[1]{\def\FACULTYNAME{#1}}
\newcommand\ta[1]{\def\TANAME{#1}}
\newcommand\projectnumber[1]{\def\PROJECTNUMBER{#1}}
\newcommand\members[1]{\def\MEMBERS{#1}}
\newcommand\student[2]{#1\hspace{1em}\href{mailto:#2}{#2}}
\newcommand\teamnumber[1]{\def\TEAMNUMBER{#1}}
\newcommand\individualreportcover{
    \begin{titlepage}
        \begin{center}
        ~~\\ % to make the vspace effective
        \vspace{1.5cm}
        {\fontsize{16}{18.4}\selectfont Zhejiang University / University of Illinois Urbana-Champaign Institute}\\
        \vspace{1.88cm}
        {\fontsize{28}{26.45}\selectfont Senior Design Individual Report}\\
        \vspace{1.6cm}
        {\fontsize{28}{26.45}\selectfont\bf\RPTTITLE}\\
        \vspace{0.8cm}
        {\fontsize{13}{19.5}\selectfont By}\\
        \vspace{1.3cm}
        {\fontsize{13}{19.5}\selectfont\bf\AUTHORNAME}\\
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
\newcommand\finalreportcover{
  \begin{titlepage}
    \newcommand{\HRule}{\rule{\linewidth}{0.1mm}} 
    \center % Center everything on the page
     
    %---------------------------------------------------------------------------------
    %	HEADING SECTION
    %---------------------------------------------------------------------------------
    \textsc{\Large ECE 445}\\[0.5cm] % heading course Number
    \textsc{\large Senior Design Laboratory}\\[0.5cm] % heading course name
    \textsc{\Large Final Report}\\[0.5cm] % Minor heading
    %---------------------------------------------------------------------------------
    %	TITLE SECTION
    %---------------------------------------------------------------------------------
    
    \HRule \\[0.5cm]
    \huge \textbf{MetaProject: \RPTTITLE} % Title
    \HRule \\[2cm]
     
    %---------------------------------------------------------------------------------
    %	AUTHOR SECTION
    %---------------------------------------------------------------------------------
    \begin{minipage}{0.5\textwidth}
        \begin{center} \large
            \underline{\textbf{Team \#\TEAMNUMBER}} \\ \medskip
            \MEMBERS
        \end{center}
    \end{minipage} \\[1.5cm]
    
    \begin{minipage}{0.5\textwidth}
        \begin{center}
            \large
            \underline{TA}: \TANAME
        \end{center}
    \end{minipage} \\[1cm]
    
    {\large \RPTDATE} % Date
    
    \vfill % Fill the rest of the page with white-space
    
    \end{titlepage}
}
\AtEndDocument{
  \renewcommand{\bibname}{References}
  \printbibliography\addcontentsline{toc}{chapter}{References}
}