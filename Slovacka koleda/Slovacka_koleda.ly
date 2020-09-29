\version "2.16.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
    \override #'(font-size . 6) "Slovácká koleda"
  subtitle = ""
  composer = "Moravská lidová"
  arranger = "arr.: o. Josef Olejník"
  tagline = "2018 ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  %system-system-spacing #'minimum-distance = #15
  
  top-margin = 1.5\cm
  left-margin = 2\cm
  right-margin = 1.7\cm
  bottom-margin = 1.5\cm
  indent = 0\cm
}

global = {
  \time 3/4
  \key as \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1)
}

soprano = \relative c' {
  \global
  as'4 es2
  as4 bes2
  c4 c( bes)
  as2 b4\rest
  as4 bes2
  c8( d) es2
  des4 bes2
  c2 b4\rest
  c4 c2
  bes4 f2
  g4 es2
  des2 b'4\rest
  es,4 as2
  bes4 es2
  des4 c2
  as2.
  \bar "|."
}

alto = \relative c' {
  \global
  es4 es2
  f4 f2
  g4 f( g)
  es2 \skip 4
  es4 es2
  as4 c2
  bes4 g2
  as2 \skip 4
  as4 as2
  f4 des2
  es4 es2
  des2 \skip 4
  es4 f2
  f4 bes2
  as4 g2
  es2.
}

tenor = \relative c {
  \global
  c'4 bes2
  c4 bes2
  es4 es( des)
  c2 d,4\rest
  c'4 bes2
  f'4 g2
  f4 es2
  es2 d,4 \rest
  es'4 es2
  des4 bes2
  bes4 bes2
  as2 d,4\rest
  bes'4 c2
  f4 g2
  f4 es2
  c2.
}

bass = \relative c {
  \global
  as'4 g2
  f4 des2
  es4 es4~( <es es,>)
  as,2 \skip 4
  as'4 g2
  f4 c2
  des4 es2
  as2 \skip 4
  as,4 as2
  bes4 bes2
  es4 g2
  f2 \skip 4
  g4 f2
  des4 bes2
  <es es,>4 <es es,>2
  <es as,>2.
}

verseOne = \lyricmode {
  \set stanza = "1."
  Kri -- stus Pán se na -- ro -- dil,
  Kri -- stus Pán se na -- ro -- dil,
  po ko -- le -- dič -- ce cho -- dil,
  po ko -- le -- dič -- ce cho -- dil.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Cho -- dil po ní ce -- lý den,
  cho -- dil po ní ce -- lý den,
  cho -- dil po ní ce -- lú noc,
  cho -- dil po ní ce -- lú noc.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Na dve -- ře on ne -- tlu -- če,
  na dve -- ře on ne -- tlu -- če,
  on vám kle -- pe na srd -- ce,
  on vám kle -- pe na srd -- ce.
}

verseFour = \lyricmode {
  \set stanza = "4."
  Dnes "k vám" při -- jde Kri -- stus Pán,
  dnes "k vám" při -- jde Kri -- stus Pán,
  o -- te -- vřte mu do -- ko -- řán,
  o -- te -- vřte mu do -- ko -- řán.
}

songChords = \chordmode {
  \germanChords
  \repeat volta 2 {
  d2:m c4 |
  f2 c4 |
  f2 a4 |
  d2.:m |
  }
  f2 c4 |
  f2 c4 |
  bes2 c4 |
  f2 c4 |
  f2 c4 |
  d2:m c4 |
  bes2 c4 |
  d2.:m
}

\score {
  \new ChoirStaff <<
    %\new ChordNames \songChords
    \new Staff \with {
      midiInstrument = "piano"
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    \new Staff \with {
      midiInstrument = "piano"
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi { }
}
