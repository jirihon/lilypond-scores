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
  "Nádherný"
  composer = "neznámý autor"
  tagline = "2014, ŘKF Opava–Jaktař"
}

melody = \relative c' {
  \clef treble
  \key e \major
  \time 6/8
  
  s4. e8 dis cis % Tam ve vý-
  cis b4~ b4.~
  b b8 cis e
  e4.~ e~
  e e8 dis cis % Na svoje
  cis b4 r4.
  r b8 cis e % Ma s nami
  e4.~ e~
  e gis8 gis gis
  fis4 e8~ e4.
  r gis8 a gis
  fis4.~ fis~
  fis gis8 a gis
  fis e4~ e4.~
  e gis8 a gis
  fis4.~ fis~
  fis fis16 fis fis8 e % Vše co můžem říct
  e4.~ e4.
  r4. fis16 fis fis8 e
  
  e4. gis16 gis a8 b
  
  fis4.~ fis8( e[ fis])
  
  <gis e b>4. <e b> % Nádherný
  b~ b
  
  gis'~ gis4 fis16( e)
  e4.~ e4.
  
  <gis e b>4. <e b> % Nádherný
  b~ b4 cis8
  e4 e8 e4 cis8
  e4 fis8 fis fis[ e]
  
  <gis e b>4. <e b> % Nádherná
  b <e b>
  gis~ gis4( fis16 e)
  <e cis>4. r
  
  <gis e b>4. <e b> % Nádherný
  b~ b4 cis8
  e4.~ e
  r fis4( e8)
  e4.~ e~
  e r
  
  \bar "|."
}

solo = \override Score . LyricText #'font-shape = #'italic
other = \override Score . LyricText #'font-shape = #'regular

textA = \lyricmode {
  \set stanza = "1." Tam ve vý -- ši -- nách če -- ká náš Pán na svo -- je dě -- ti, má s_ná -- mi plán. Če -- ká tam stá -- le na ne -- be -- sích, sklá -- ní se do -- lů, nás tí -- ží hřích. \solo Vše, co mů -- žem říct, \other vše co mů -- žem říct, \solo vše co mů -- žem říct,
  \other nád -- her -- ný, \solo nád -- her -- ný, \other nád -- her -- ný \solo je Pán, \other je Pán, \solo je Pán, \other je Pán, \solo je -- ho, \other nád -- her -- ná je \solo Lás -- ska \other nád -- her -- ný \solo je náš, \other je Váš.
  
}
textB = \lyricmode {
  \set stanza = "2." Ti -- sí -- ce ro -- ků mi -- lu -- je nás, pro svo -- ji lás -- ku vrá -- tí se zas. Svou sva -- tou kr -- ví ob -- mý -- vá zem, chce všech -- ny spa -- sit, vo -- lej zde jsem.
}

harmonies = \chordmode {
  \skip 4.
  e4.
  e2.
  b
  cis:m
  a
  e
  b
  cis:m
  a
  e
  b
  cis:m
  a
  e
  b
  cis:m
  a
  a
  b
  a
  b
  e
  b
  cis:m
  a
  e
  b
  cis:m
  a
  e
  b
  cis:m
  a
  e
  b
  cis:m
  a
  e
  e
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
