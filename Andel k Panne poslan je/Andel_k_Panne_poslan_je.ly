\version "2.18.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 6)
  "Anděl k Panně poslán je (Prósa)"
  composer = "Staročeský rorátní zpěv z 15. století"
  tagline = "2019, ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  %system-system-spacing #'minimum-distance = #15
  
  top-margin = 1.5\cm
  left-margin = 2\cm
  right-margin = 1.7\cm
  bottom-margin = 1.5\cm
  indent = 0\cm
  %ragged-last = ##t
  %print-all-headers = ##t
}

%\override Staff.TimeSignature #'stencil = ##f % hide time signature
%\set Timing.beamExceptions = #'()
%\set Timing.baseMoment = #(ly:make-moment 1 4)
%\set Timing.beatStructure = #'(1 1 1 1)

sopranoIntro = \relative c' {
  \override Staff.TimeSignature #'stencil = ##f % hide time signature
  \time 7/8
  \key f \major
  c8 f f g e f4 \bar ""
  g8 a bes a g f4 \bar ""
  a8 c bes a g f4 \bar ""
  f8 g d e d c4 \breathe \bar ""
  \time 11/8
  g'8 f g a f f e d e f4 \breathe \bar ""
  \time 7/8
  c8 f f g e f4 \bar ""
  g8 a bes a g f4 \bar ""
  a8 c bes a g f4 \bar ""
  f8 g d e d c4 \breathe \bar ""
  \time 11/8
  g'8 f f g a f e d e f4
  \bar "|."
}

verseIntro = \lyricmode {
  Pán Bůh vše -- mo -- hú -- cí
  "z ve" -- li -- ké mi -- los -- ti
  po -- slal po -- sla  své --  ho
  an -- dě -- la moc -- né -- ho
  "k Pan" -- ně Ma -- ri -- i "k to" -- mu zvo -- le -- né.
  Je -- muž -- to Ga -- bri -- el
  jmé -- no sil -- ný an -- děl
  "z ne" -- bes -- ké -- ho dvo -- ru,
  "z an" -- děl -- ské -- ho ků -- ru,
  patř tu -- to člo -- vě -- če my -- sli vzhů -- ru.
}

sopranoVerse = \relative c'' {
  \time 4/4
  \key f \major
  c4 c a c
  bes a f( a)
  \slurDashed
  \phrasingSlurDashed
  c8\(( bes c) f,\) e4 f
  g8\(( a bes) a\) g2
  \slurSolid
  c4 c a c
  bes a f( g)
  e8( d e) c d4 e
  c8( e f e) f2
  f8( d e) c f4 a
  bes4 a f( a)
  c8( bes c) f, e4 f
  g8( a bes a) g2
  \slurDashed
  f8\(( d e) c\) f4 a
  bes a f\( g\)
  \slurSolid
  e8( d e) c d4 e
  c8( e f e) f2
  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "1."
  An -- děl "k Pan" -- ně
  po -- slán je,
  u -- cti -- vě ji
  zdra -- _ ví,
  na -- ro -- ze -- ní
  zvěs -- tu -- je
  Pá -- na věč -- né
  slá -- vy.
  An -- dě -- lo -- va
  po -- sel -- ství
  hlas když dív -- ka
  sly -- ší,
  o těch vě -- cech
  po -- div -- ných _
  u -- va -- žu -- je
  "v du" -- ši.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  An -- děl pra -- ví:
  „Sva -- tý Duch
  se -- _ stou -- pí
  na te -- be
  a mo -- cí tě
  za -- stí -- ní
  Pán, Nej -- vyš -- ší
  "z ne" -- be.
  Po -- žeh -- na -- ná
  nad všech -- ny,
  máš být mat -- kou
  Sy -- na,
  je -- muž dá Bůh
  krá -- lov -- ství _
  na -- de všech -- na ji -- ná.“
}

verseThree = \lyricmode {
  \set stanza = "3."
  Kri -- ste, Krá -- li,
  Pa -- ne náš,
  Sy --  nu Bo -- ží
  pra -- _ vý,
  spá -- so svě -- ta
  je -- di -- ná,
  dár -- ce věč -- né
  slá -- vy,
  u -- slyš hla -- sy
  věr -- ných svých,
  zbav nás vše -- ho
  zlé -- ho,
  a _ do -- veď
  vše -- chen svůj lid
  do krá -- lov -- ství
  své -- ho!
  
}

\score {
  <<
    \new Staff \new Voice = "soprano" { \sopranoIntro }
    \new Lyrics \lyricsto "soprano" \verseIntro
  >>
  \layout { }
  \midi { }
}

\score {
  <<
    \new Staff \new Voice = "soprano" { \sopranoVerse }
    \new Lyrics \lyricsto "soprano" \verseOne
    \new Lyrics \lyricsto "soprano" \verseTwo
    \new Lyrics \lyricsto "soprano" \verseThree
  >>
  \layout { }
  \midi { }
}
