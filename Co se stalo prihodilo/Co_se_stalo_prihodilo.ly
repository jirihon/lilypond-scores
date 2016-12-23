\version "2.16.2"

\header {
  title = "Co se stalo, přihodilo"
  subtitle = " "
  tagline = "2016"
}

\paper {
  %system-system-spacing #'minimum-distance = #22
  top-margin = 1.5\cm
  left-margin = 1.2\cm
  right-margin = 1.2\cm
  bottom-margin = 1.5\cm
}

global= {
  \time 2/4
  \key a \major
}

Cello =  \new Voice \relative c' {
  \set Staff.instrumentName = #"Vlc."
  \clef bass
  
  r2 |
  \repeat volta 2 {
  r2 |
  a8->\f e16-. e-. d4 |
  cis8 d e e, \bar "||"
  a-. a'-.\p gis4 |
  fis gis |
  a8 e a, e' | \break
  a4 d, |
  e eis8 cis |
  fis4 b, |
  e d |
  cis8 a b cis |
  d4\< d, |
  b'8\mp b cis dis |
  e4\< e, |
  a8-.\mf a'-. gis4 | \break
  fis8-. cis-. e4 |
  d\< e |
  a8->\f gis16-. fis-. e-. d-. cis-. b-. |
  a4\p b8 cis |
  d4\< d, |
  b'8\mp b cis dis |
  e4\< e, |
  a'\mf gis |
  fis e |
  d e |
  a, r
  }
  r2 |
  a'8->\f e16-. e-. d4 |
  cis8 d e e, |
  a4\fermata r4
  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \Cello >>
  >>
  \layout { }
  \midi { }
}