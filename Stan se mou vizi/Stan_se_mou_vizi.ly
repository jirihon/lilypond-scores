\version "2.16.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 6)
  "Staň se mou vizí"
  composer = "tradiční irská melodie (původní text z 8. století)"
  arranger = "překlad: Daniel Němec"
  tagline = "2020 ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  system-system-spacing #'minimum-distance = #15
  
  top-margin = 1.5\cm
  left-margin = 2\cm
  right-margin = 1.7\cm
  bottom-margin = 1.5\cm
  indent = 0\cm
  %ragged-last = ##t
  %print-all-headers = ##t
}

global = {
  %\override Staff.TimeSignature #'stencil = ##f % hide time signature
  \time 3/4
  %\tempo 4 = 115
  \key c \major
  %\set Timing.beamExceptions = #'()
  %\set Timing.baseMoment = #(ly:make-moment 1 4)
  %\set Timing.beatStructure = #'(1 1 1 1)
}

soprano = \relative c' {
  \global
  c4 c d8( c)
  a4 g g8( a)
  c4 c d
  e2.
  d4 d d
  d e g
  a g e8( g)
  g2.
  a4 a8( b) c( b)
  a4 g e
  g c, b
  a2( g4)
  c4 e g
  a8( g) e4 c8( e)
  d4 c c
  c2.
  \bar "|."
}

verse_one = \lyricmode {
  \set stanza = "1."
  Staň se mou vi -- zí,
  buď snem, kte -- rý mám,
  pro kte -- rý chci žít
  a svůj ži -- vot dám,
  hla -- sem, jenž vo -- dí mne
  svět -- lem i tmou,
  kaž -- dý den pro -- vá -- zí
  mne ces -- tou Tvou.
}
verse_two = \lyricmode {
  \set stanza = "2."
  Ty jsi má mou -- drost,
  má prav -- da, můj Pán,
  od Te -- be u -- čím se
  vše -- mu, co znám.
  Můj Ot -- če "v ne" -- be -- sích,
  jsem dí -- tě Tvé,
  svou lás -- kou pře -- bý -- váš
  teď "v srd" -- ci mém.
}
verse_three = \lyricmode {
  \set stanza = "3."
  Sám jsi mým ští -- tem,
  Tvůj meč os -- trý mám,
  sí -- lu a od -- va -- hu
  svou dá -- váš nám.
  Ská -- lou jsi pev -- nou,
  jež ční ja -- ko hrad,
  nad mo -- řem běs -- ní -- cím
  "s Te" -- bou chci stát.
}
verse_four = \lyricmode {
  \set stanza = "4."
  Ne -- hle -- dám slá -- vu
  či bo -- hat -- ství lesk,
  Ty jsi můj pří -- tel a
  Nej -- vyš -- ší kněz.
  Až jed -- nou vrá -- tíš se
  "v slá" -- vě své "k nám,"
  "k so" -- bě mne za -- vo -- láš,
  Tvůj hlas už znám.
}

songChords = \chordmode {
  \germanChords
  c2.
  f2 g4
  a2:m g4
  c2.
  g1 c2
  f2.
  g2.
  f2.
  a2.:m
  c2 e4:m
  f2 g4
  c2.
  a2.:m
  f2.
  c2.
}


\score {
  <<
    \new ChordNames \with {
      %\override ChordName #'font-name = "Alegreya Sans"
      %\override ChordName #'font-size = 2
    } \songChords
    \new Staff \new Voice = "soprano" { \soprano }
    \new Lyrics \lyricsto "soprano" \verse_one
    \new Lyrics \lyricsto "soprano" \verse_two
    \new Lyrics \lyricsto "soprano" \verse_three
    \new Lyrics \lyricsto "soprano" \verse_four
  >>
  \layout {
    \context {
      %\Score \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      %\override LyricText #'font-size = #1  
    }
  }
  \midi { }
}