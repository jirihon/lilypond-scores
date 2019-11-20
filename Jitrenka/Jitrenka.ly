\version "2.14.2"

\paper {
  system-system-spacing #'basic-distance = #17
  indent = 0\mm
  top-margin = 15\mm
  left-margin = 20\mm
  right-margin = 17\mm
  bottom-margin = 15\mm
}

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 5)
  "Jitřenka"
  composer = "neznámý autor"
  tagline = "2014, ŘKF Opava–Jaktař"
}

melody = \relative c' {
  \clef treble
  \key d \major
  \time 6/8
  
  d8 e fis a fis e      | % 1
  d e fis a fis4      | % 2
  e8 fis g a g fis      | % 3
  e4. e4 d8      | % 4
  cis d e fis e d      | % 5
  cis d e fis e4      | % 6
  g8 g g g fis g      | % 7
  e4.        % 8
  << {
    \voiceOne
    a8 b cis \break
    d e d cis4.      | % 9
    a4. fis4.      | % 10
    g4. g8( a) g      | % 11
    e4. a8 g fis      | % 12
    e16 fis e4~ e fis8 \break    | % 13
    e4. a8 b cis      | % 14
    d4. d8 d b      | % 15
    a4. a8 b cis      | % 16
    d e d cis4.      | % 17
    a4. fis4.      | % 18
    g4. g8( a) g      | % 19
    e4. a8 g fis      | % 20
    e16 fis e4~ e fis8      | % 21
    e4. g8 fis e      | % 22
    d d4~ d8 d e   | % 23
    d4.
  }
  \new Voice {
    \voiceTwo
    fis8 fis fis
    fis fis fis fis4.
    fis d
    d d8~ d d
    e4. d8 d d
    cis16 cis cis4~ cis cis8
    cis4. e8 e e
    g4. g8 g g
    e4. fis8 fis fis
    fis fis fis fis4.
    fis d
    d d8~ d d
    e4. d8 d d
    cis16 cis cis4~ cis cis8
    cis4. cis8 cis cis
    b b4~ b8 b b
    b4.
  } >>
  \oneVoice
   r8 r4 \bar "|."
}

textA = \lyricmode {
  \set stanza = " 1. " Na ran -- ní  ob -- lo -- ze  skři -- vá -- nek  zpí -- vá  hvěz -- dy  se po -- ma -- lu  ztrá -- cí,  jen jed -- na  z_nich, Ji -- třen -- ka,  no -- vý  den ví -- tá,  ja -- ký -- den,  jen O -- na  ví. Ji -- třen -- kou  ži -- vo -- ta  mé -- ho  buď ty, Ma -- ri -- a,  krás -- ná  a třpy -- ti -- vá  hvěz -- do,  buď od nás všech po -- zdra -- ve -- na.  Ji -- třen -- kou  ži -- vo -- ta  mé -- ho  buď ty, Ma -- ri -- a,  krás -- ná  a třpy -- ti -- vá  hvěz -- do  o -- ro -- duj  za nás u Sy -- na.
}
textB = \lyricmode {
  \set stanza = " 2. " Ty jsi ta Ji -- třen -- ka,  kte -- rá  se třpy -- tí  na ne -- bi  mých všed -- ních  dnů \skip 1 \skip 1 sví -- tíš  mi na ces -- tu,  kde vo -- ní  kví -- tí,  do raj -- ské  zah -- ra -- dy  snů.
}

harmonies = \chordmode {
  d2.
  d2.
  e:m
  e:m
  a
  a
  g
  a
  d
  d
  e:m
  e:m
  a
  a
  g
  a
  d
  d
  e:m
  e:m
  a
  a
  g
  d
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \override ChordName #'font-size = #1
      \harmonies
    }
    \new Voice = "one" { \melody }
    \new Lyrics \lyricsto "one" \textA
    \new Lyrics \lyricsto "one" \textB
  >>
  \layout { }
  \midi { }
}
