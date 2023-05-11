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
\RequirePackage{amsmath, amssymb, amsfonts, amsthm}  % for math spacing
\RequirePackage[margin=2.54cm]{geometry} % page layout; same with the default of MS word
\RequirePackage{enumitem}
\RequirePackage{verbatim} % allows for verbatim text ignoring any TeX commands inside "verbatim" environment
\RequirePackage{listings}
\RequirePackage[dvipsnames,svgnames,table,xcdraw]{xcolor}
\RequirePackage[ruled,hangingcomment,nofillcomment,noend]{algorithm2e}% pseudo-code support
\RequirePackage[en-US]{datetime2}
\RequirePackage[bottom]{footmisc}
\RequirePackage{float}
\RequirePackage{tcolorbox}
\RequirePackage{anyfontsize}
\RequirePackage{csquotes}
\RequirePackage[style=ieee]{biblatex}
\RequirePackage[title, titletoc]{appendix}
\RequirePackage[scheme=plain, fontset=fandol]{ctex}
\RequirePackage{titlesec}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}
\RequirePackage{hyperref}
\RequirePackage{xurl}

\newtheorem{defn}{Definition}[chapter]
\newtheorem{thm}{Theorem}[chapter]
\newtheorem{cor}{Corollary}[thm]
\newtheorem{prf}{Proof}[chapter]
\newtheorem{prop}{Proposition}[chapter]
\newtheorem{lem}[thm]{Lemma}

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
  \fancyhead[L]{\RPTTITLE}
  \fancyhead[R]{\leftmark}
  \fancyfoot[C]{--\thepage--}}
\fancyhead[L]{\RPTTITLE}
\fancyhead[R]{\leftmark}
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
\linespread{1.15}
\newcommand\reporttitle[1]{\def\RPTTITLE{#1}}
\newcommand\reportdate[1]{\def\RPTDATE{#1}}
\newcommand\authornames[1]{\def\AUTHORNAME{#1}}
\newcommand\semester[1]{\def\SEMESTER{#1}}
\newcommand\sponsor[1]{\def\FACULTYNAME{#1}}
\newcommand\ta[1]{\def\TANAME{#1}}
\newcommand\projectnumber[1]{\def\PROJECTNUMBER{#1}}
\newcommand\student[2]{{\bf#1}\hspace{1em}\href{mailto:#2}{#2}}
\newcommand\teamnumber[1]{\def\TEAMNUMBER{#1}}
\newcommand{\HRule}{\rule{\linewidth}{0.1mm}}
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
  \begin{titlepage}
    \begin{center}
      ~~\\ % to make the vspace effective
      \vspace{1.5cm}
      {\fontsize{16}{18.4}\selectfont Zhejiang University / University of Illinois Urbana-Champaign Institute}\\
      \vspace{1.88cm}
      {\fontsize{28}{26.45}\selectfont Senior Design Individual Report}\\
      \vspace{1.6cm}
      {\fontsize{28}{26.45}\selectfont\bf\RPTTITLE}\\
      \vspace{1cm}
      {\fontsize{13}{19.5}\selectfont By}\\
      \vspace{1cm}
      {\fontsize{13}{19.5}\selectfont\AUTHORNAME}\\
      \vspace{3.4cm}
      {\fontsize{12}{18}\selectfont \SEMESTER\\\vspace{10pt}
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
    \center % Center everything on the page
    {\Large Zhejiang University / University of Illinois at Urbana-Champaign Institute} \\
    \vfill
    \textsc{\Large ECE 445}\\[0.5cm] % heading course Number
    \textsc{\Large Senior Design Laboratory}\\[0.5cm] % heading course name
    \textsc{\Large Final Report}\\[0.5cm] % Minor heading
    {\Large\underline{Project \#\PROJECTNUMBER}}
    \vfill
    \HRule \\[0.5cm]
    \huge \textbf{\RPTTITLE} % Title
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
        \underline{TA}: \TANAME
      \end{center}
    \end{minipage} \\[1cm]
    \vfill
    {\large \RPTDATE} % Date

    \vfill % Fill the rest of the page with white-space

  \end{titlepage}
}
\newcommand\generalreportcover[1]{
  \def\RPTTYPE{#1}
  \begin{titlepage}
    \centering
    {\Large Zhejiang University / University of Illinois at Urbana-Champaign Institute} \\
    \vspace{2cm}
    {\Large ECE 445: Senior Design Laboratory} \\
    \vspace{1em}
    {\Large (\SEMESTER)} \\
    \vspace{2em}
    {\Large \RPTTYPE} \\
    \vfill
    {\huge \textbf{\RPTTITLE}} % Title
    \vfill
    \begin{minipage}{0.5\textwidth}
      \begin{center} \large
        \underline{\textbf{Team \#\TEAMNUMBER}} \\ \medskip
        \AUTHORNAME
      \end{center}
    \end{minipage} \\[1.5cm]
    \vfill
    \underline{TA:} \TANAME \\
    \RPTDATE
  \end{titlepage}
}

\newcommand\keywordsabstract[2]{\def\ABSTRACTCONTENT{#2}\def\KEYWORDS{#1}}
\newcommand\acknowledgement[1]{\def\ACKNOWLEDGEMENTCONTENT{#1}}
\newcommand\makeAbstractAcknowledgementToc{
  \chapter*{Acknowledgement}
  \pagenumbering{roman}
  \setcounter{page}{2}
  \ACKNOWLEDGEMENTCONTENT

  \chapter*{Abstract}
  \ABSTRACTCONTENT \par
  \vspace{1em}
  {\bf Keywords:}~\KEYWORDS
  \tableofcontents
  \clearpage
  \setcounter{page}{1}
  \pagenumbering{arabic}
}
\newcommand\makeToc{
  \pagenumbering{roman}
  \tableofcontents
  \clearpage
  \setcounter{page}{1}
  \pagenumbering{arabic}
}

\AtEndDocument{
  \printbibliography[heading=bibintoc, title={References}]
}
