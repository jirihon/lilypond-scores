\version "2.16.2"

\header {
  title = "Dobrý král Václav"
  subtitle = " "
  tagline = "2016"
}

\paper {
  %system-system-spacing #'minimum-distance = #22
  top-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  bottom-margin = 1.5\cm
  indent = 1\cm
  ragged-last = ##f
}

global= {
  \time 2/4
  \key g \major
  \tempo 4 = 108
}

Cello =  \new Voice \relative c {
  \set Staff.instrumentName = #"Tbn."
  \clef bass
  
  r2 |
  r2 |
  d8-> g16( fis g8) a-. |
  g-. g-. d4 |
  r c |
  g'-> c,-> |
  g2~ g~ g |
  g2\fermata \bar "||" \break
  g'8-. g-. g-. a-. |
  g-. g-. d4 |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  g'8-. g-. g-. a-. |
  g-. g-. d4 |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  <g d'>2~ <g d'> |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  d'8-. d-. e-. fis-. |
  g-. fis16( e) d8-. d-. |
  <d a'>2
  g,2
  <g d'>2\fermata \break
  \repeat volta 2 {
  <g d'>2 |
  <g d'>2 |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  <g d'>2 |
  <g d'>2 |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  <g d'>2 |
  <g d'>2 |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  <g d'>2 |
  <g d'>4 <d' a'> |
  <d a'>2 |
  g |
  <g, d'> \bar "||"
  c |
  g'4 c, |
  g2~ g~ g |
  g\fermata \break
  }
  g'8-. g-. g-. a-. |
  g-. g-. d4 |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  g'8-. g-. g-. a-. |
  g-. g-. d4 |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  d'2~ d |
  c8-. g'16( fis) g8-. d-. |
  g,4-> g-> |
  d'8-. d-. e-. fis-. |
  g-. fis16( e) d8-. d-. |
  d2
  g,2
  g2 \bar "||"
  c |
  g'4 c, |
  g2~ g~ g |
  g\fermata
  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \Cello >>
  >>
  \layout { }
  \midi { }
}