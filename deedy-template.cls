% Intro Options
\ProvidesClass{deedy-template}[]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.25cm, vmargin=0.75cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor}
\definecolor{name}{HTML}{000000}
\definecolor{date}{HTML}{666666}
\definecolor{headings}{HTML}{4a4a4a}
\definecolor{subheadings}{HTML}{212121}

% Set main fonts
\usepackage{fontspec}
\setmainfont[
    Path = ./fonts/sf-pro/,
    UprightFont = *-Regular,
    BoldFont = *-Bold,
    ItalicFont = *-RegularItalic,
    Extension = .otf
]{SF-Pro-Display}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/sf-pro/]{SF-Pro-Display-Ultralight}

% Date command
\usepackage[absolute]{textpos}
\usepackage[UKenglish]{isodate}
\setlength{\TPHorizModule}{1mm}
\setlength{\TPVertModule}{1mm}
\newcommand{\lastupdated}{\begin{textblock}{60}(155,5)
\color{date}\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-Ultralight}\fontsize{8pt}{10pt}\selectfont
Last Updated on \today
\end{textblock}}

% Name command
\newcommand{\namesection}[3]{
\centering{
\color{name}
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-UltraLight}\selectfont #1
\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-Light}\selectfont #2
} \\[5pt]
\centering{
\color{headings}
\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{headings}\rule{\paperwidth}{0pt}}
\vspace{-15pt}
}

% Section seperators
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt}
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-Light}\fontsize{16pt}{24pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-Bold}\fontsize{12pt}{12pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{subheadings}\raggedright\scshape\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-Medium}\fontsize{11pt}{13pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{headings}\raggedright\fontspec[Path = fonts/sf-pro/]{SF-Pro-Display-Medium}\fontsize{10pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}
