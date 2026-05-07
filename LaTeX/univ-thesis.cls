% http://ctan.mirrors.hoobly.com/macros/latex/doc/clsguide.pdf
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{univ-thesis}[2026/04/10 Universal Master's Thesis class]

\LoadClass[12pt, a4paper, openright]{report}

% Useful packages
\usepackage[utf8]{inputenc} % Corrigé : utf8 au lieu de utf8x
\usepackage[english, french]{babel} % Ajout du français par défaut
\RequirePackage{microtype}   % Improves typography
\RequirePackage[T1]{fontenc}
\RequirePackage{lmodern}
\RequirePackage[pdftex]{graphicx}
\RequirePackage{color}
\RequirePackage{geometry}
\RequirePackage{tabto}     % Tabulation
\RequirePackage{anyfontsize} % size of fonts

% Commands for title, authors, dates, specialities,...
\RequirePackage{etoolbox}
\newcommand{\subtitle}[1]{\def\@subtitle{#1}}
\newcommand{\secondauthor}[1]{\def\@secondauthor{#1}}
\newcommand{\thirdauthor}[1]{\def\@thirdauthor{#1}}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\newcommand{\secondsupervisor}[1]{\def\@secondsupervisor{#1}}
\newcommand{\thirdsupervisor}[1]{\def\@thirdsupervisor{#1}}
\newcommand{\degreetitle}[1]{\def\@degreetitle{#1}}
\newcommand{\options}[1]{\def\@myoptions{#1}}
% \newcommand{\readerone}[1]{\def\@readerone{#1}}
% \newcommand{\readertwo}[1]{\def\@readertwo{#1}}
% \newcommand{\readerthree}[1]{\def\@readerthree{#1}}
% \newcommand{\readerfour}[1]{\def\@readerfour{#1}}
% \newcommand{\readerfive}[1]{\def\@readerfive{#1}}
\newcommand{\years}[1]{\def\@years{#1}}
\newcommand{\myfocus}[1]{\def\@myfocus{#1}}
\newcommand{\schedule}[1]{\def\@schedule{#1}}

% Lengths
\newlength{\tabAuthor}
\newlength{\tabSupervisor}
% \newlength{\tabReader}

% Title creation
\renewcommand{\maketitle}{
  \begin{titlepage}
    \thispagestyle{empty}
    \newgeometry{top=-0.01cm,bottom=0cm,left=3cm,right=2.5cm}
    
    % background (Pointant vers le futur dossier 'images')
    \noindent \hspace{-3cm} 
    \includegraphics[width=\paperwidth, height=\paperheight]{LaTeX/images/frontbanner.pdf}\\
    \vspace*{-\textheight}
    
    % Font (Passé en noir car les bannières sont claires)
    \color{white} \fontfamily{phv} \selectfont
    
    % Define lengths
    \setlength{\tabAuthor}{
    \ifdef{\@secondauthor}{1.7cm}{1.6cm}
  }
    \setlength{\tabSupervisor}{
    \ifdef{\@secondsupervisor}{2.55cm}{2.45cm}
  }
 %    \setlength{\tabReader}{
  %   \ifdef{\@readertwo}{1.9cm}{1.8cm}
  % }    
  
  \vspace*{9cm}
    
    % Title and subtitle
    \noindent
    \begin{minipage}[t][10cm][c]{1\textwidth}
    \raggedright
    %\vspace*{2cm}
    {
      \fontsize{26}{36}\selectfont \textbf{\@title}
      
      \vspace*{12pt}
      
      \ifdef{\@subtitle}{\fontsize{20}{30} \selectfont \@subtitle}{$ $} \\
    } 
    \end{minipage}
    
    
    % Metadata
    \vfill
    \noindent \hspace{1.7cm}
    \begin{minipage}[l]{.85\textwidth}
    % authors
      \ifdef{\@secondauthor}%
        {\iflanguage{french}{Auteurs :}{Authors:}}%
        {\iflanguage{french}{Auteur :}{Author:}}%
        {\bfseries
        \tabto{\tabAuthor}\@author
        \ifdef{\@secondauthor}{, \@secondauthor}{}
        \ifdef{\@thirdauthor}{, \@thirdauthor}{}}
      \\
      % supervisors
      \ifdef{\@secondsupervisor}%
        {\iflanguage{french}{Promoteurs :}{Supervisors:}}%
        {\iflanguage{french}{Promoteur :}{Supervisor:}}%
        {\bfseries
    \tabto{\tabSupervisor}\@supervisor
    \ifdef{\@secondsupervisor}{, \@secondsupervisor}{}\ifdef{\@thirdsupervisor}{, \@thirdsupervisor}{}}
    \\
    % academic year
    \iflanguage{french}{Année académique}{Academic year} \@years
    \\
    % degree title
      \@degreetitle  
    \\
    % My focus (appelé correctement avec \@myfocus)
      \ifdef{\@myfocus}{\@myfocus}{}
    \\
    % Schedule
      \ifdef{\@schedule}{\@schedule}{}
    \end{minipage}
    \vspace*{1.5cm}
  \end{titlepage}
}

% Front cover page
\newcommand{\frontpage}
{
  \begin{titlepage}
  \end{titlepage}
}

% Back cover page
\newcommand{\backcoverpage}
{
  \newpage
  \thispagestyle{empty}
  \newgeometry{top=-0.1cm,bottom=0cm,left=0cm,right=0cm}
  % background (Pointant vers le futur dossier 'images')
  \includegraphics[width=\paperwidth, height=\paperheight]{LaTeX/images/backbanner.pdf}
}

\endinput