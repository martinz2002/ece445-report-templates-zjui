\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{senior-design}[2023-08-02 by Martin Zhong (zhongmartin@outlook.com) Template for ZJU-UIUC Senior Design Inividual Report]

\LoadClass[a4paper,12pt,oneside]{book}

\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage[format=hang,font={small},labelfont={bf},labelsep={quad}]{caption}
\RequirePackage{amsmath, amssymb, amsfonts}  % for math spacing
\RequirePackage[margin=1in]{geometry} % page layout 1' margin
\RequirePackage{enumitem}
\RequirePackage{verbatim} % allows for verbatim text ignoring any TeX commands inside "verbatim" environment
\RequirePackage{listings}
\RequirePackage[dvipsnames,svgnames,table,xcdraw]{xcolor}
\RequirePackage[ruled,hangingcomment,nofillcomment,noend]{algorithm2e}% pseudo-code support
\RequirePackage[bottom]{footmisc}
\RequirePackage{float}
\RequirePackage{tcolorbox}
\RequirePackage{anyfontsize}
\RequirePackage{csquotes}
\RequirePackage[style=ieee]{biblatex}
\renewbibmacro*{date}{%
  \iffieldundef{year}
  {\bibstring{nodate}}
  {\printdate}}
\renewcommand{\bibname}{References}
\renewcommand\bibname{References}
\RequirePackage[scheme=plain]{ctex}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{hyperref}
\RequirePackage{xurl}
\RequirePackage{setspace}
\RequirePackage[per-mode=symbol,inter-unit-product = \ensuremath{{}\cdot{}},mode=math]{siunitx}
\DeclareSIPrefix\micro{\text{\textmu}}{-3} % typing SI Units, not necessary for default LMC font
\onehalfspacing

\setenumerate[1]{
  itemsep=1em,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{
  itemsep=1em,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setdescription{
  itemsep=1em,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setlength{\topsep}{0ex} %列表到上下文的垂直距离

\titleformat{\chapter}
{\fontsize{16pt}{\baselineskip}\selectfont\bfseries}
{\thechapter}{1em}{}
\titlespacing{\chapter}{0pt}{0pt}{\baselineskip}

\titleformat{\section}
{\fontsize{14pt}{\baselineskip}\selectfont\bfseries}
{\thesection}{1em}{}

\titleformat{\subsection}
{\normalsize\bfseries}
{\thesubsection}{1em}{}

\titleformat{\subsubsection}
{\normalsize\bfseries}
{\thesubsubsection}{1em}{}

\pagestyle{fancy}\fancyhf{}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\fancypagestyle{plain}{
  \fancyhead[L]{\fontsize{9pt}{\baselineskip}\selectfont\MakeUppercase\RPTTYPE}
  \fancyhead[R]{\fontsize{9pt}{\baselineskip}\selectfont\MakeUppercase\leftmark}
  \fancyfoot[C]{--\thepage--}}
\fancyhead[L]{\fontsize{9pt}{\baselineskip}\selectfont\MakeUppercase\RPTTYPE}
\fancyhead[R]{\fontsize{9pt}{\baselineskip}\selectfont\MakeUppercase\leftmark}
\fancyfoot[C]{--\thepage--}

\lstset{
  basicstyle=\small\ttfamily,
  numbers=left,
  numberstyle=\scriptsize,
  tabsize=4,
  breaklines,
  columns=fixed,
  keepspaces,
  commentstyle=\itshape\color{ForestGreen},
  keywordstyle=\color{Blue}\bfseries,
}
\newcommand\reporttitle[1]{\def\RPTTITLE{#1}}
\newcommand\reportdate[1]{\def\RPTDATE{#1}}
\newcommand\authornames[1]{\def\AUTHORNAME{#1}}
\newcommand\semester[1]{\def\SEMESTER{#1}}
\newcommand\sponsor[1]{\def\FACULTYNAME{#1}}
\newcommand\ta[1]{\def\TANAME{#1}}
\newcommand\projectnumber[1]{\def\PROJECTNUMBER{#1}}
\newcommand\teamnumber[1]{\def\TEAMNUMBER{#1}}
\newcommand{\HRule}{\rule{\linewidth}{0.1mm}}
\newcommand\reporttype[1]{\def\GRPTTYPE{#1}}
\newcommand\teammember[3]{%For those don't have English name
  {#1~\textsc{#2}}\\%name
  \href{mailto:#3}{#3}%Email
}
\newcommand\nameid[3]{%For those don't have English name
  {#1~\textsc{#2}}\\%name
  {#3}%Student ID
}
\newcommand\name[2]{#1~\textsc{#2}}
\def\RPTTYPE{Type of the report}
\def\ABSTRACTCONTENT{You did not specify the content of abstract.}
\def\ACKNOWLEDGEMENTCONTENT{You did not specify the content of acknowledgement.}
\def\KEYWORDS{Keywords of the project}
\def\RPTTITLE{Put your title here}
\def\RPTDATE{Put the date of the report here}
\def\AUTHORNAME{Your teammembers, or the author of the individual reports}
\def\SEMESTER{The semester where you write the report for}
\def\FACULTYNAME{The teacher who sponsor/directs you}
\def\TANAME{The name of your TA}
\def\PROJECTNUMBER{Number of the project}
\def\TEAMNUMBER{Number of your team}
\newcommand\individualreportcover{
  \def\RPTTYPE{Senior Design Individual Report}
  \begin{titlepage}
    \newgeometry{left=1cm, right=1cm, top=1in, bottom=1in}
    \begin{center}
      ~~\\ % to make the vspace effective
      \vspace{1.5cm}
      {\fontsize{16}{24}\selectfont Zhejiang University / University of Illinois Urbana-Champaign Institute}\\
      \vspace{1.88cm}
      {\fontsize{28}{42}\selectfont Senior Design Individual Report}\\
      \vspace{1.6cm}
      \begin{minipage}{15.92cm}
        \centering
        \fontsize{26}{26}\selectfont
        \MakeUppercase{\bf\RPTTITLE}\\[-.5cm]
        \noindent\rule{\textwidth}{.5pt}
      \end{minipage}\\[2cm]
      {\fontsize{14}{21}\selectfont By}\\[1.5em]
      {\fontsize{16}{24}\selectfont\AUTHORNAME}

      \vfill
      {\fontsize{12}{18}\selectfont Individual Report for Senior Design, \SEMESTER\\\vspace{10pt}
        Sponsor: \FACULTYNAME\\\vspace{13pt}
        TA: \TANAME}\\
      \vfill
      {\fontsize{12}{18}\selectfont\RPTDATE\\\vspace{10pt}
        Project No. \PROJECTNUMBER\\[0.54cm]}
    \end{center}
    \vspace{1.5cm}
    ~
    \restoregeometry
  \end{titlepage}

}
\newcommand\finalreportcover{
  \def\RPTTYPE{Final Report}
  \begin{titlepage}
    \center % Center everything on the page
    \vfill
    \textsc{\Large ECE 445}\\[0.5cm] % heading course Number
    \textsc{\Large Senior Design Laboratory}\\[0.5cm] % heading course name
    \textsc{\Large Final Report}\\[0.5cm] % Minor heading
    {\Large\underline{Project \#\PROJECTNUMBER}}
    \vfill
    \HRule \\[0.5cm]
    \huge \textbf{\MakeUppercase{\RPTTITLE}} % Title
    \HRule \\
    \vfill
    \begin{center} \large
      \underline{\textbf{Team \#\TEAMNUMBER}} \\ \medskip
      \AUTHORNAME\\ \vspace{2em}
      \underline{\bf TA}: \TANAME\\
      \underline{\bf Sponsor}: \FACULTYNAME
    \end{center}
    \vfill
    {\large \RPTDATE} % Date

  \end{titlepage}
}
\newcommand\generalreportcover{
  \def\RPTTYPE{\GRPTTYPE}
  \begin{titlepage}
    \center % Center everything on the page
    \textsc{\Large ECE 445}\\[0.5cm] % heading course Number
    \textsc{\Large Senior Design Laboratory}\\[0.5cm] % heading course name
    \textsc{\Large \GRPTTYPE}\\[0.5cm] % Minor heading
    {\Large\underline{Project \#\PROJECTNUMBER}}
    \vfill
    \HRule \\[0.5cm]
    \huge \textbf{\MakeUppercase{\RPTTITLE}} % Title
    \HRule \\
    \vfill
    \begin{center} \large
      \underline{\textbf{Team \#\TEAMNUMBER}} \\ \medskip
      \AUTHORNAME\\ \vspace{2em}
      \underline{\bf TA}: \TANAME\\
      \underline{\bf Sponsor}: \FACULTYNAME
    \end{center}
    \vfill
    {\large \RPTDATE} % Date

  \end{titlepage}
}
