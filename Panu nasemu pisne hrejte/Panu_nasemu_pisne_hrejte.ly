\version "2.16.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
    \override #'(font-size . 6) "Pánu našemu písně hrejte"
  subtitle = ""
  composer = "T+N: K. Žák, N: J. Sykulski"
  arranger = "Upr.: br. Cyprián"
  tagline = "2017, ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  system-system-spacing #'minimum-distance = #15
  
  top-margin = 1.5\cm
  left-margin = 2\cm
  right-margin = 1.7\cm
  bottom-margin = 1.5\cm
  indent = 0\cm
}

global = {
  \time 3/4
  \key f \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1)
}

soprano = \relative c' {
  \global
  \repeat volta 2 { d8 d16 d d8 d c c |
  f8 f4 f8 g g |
  a8 a a a g16( f) e8 |
  d8 d4. b'4\rest \break
  }
  a8 a a a c c |
  a4 a( g) |
  f8 f f f g16( f) g8 |
  a4 a( g) |
  a8 a a a c c |
  a4 a( g) |
  f8 f f f e16( d) e8 |
  d4 d b'4\rest \bar "|."
}

alto = \relative c' {
  \global
  \repeat volta 2 { d8 d16 d d8 d c c |
  c8 c4 c8 e e |
  f8 f f f e16( d) cis8 |
  d8 d4. \skip 4 |
  }
  f8 f f f g g |
  f4 f( e) |
  d8 d d d <e c> <e c> |
  f4 f( e) |
  f8 f f f g g |
  f4 f( c) |
  d8 d d d c c |
  d4 d \skip 4 
}

tenor = \relative c {
  \global
  \repeat volta 2 { d8 d16 d d8 d g g |
  a8 a4 a8 c c |
  c8 c c c a a |
  a8 a4. d,4\rest |
  }
  c'8 c c c c c |
  c4 c2 |
  bes8 a g f g bes |
  c4 c4~ c |
  c8 c c c c c |
  a4 a( g) |
  bes8 a g f g bes |
  a4 a d,4\rest 
}

bass = \relative c {
  \global
  \repeat volta 2 { d8 d16 d d8 d c c |
  f8 f4 f8 c c |
  f8 f f f a, a |
  d8 d4. \skip 4 |
  }
  f8 f f f e e |
  f4 f( c) |
  bes8 bes a bes c c |
  f4 f( c) |
  f8 f f f e e |
  d4 d( c) |
  bes8 bes a bes c c |
  d4 d \skip 4
}

verseOne = \lyricmode {
  \set stanza = "1."
  Pá -- nu na -- še -- mu pí -- sně hrej -- te
  a o -- sla -- vuj -- te je -- ho jmé -- no sva -- té.
  \set stanza = "Ref:"
  A -- le -- lu -- ja, a -- le -- lu -- ja,
  a -- le -- lu -- ja, a -- le -- lu -- ja.
  A -- le -- lu -- ja, a -- le -- lu -- ja,
  a -- le -- lu -- ja, a -- le -- lu -- ja.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Smrt nad ná -- mi už vlá -- du ne -- má,
  o -- bě -- tí Kri -- sta by -- la po -- ra -- že -- na.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Rá -- ny je -- ho nás u -- zdra -- vi -- ly, 
  buď sla -- ven, chvá -- len Kri -- ste, Pa -- ne, mi -- lý.
}

verseFour = \lyricmode {
  \set stanza = "4."
  Slá -- va a chvá -- la je -- mu pa -- tří,
  tak chval -- me pí -- sní Pá -- na své -- ho bra -- tři.
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
    \new ChordNames \songChords
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
