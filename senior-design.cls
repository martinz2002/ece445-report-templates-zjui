\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{senior-design}[2023-05-19 by Martin Zhong (zhongmartin@outlook.com) Template for ZJU-UIUC Senior Design Inividual Report]

\LoadClass[a4paper,12pt,twoside,openany]{book}

\RequirePackage{booktabs}
\RequirePackage{tabularx}
\RequirePackage{multirow}
\RequirePackage{indentfirst}
\RequirePackage{fancyhdr}
\RequirePackage{graphicx}
\RequirePackage{caption}
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
\RequirePackage[header, title, titletoc]{appendix}
\RequirePackage[scheme=plain, fontset=fandol]{ctex} % In case you need to input Chinese characters
\RequirePackage[T1]{fontenc}
\RequirePackage{mathpazo}
\RequirePackage{bm}
\RequirePackage{titlesec}
\RequirePackage{hyperref}
\RequirePackage{xurl}
\RequirePackage{setspace}
\onehalfspacing

\setenumerate[1]{
  itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setitemize[1]{
  itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setdescription{
  itemsep=0pt,partopsep=0pt,parsep=\parskip,topsep=5pt}
\setlength{\topsep}{0ex} %列表到上下文的垂直距离

\titleformat{\chapter}
{\normalfont\LARGE\sc\bfseries}
{\thechapter}{1.5em}{}
\titlespacing{\chapter}{0pt}{0pt}{2em}

\titleformat{\section}
{\normalfont\Large\bfseries}
{\thesection}{1em}{}

\titleformat{\subsection}
{\normalfont\large\bfseries}
{\thesubsection}{1em}{}

\titleformat{\subsubsection}
{\normalfont\bfseries}
{\thesubsubsection}{1em}{}

\pagestyle{fancy}\fancyhf{}
\renewcommand{\headrulewidth}{0.5pt}
\renewcommand{\chaptermark}[1]{\markboth{#1}{}}
\fancypagestyle{plain}{
  \fancyhead[L]{\small\MakeUppercase{\RPTTYPE}}
  \fancyhead[R]{\small\MakeUppercase{\leftmark}}
  \fancyfoot[C]{\thepage}}
\fancyhead[L]{\small\MakeUppercase{\RPTTYPE}}
\fancyhead[R]{\small\MakeUppercase{\leftmark}}
\fancyfoot[C]{\thepage}

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
\linespread{1.15}
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
\newcommand\teammember[3]{
  \textbf{#1}\quad%Chinese name
  \textbf{#2}\\%English name
  \href{mailto:#3}{#3}%Email
}
\newcommand\teammemberenglish[2]{%For those don't have English name
  \textbf{#1}\\%name
  \href{mailto:#2}{#2}%Email
}
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
  \def\RPTTYPE{SENIOR DESIGN INDIVIDUAL REPORT}
  \begin{titlepage}
    \newgeometry{left=1cm, right=1cm, top=1in, bottom=1in}
    \begin{center}
      ~~\\ % to make the vspace effective
      \vspace{1.5cm}
      {\fontsize{16}{24}\selectfont Zhejiang University / University of Illinois at Urbana-Champaign Institute}\\
      \vspace{1.88cm}
      {\fontsize{28}{42}\selectfont Senior Design Individual Report}\\
      \vspace{1.6cm}
      \begin{minipage}{15.92cm}
        \centering
        \fontsize{28}{28}\selectfont
        \textbf{\MakeUppercase{\RPTTITLE}}
      \end{minipage}\\
      \vspace{1cm}
      {\fontsize{13}{19.5}\selectfont By}\\
      \vspace{1cm}
      {\fontsize{13}{19.5}\selectfont\AUTHORNAME}

      \vfill
      {\fontsize{12}{18}\selectfont \SEMESTER\\\vspace{10pt}
        Sponsor: \FACULTYNAME\\\vspace{13pt}
        TA: \TANAME}\\
      \vspace{1.2cm}
      {\fontsize{12}{18}\selectfont\RPTDATE\\\vspace{10pt}
        Project No. \PROJECTNUMBER\\[0.54cm]}
    \end{center}
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
    \HRule \\[2cm]
    \vfill
    \begin{minipage}{0.5\textwidth}
      \begin{center} \large
        \underline{\textbf{Team \#\TEAMNUMBER}} \\ \medskip
        \AUTHORNAME
      \end{center}
    \end{minipage} \\[1.5cm]

    \begin{minipage}{0.5\textwidth}
      \begin{center}
        \large
        \underline{TA}: \TANAME\\
        \underline{Sponsor}: \FACULTYNAME
      \end{center}
    \end{minipage} \\[1cm]
    \vfill
    {\large \RPTDATE} % Date

    \vfill % Fill the rest of the page with white-space

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
    \HRule \\[2cm]
    \vfill
    \begin{minipage}{0.5\textwidth}
      \begin{center} \large
        \underline{\textbf{Team \#\TEAMNUMBER}} \\ \medskip
        \AUTHORNAME
      \end{center}
    \end{minipage} \\[1.5cm]

    \begin{minipage}{0.5\textwidth}
      \begin{center}
        \large
        \underline{TA}: \TANAME\\
        \underline{Sponsor}: \FACULTYNAME
      \end{center}
    \end{minipage} \\[1cm]
    \vfill
    {\large \RPTDATE} % Date

    \vfill % Fill the rest of the page with white-space

  \end{titlepage}
}
