\version "2.16.2"

#(set-global-staff-size 19)

\header {
  title = "Všichni věrní křesťané"
  composer = "Jan Trajan Turnovský (1575)"
  tagline = ""
}

\paper {
  %system-system-spacing #'minimum-distance = #22
  top-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  bottom-margin = 1.5\cm
  %indent = #0
}

global= {
  \time 4/4
  \key f \major
  \clef bass
}

Tenor =  \new Voice = "tenor" 	 \relative c {
  \set Staff.instrumentName = #"Trombone"
  
  \repeat volta 2 {
  f4 f c c |
  f g a2 |
  d c |
  bes4 a g2 |
  f1~ f~ f |
  } \break
  c'2 d |
  c4 bes a a |
  g2 a |
  g4 f2 e4 |
  d2 c |
  f4 f c c |
  f g a2 |
  d c |
  bes4 a g2 |
  f1~ f~ f |
}

Bass =  \new Voice = "bass" 	 \relative c {
  \set Staff.instrumentName = #"Trombone"
  
  \repeat volta 2 {
  a4 a c g |
  a c2 f,4~ |
  f2 r4 f4 |
  f8( g a bes c4) g |
  a d2( c4~ c bes2 a8 g) |
  a1
  } \break
  a4( c) bes f~ |
  f f8( g a bes c4~ |
  c8) bes g4 f2 |
  r4 f d g~( |
  g8 f) d4 e g |
  a a g g |
  a( g) f( a) |
  f2 r4 f~( |
  f8 g a bes c4) g |
  a d2( c4~ |
  c bes2 a8 g) |
  a1
}

\score {
  \new StaffGroup <<
    \new Staff << \global \Tenor >>
    \new Staff << \global \Bass >>
  >>
  \layout { }
  \midi { }
}