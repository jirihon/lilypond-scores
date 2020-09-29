\version "2.16.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 6)
  "Soudce všeho světa Bože"
  subtitle = " "
  composer = "T/H: 1659 (úpr. Boh. Korejs *1925)"
  piece = "Poprvé v 1. taktu zazpívat unisono melodii sopránu, pak už vždy čtyřhlas."
  tagline = "2018 ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  system-system-spacing #'minimum-distance = #13
  
  top-margin = 1.5\cm
  left-margin = 2\cm
  right-margin = 1.7\cm
  bottom-margin = 1.5\cm
  indent = 0\cm
  ragged-last = ##t
}

global = {
  \override Staff.TimeSignature #'stencil = ##f % hide time signature
  \time 5/2
  \tempo 4 = 85
  \key b \minor
}

soprano = \relative c' {
  \global
  \repeat volta 2 {
  e2 g4 e d e g fis e2 \breathe
  g2 a4 a b g a a b2 \breathe
  b2 c4 b d b a a g2 \breathe
  b2 g4 a g fis e d e2 \breathe
  } \break
  \times 2/3 { e4( fis e) } d2( e)
  \bar "|."
}

alto = \relative c' {
  \global
  b2 d4 cis b b d d b2
  e2 g4 fis fis e e fis fis2
  g2 g4 g fis g g fis d2
  fis2 e4 e d d cis b b2
  cis2 b~ b
}

tenor = \relative c' {
  \global
  g2 g4 a fis g g a g2 \breathe
  b2 d4 d d b c d d2 \breathe
  d2 e4 d d e e d b2 \breathe
  b2 b4 c g a a fis g2 \breathe
  e2 fis( g)
}

bass = \relative c {
  \global
  e2 b4 a b e b d e2
  e2 d4 d8( c) b4 e a, d b2
  g'2 c,4 g' b, e c d g2
  b,2 e4 a, b d a b e2
  a,2 b( e)
}

verseOne = \lyricmode {
  \set stanza = "1."
  Soud -- ce vše -- ho svě -- ta Bo -- že,
  před trů -- nem tvým ne -- po -- mů -- že,
  žá -- dné -- mu ná -- dher -- nost je -- ho,
  byť měl slá -- vu svě -- ta vše -- ho.
  A -- men.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  Pro Kris -- to -- vo po -- ní -- že -- ní,
  za nás dos -- ti -- u -- či -- ně -- ní,
  se -- šli mi za dar "z vý" -- sos -- ti,
  Bo -- že, po -- ko -- ru "s ti" -- chos -- tí.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Ne -- dej mít se pyš -- ně, hr -- dě,
  "k bliž" -- ním msti -- vě snad a tvr -- dě.
  Nechť křiv -- dy to -- bě sa -- mé -- mu,
  soud -- ci po -- rou -- čím pra -- vé -- mu.
}

verseFour = \lyricmode {
  \set stanza = "4."
  Ty shlí -- žíš "k po" -- ní -- že -- né -- mu, 
  "v srd" -- ci, "v du" -- chu se -- vře -- né -- mu,
  ty, Pa -- ne, víš, co mi ško -- dí,
  víš ta -- ké, co "k do" -- bru vo -- dí.
}

verseFive = \lyricmode {
  \set stanza = "5."
  Nechť se a -- ni pro da -- ry tvé,
  jež pro -- půj -- ču -- ješ "z lás" -- ky své,
  pyš -- ně ni -- kdy ne -- vy -- pí -- nám
  a svým bliž -- ním ne -- po -- hr -- dám.
}

\score {
  \new ChoirStaff <<
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFive
    \new Staff \with {
      midiInstrument = "piano"
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {
    \context {
      \Score \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      %\override LyricText #'font-size = #1  
    }
  }
  \midi { }
}
