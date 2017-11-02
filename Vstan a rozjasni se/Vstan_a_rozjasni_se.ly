\version "2.16.2"

\header {
  title = "Vstaň a rozjasni se"
  subtitle = "Izaiáš 60"
  composer = "T+N: GOCAM"
  tagline = "2017"
}

#(set-global-staff-size 19)

\paper {
  system-system-spacing #'minimum-distance = #20
  
  top-margin = 1\cm
  left-margin = 1\cm
  right-margin = 1\cm
  bottom-margin = 1.5\cm
  indent = 0\cm
}

global = {
  \time 4/4
  \key e \minor
}

soprano = \relative c' {
  \global
  \repeat volta 2 {
  e8 b e fis g4 fis8 e |
  fis4 fis8 g a4 a |
  dis,8 b dis e fis fis g fis |
  e1 | \break
  }
  gis8 e gis a b4 gis8 e |
  a4 b c2 |
  fis,8 d fis g a a c b |
  a4 g fis2 |
  e8 b e fis g4 fis8 e |
  fis8 fis g4 a2 |
  dis,8 b dis e fis fis g fis |
  e1 | \break
  \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 77))
  
  gis4 gis8 a b4 b |
  c4 c8 b a4 a |
  b4 b8 c b a g a |
  b2~ b | \break
  \overrideProperty #"Score.NonMusicalPaperColumn"
    #'line-break-system-details #'((Y-offset . 106))
  gis4 gis8 a b4 b |
  c4 c8 b a4 a |
  b4 b8 c b a g fis |
  e1 \bar "|."
}

alto = \relative c' {
  \global
  \repeat unfold 12 { \skip 1 }
  e4 e8 fis gis4 gis |
  e4 e8 e e4 e |
  g4 g8 a g fis g fis |
  fis2~ fis |
  e4 e8 fis gis4 gis |
  e4 e8 e e4 e |
  g4 g8 g g fis e dis |
  b1
}

tenor = \relative c' {
  \global
  \repeat unfold 12 { \skip 1 }
  b4 b8 b e4 e |
  e4 e8 d c4 c |
  d4 d8 d d d b d |
  e2( dis) |
  b4 b8 b e4 e |
  e4 e8 d c4 c |
  e4 e8 e dis dis b a |
  g1
}

bass = \relative c {
  \global
  \repeat unfold 12 { \skip 1 }
  e4 e8 e e4 e |
  a4 a8 a a4 a |
  g4 g8 g g d d d |
  b2~ b |
  e4 e8 e e4 e |
  a4 a8 a a4 a |
  e4 e8 e b b b b |
  e1
}

songChords = \chordmode {
  \germanChords
  \repeat volta 2 {
  e1:m |
  b1:7 |
  b1:7 |
  e1:m |
  }
  e1 |
  a1:m |
  d1 |
  b1:7 |
  e1:m |
  b1:7 |
  b1:7
  e1:m |
 
  e1 |
  a1:m |
  g1 |
  b1 |
  e1 |
  a1:m |
  e2:m b2 |
  e1:m
}

verseOne = \lyricmode {
  \set stanza = "1."
  Vstaň a tvář svou roz -- jas -- ni, Je -- ru -- za -- lé -- me,
  slá -- va Pá -- ně sví -- tí nad te -- bou.
  Jas -- ným zra -- kem se ko -- lem roz -- hlé -- dni,
  a tvé srd -- ce vel -- ká ra -- dost za -- pla -- ví.
  Při -- chá -- ze -- jí dnes "k to" -- bě sy -- no -- vé tví,
  i tvé dcer -- ky ne -- sou "v ná" -- ru -- čí.
  
  \set stanza = "Ref:"
  Je -- ru -- za -- lé -- me, Je -- ru -- za -- lé -- me,
  Bůh "z te" -- be smu -- teč -- ní šat sňal.
  Je -- ru -- za -- lé -- me, Je -- ru -- za -- lé -- me,
  pí -- sní a tan -- cem Pá -- na chval.
}

verseTwo = \lyricmode {
  \set stanza = "2."
  "K tvé" -- mu svět -- lu pů -- jdou blíž ná -- ro -- dy všech -- ny
  a krá -- lo -- vé za tvou jas -- nos -- tí.
  Při -- kry -- je tě zá -- pla -- va vel -- blou -- dů,
  při -- jdou stá -- da "z E" -- fy, ta -- ké "z Mid" -- ja -- nu.
  Ka -- di -- dlo a zla -- to ze Sá -- by ne -- sou,
  Hos -- po -- di -- nu vzda -- jí chvá -- lu svou.
}

verseThree = \lyricmode {
  \set stanza = "3."
  Tvo -- je hrad -- by sta -- vě -- jí sy -- no -- vé ci -- zí,
  je -- jich krá -- lo -- vé tě nav -- ští -- ví.
  Slá -- va Li -- ba -- no -- nu teď při -- chá -- zí,
  bu -- deš na -- zván sva -- tým měs -- tem Pá -- no -- vým.
  Roz -- ply -- ne se zár -- mu -- tek tvé -- ho li -- du,
  o -- sla -- víš mě "v kru" -- hu ná -- ro -- dů.
}


\score {
  \new ChoirStaff <<
    \new ChordNames \songChords
    \new Staff \with {
      midiInstrument = "piano"
    } <<
      \override Staff.VerticalAxisGroup #'remove-first = ##t
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      %\override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      %\override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      %\override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Staff \with {
      midiInstrument = "piano"
    } <<
      \override Staff.VerticalAxisGroup #'remove-first = ##t
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { \context { \Staff \RemoveEmptyStaves } }
  \midi { }
}
