\version "2.16.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 6)
  "Svatební"
  composer = "Jerichove trúby"
  tagline = "2018 ŘKF Opava–Jaktař"
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
  \time 4/4
  \tempo 4 = 115
  \key d \major
  %\set Timing.beamExceptions = #'()
  %\set Timing.baseMoment = #(ly:make-moment 1 4)
  %\set Timing.beatStructure = #'(1 1 1 1)
}

soprano = \relative c' {
  \global
  r2 r8 fis fis e
  d4 fis e d8 d~
  d4 r4 r8 d' d d
  d cis~ cis4 b8 a a4~
  a r4 r8 d d d
  d cis r4 b a8 a~(
  a b4) r8 r8 fis fis fis
  g fis r4 r8 e d d
  r2 r8 d d d
  g fis r4 r8 e d d
  
  r2 r8 fis fis e
  r4 d8 fis e d d4 \break
  r2 r8 d' d d
  d4 cis8 r8 b8 a8 a4~
  a2 r8 d d d
  d cis r4 b8 a4 a8~(
  a b4) r8 r8 fis fis fis
  g fis r4 e8 d4 d8~
  d2 r8 d d d
  g fis r4 e8 d4 d8~
  d2^\markup{ \italic Mezihra } r2
  
  R1*3
  
  \repeat volta 2 {
  fis4 fis4 e8 fis g fis~
  fis e4 d8 r4 a8 a
  e' fis r4 e8 d r8 d~
  d2 r8 a a a
  fis'4 fis8 fis e fis g fis~
  fis e4 d8 r4 a8 a
  e'4 d8 r fis e( d) d~
  d2 r2
  }
  %\bar "|."
}

text = \lyricmode {
  \set stanza = "1."
  Když děv -- če "v bí" -- lém zá -- vo -- ji
  stou -- pne si "s te" -- bou před ol -- tář,
  a něž -- né a -- no za -- zvo -- ní,
  dá -- te si se -- be ja -- ko dar,
  dá -- te si se -- be ja -- ko dar.
  
  \set stanza = "2."
  Ať va -- še ce -- sta ži -- vo -- tem,
  je svě -- tlem lá -- sky za -- li -- tá,
  ať jde -- te spo -- lu "v do" -- brém zlém,
  ať vás Bůh "v ne" -- bi při -- ví -- tá,
  ať vás Bůh "v ne" -- bi při -- ví -- tá.
  % Ať vaše cesta životem, je světlem lásky zalitá, 
  % ať jdete spolu v dobrém zlém, ať vás Bůh v nebi přivítá.
  
  \set stanza = "Ref."
  Kéž Bůh stá -- le bdí nad  vá -- mi,
  ať vám svo -- ji mi -- lost dá,
  a -- by -- ste krá -- če -- li vždy je -- ho ce -- sta -- mi,
  tam je  lá -- ska u -- pří -- mná.
}

songChords = \chordmode {
  \germanChords
  \skip1 d2 a
  d1
  g2 a2
  d1
  g2 a2
  b1:m
  e2:m a2
  d1
  e2:m a2
  d1
  d2 a2
  d1
  g2 a2
  d1
  g2 a2
  b1:m
  e2:m a2
  d1
  e2:m a2
  
  d1 d1 d1 d1
  
  d1
  d1
  e2:m a2
  d1
  d1
  d1
  g2 a2
  d1
}


\score {
  <<
    \new ChordNames \with {
      %\override ChordName #'font-name = "Alegreya Sans"
      %\override ChordName #'font-size = 2
    } \songChords
    \new Staff \new Voice = "soprano" { \soprano }
    \new Lyrics \lyricsto "soprano" \text
  >>
  \layout {
    \context {
      %\Score \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      %\override LyricText #'font-size = #1  
    }
  }
  \midi { }
}