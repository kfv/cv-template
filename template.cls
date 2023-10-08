\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{template}[2023/07/29 kfv's cv class]
\LoadClass[a4paper, 11pt]{article}

%%%%%%%%%%%%%%%%%%%%%%%
%                     %
%  Required Packages  %
%                     %
%%%%%%%%%%%%%%%%%%%%%%%
%
%
\RequirePackage[margin=50pt]{geometry}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[utf8]{inputenc}
\RequirePackage[british]{babel}
\RequirePackage{lmodern}
\RequirePackage{fontspec}
\RequirePackage{fontawesome}
\RequirePackage{tabularx}
\RequirePackage{fancyhdr}
\RequirePackage{multirow}
\RequirePackage[none]{hyphenat}
\RequirePackage{lastpage}

%%%%%%%%%%%%%%%%%%%%%
%                   %
%  General Styling  %
%                   %
%%%%%%%%%%%%%%%%%%%%%
%
%
\pagestyle{fancy}
\fancyhf{}
\setlength{\headheight}{0pt}
\renewcommand{\headrulewidth}{0pt}
\renewcommand{\footrulewidth}{0pt}
\cfoot{\thepage/\pageref{LastPage}}
\renewcommand{\labelitemi}{\tiny\textbullet}

%%%%%%%%%%%%%%%%%%%%%%%
%                     %
%  Contact Variables  %
%                     %
%%%%%%%%%%%%%%%%%%%%%%%
%
%
\newcommand{\cvname}[1]{\gdef\@fullname{#1}}
\newcommand{\cvwww}[1]{\gdef\@website{#1}}
\newcommand{\cvemail}[1]{\gdef\@email{#1}}
\newcommand{\cvgithub}[1]{\gdef\@github{#1}}
\newcommand{\cvtwitter}[1]{\gdef\@twitter{#1}}
\newcommand{\cvlinkedin}[1]{\gdef\@linkedin{#1}}

%%%%%%%%%%%%%%%%%%%%
%                  %
%  Default Values  %
%                  %
%%%%%%%%%%%%%%%%%%%%
%
%
\cvname{"Full Name"}
\cvwww{"Personal Website"}
\cvemail{"Email Address"}
\cvgithub{"Github Handler"}
\cvtwitter{"Twitter Handler"}
\cvlinkedin{"LinkedIn Handler"}

%%%%%%%%%%%%
%          %
%  Header  %
%          %
%%%%%%%%%%%%
%
%
\newenvironment{cvheader}{
    \noindent
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill} } p{350pt} | l }
        \multirow{4}{*}{\noindent\textbf{\huge{\@fullname}}}
            & \href{\@website}{\faGlobe \ \@website}             \\
        {}  & \href{mailto:\@email}
                {\faEnvelope \ \@email}                          \\
        {}  & \href{https://github.com/\@github}
                {\faGithub \ github.com/\@github}                \\
        {}  & \href{https://twitter.com/\@twitter}
                {\faTwitter \ twitter.com/\@twitter}             \\
        {}  & \href{https://www.linkedin.com/in/\@linkedin}
                {\faLinkedinSquare \ linkedin.com/in/\@linkedin} \\
    \end{tabular*}
    \medskip
}{}

\newcommand{\header}{
    \begin{cvheader}
    \end{cvheader}
}

%%%%%%%%%%%%%%%%%%%%%%
%                    %
%  Overview Section  %
%                    %
%%%%%%%%%%%%%%%%%%%%%%
%
%
\newcommand{\overview}[1]{
    \noindent \textbf{OVERVIEW} \hrulefill \medskip \par
    #1
    \medskip
    \medskip
}

% Skills Section
\newenvironment{skills}[1]{
    \noindent \textbf{SKILLS} \hrulefill \medskip \par
    #1
    \begin{itemize}
    \itemsep 0pt
}{
    \end{itemize}
    \medskip
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                %
%  Professional History Section  %
%                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
\newenvironment{employmenthistory}{
    \noindent \textbf{EMPLOYMENT HISTORY} \hrulefill \medskip \par
}{
    \medskip
}
\newcommand{\company}[2]{\noindent \textbf{#1} \hfill \textit{#2} \\}
\newcommand{\position}[2]{\noindent \emph{#1} \hfill \textit{#2}}
\newenvironment{bulletpoints}{
    \begin{itemize}
    \itemsep 0pt
}{
    \end{itemize}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                          %
%  Volunteer Work Section  %
%                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
\newenvironment{volunteerwork}{
    \noindent \textbf{VOLUNTEER WORK} \hrulefill \medskip \par
    \begin{itemize}
    \itemsep 0pt
}{
    \end{itemize}
}

%%%%%%%%%%%%%%%%%%%%%%%%%
%                       %
%    Hobbies Section    %
%                       %
%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
\newenvironment{hobbies}{
    \noindent \textbf{HOBBIES} \hrulefill \medskip \par
    \itemsep 0pt
}{}
