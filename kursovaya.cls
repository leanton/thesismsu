\NeedsTeXFormat{LaTeX2e}[1998/12/01]
\ProvidesClass{kursovaya}[]
\LoadClass[a4paper,12pt, oneside,titlepage]{book}
\RequirePackage[cp1251]{inputenc}%for WiN
%\RequirePackage[T2A]{fontenc}
\RequirePackage[english,russian]{babel}
%\RequirePackage[colorlinks=true, bookmarks=true, pagebackref=true, unicode=true]{hyperref}
\RequirePackage{amssymb}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{ifpdf}
\RequirePackage[mag=920,a4paper,truedimen]{geometry} %% Размер шрифта=13 (mag=1083)
\RequirePackage{cite}
\linespread{1} %% Расстояние между строк 
\newcommand{\mk}{\Huge\bf\it}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Исправим букву ё, которая в кодовой таблице T2A не на том месте
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\catcode`\ё\active
\defё{\"{e}}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Определяем форматы иллюстраций
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ifpdf
  \RequirePackage[pdftex]{graphicx}
  \pdfcompresslevel=9
  \DeclareGraphicsExtensions{.png}
\else
  \RequirePackage[dvips]{graphicx}
  \DeclareGraphicsExtensions{.eps}
\fi

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Параметры страницы
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\pagestyle{plain}
 %  \textwidth=18cm %a4 = 21 cm
 %  \textheight=26.5cm %a4 = 29.7 cm
 %  \topmargin=-1cm 
 %  \oddsidemargin=0.7cm %1.46cm %(4cm нужных - 2.54cm изначальных) левое поле
\geometry{left=4cm,right=1.7cm, top=2.5cm,bottom=2.5cm} 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Описание колонтитулов
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\@oddhead}  
{\raisebox{0pt}[\headheight][0pt] {\vbox{\hbox to\textwidth
{\strut {\sl\rightmark} \hfil }\hrule}}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Оформление содержания
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\setcounter{tocdepth}{5}% чтоб всё с запасом
%%\renewcommand\tableofcontents{%
%%    \if@twocolumn
%%      \@restonecoltrue\onecolumn
%%    \else
%%      \@restonecolfalse
%%    \fi
%%    \section*{\contentsname
%%        \@mkboth{%
%%           \contentsname}{\contentsname}}%
%%    \@starttoc{toc}%
%%    \if@restonecol\twocolumn\fi
%%    }
%\renewcommand\@pnumwidth{20em}   %% Отступы от правого поля конца точек в содержании
%\renewcommand\@tocrmarg{10em}%2.2em}    %% Отступы от правого поля конца названий мелких разделов в содержании
%\newcommand\@ppnumwidth{2em}      %% Отступы от правого поля конца названия глав в содержании

%%\renewcommand*\l@chapter[2]{%
%%  \ifnum \c@tocdepth >\m@ne
%%    \addpenalty{-\@highpenalty}%
%%    \vskip 1.0em 
%%    \@plus\p@
%%    \setlength\@tempdima{1.5em}%
%%    \begingroup
%%      \parindent \z@ \rightskip \@ppnumwidth
%%      \parfillskip -\@ppnumwidth
%%      \leavevmode \bfseries
%%      \advance\leftskip\@tempdima
%%      \hskip -\leftskip
%%        #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
%%      \penalty\@highpenalty
%%      \vskip 0.5em 
%%    \endgroup
%%  \fi}
%\renewcommand\@dotsep{2.5}
%\renewcommand*\l@section{\@dottedtocline{1}{1.5em}{1.5em}}
%\renewcommand*\l@subsection{\@dottedtocline{2}{4.5em}{2em}}
%\renewcommand*\l@subsubsection{\@dottedtocline{3}{7.0em}{4.1em}}
%\renewcommand*\l@paragraph{\@dottedtocline{4}{10em}{5em}}
%\renewcommand*\l@subparagraph{\@dottedtocline{5}{12em}{6em}}

\contentsmargin[0.3em]{2em}

\titlecontents{chapter}[1.8em]{\addvspace{1pc}}%
{\hspace{-1.8em}\makebox[1.8em][l]{\bfseries \thecontentslabel .}\hspace{0em}\bf}%
{
}{\titlerule*{ }\contentspage[{\makebox[1em][r]{\bf\thecontentspage}%
}]}[\vspace{0.3pc}]

%\titlecontents{chapter}[0pt]{\addvspace{1pc}}{\bfseries \thecontentslabel .\hspace{.5em}}%
%{\hspace*{-2pc}}{\hspace{0.5em}\titlerule*[.5em]{}\bfseries\contentspage[{\makebox[1em][r]{\thecontentspage}%
%}]}[\vspace{0.3pc}]
%\titlecontents{chapter}[0em]{\addvspace{1pc}}{%
%\makebox[0em][r]{\hspace{-1.6em}\bfseries\thecontentslabel .\hspace{.5em}}}%
%{\hspace*{-2pc}}{\bfseries\hspace{0.5em}\titlerule*[.5em]{ }\contentspage[{\makebox[1em][r]{\bfseries\thecontentspage}%
%}]}[\vspace{0.3pc}]


%\titlecontents{chapter}[0pt]{\addvspace{0pc}\thechapter}%
%{\bfseries
%\makebox[3cm][r]{}%
%\vspace{.3em}\newline\large}{
%\large}{\titlerule*{ }\contentspage[{\makebox[1em][r]{\bf\thecontentspage}%
%}]}[\vspace{0.3pc}]

%\dottedcontents{section}[1.8em]{}{2.3em}{1pc}
\titlecontents{section}[3.3em\hspace{-1.5em}]{}{\thecontentslabel .\hspace{.5em}}%
{\hspace*{-2pc}}{\hspace{0.5em}\titlerule*[.5em]{.}\contentspage[{\makebox[1em][r]{\thecontentspage}%
}]}[]

\titlecontents{subsection}[6em\hspace{-2em}]{\thecontentslabel .\hspace{.5em}}%
{}{}{\titlerule*[.5em]{.}\contentspage[{\makebox[1em][r]{\thecontentspage}%
}]}[]

\titlecontents{subsubsection}[9em\hspace{-3em}]{\thecontentslabel .\hspace{.5em}}%
{}{}{\protect\nolinebreak\titlerule*[.5em]{.}\protect\nolinebreak\contentspage[{\makebox[1em][r]{\thecontentspage}%
}]}[]


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Оформляем заголовок главы
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand \thechapter {\@Roman\c@chapter} %% Нумерация глав римскими цифрами
\newcommand{\nonumchapter}{\@nonumchap}
\renewcommand{\appendix}{\@tataappendix}
%\def\@nonumchap#1{\setcounter{section}{0}% 
%                        \newpage%
%                       \hspace{-3.5ex \@plus -1ex \@minus -.2ex}%         
%                       \centerline{\large\bf #1}%
%                     \addtocontents{toc}{\par\vspace{1pc}\hbox to \textwidth {\noindent \bf {\large#1} \hfill \hspace{1em}\thepage}}%
%                        \markboth{#1}{#1}\vspace{1ex}\par\nobreak%
%                        \normalsize\normalfont\noindent\hspace{-0.3em}}
\def\@tataappendix#1#2{\setcounter{section}{0}% 
                        \newpage%
                       \hspace{-3.5ex \@plus -1ex \@minus -.2ex}%         
                       \large\bf #1%
                       \section*{#2}%                       
                     \addtocontents{toc}{\par\vspace{1pc}\noindent{\bf #1}\par}
                       \addcontentsline{toc}{section}{\hspace{3.3em}#2}
                        \markboth{#1}{#1}\par\nobreak%
                        \normalsize\normalfont}      
                        
\def\@nonumchap#1#2{\setcounter{section}{0}% 
                        \newpage
                       \hspace{-3.5ex \@plus -1ex \@minus -.2ex}%         
                       \newline\large\bf #1 \vspace{1em}
                       %\section*{#2}   
                       \contentsmargin[0.3em]{2em}                    
                        \addtocontents{toc}{\vspace{1pc}\hbox to \textwidth{{\noindent\bf #1}\hfill {\bf\thepage}}}
                      %  \addcontentsline{toc}{section}{#2}
                        \markboth{#1}{#1}\par\nobreak
                        \normalsize\normalfont}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Заголовки мелких секций
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%\renewcommand{\section}{\setcounter{subsection}{0}%
%%                        \@startsection{section}{1}{}%
%%                        {x}%         
%%                        {}%
%%                        {\normalfont\bf}}
%%\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
%%                        {-3.25ex\@plus -1ex \@minus -.2ex}%
%%                        {1.5ex \@plus .2ex}%
%%                        {\normalfont\it}}

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \addtocounter{chapter}{1}% эта строка переделана, чтоб номера ур-ий не обнулялись
                         \setcounter{section}{0}
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                                   {\protect\numberline{\thechapter}#2}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}                    

\setcounter{secnumdepth}{3}
\renewcommand\thesection{\arabic{section}}
\renewcommand{\thesubsection}{\arabic{section}.\arabic{subsection}}
%\newcounter{tataequation}
%\newcounter{tatafigure}[part]
%\setcounter{tatafigure}{1}
%\renewenvironment{figure}
%               {\addtocounter{tatafigure}{1}\@float{figure}}
%               {\end@float}
%\renewcommand\thefigure{\thetatafigure}
%\newenvironment{tataequation}{\stepcounter{tataequation}\begin{equation}%
%}{\end{equation}}
%\newcounter{tatatable}
%\newenvironment{tatatable}{\stepcounter{tatatable}\begin{table}%
%}{\end{table}}
%\renewcommand{\thetable}{\thetatatable}
%\renewcommand{\theequation}{\thetataequation}

\renewcommand \theequation{\@arabic\c@equation}                                      
\renewcommand \thefigure{\@arabic\c@figure}    
\newcounter{tatafigure}
\renewenvironment{figure}
               {\setcounter{figure}{\value{tatafigure}}\@float{figure}}
               {\addtocounter{tatafigure}{1}\end@float}      
\renewcommand \thetable{\@arabic\c@table}     
\newcounter{tatatable}
\renewenvironment{table}
               {\setcounter{table}{\value{tatatable}}\@float{table}}
               {\addtocounter{tatatable}{1}\end@float}     





\renewcommand{\figurename}{Рис.}
\def\tatabibname{Список литературы}
\titleformat{\chapter}[display]{\thispagestyle{plain}\large\bf}{}{1em}{\raggedright}
\titlespacing*{\chapter}{0pt}{-5ex}{2.3ex plus .2ex}
\titleformat{\section}{\normalfont\bf}{\thesection.\hspace{-0.12cm}}{1em}{}
\titleformat{\subsection}{\normalfont\it}{\thesubsection.\hspace{-0.3cm}}{1em}{}
\titlespacing*{\section}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
\titlelabel{\thetitle}
\titleformat{\subsubsection}{\normalfont\it}{\thesubsubsection\hspace{-0.5em}}{1em}{}
\titlelabel{\thetitle}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% Оформление списка литературы
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%\renewenvironment{thebibliography}[1]
%%     {\nonumchapter{\tatabibname}%
%%      \markboth{}{}%
%%      \list{\@biblabel{\@arabic\c@enumiv}}%
%%           {\settowidth\labelwidth{\@biblabel{#1}}%
%%            \leftmargin\labelwidth
%%            \advance\leftmargin\labelsep
%%            \@openbib@code
%%            \usecounter{enumiv}%
%%            \let\p@enumiv\@empty
%%            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%%      \sloppy
%%      \clubpenalty4000
%%      \@clubpenalty \clubpenalty
%%      \widowpenalty4000%
%%      \sfcode`\.\@m}
%%     {\def\@noitemerr
%%       {\@latex@warning{Empty `thebibliography' environment}}%
%%      \endlist}
\renewcommand{\labelenumii}{\theenumi .\theenumii}
\renewcommand{\theenumii}{\arabic{enumii}}

\renewenvironment{thebibliography}[1]
     {\nonumchapter{\tatabibname}{}
     % \@mkboth{}{}%
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
