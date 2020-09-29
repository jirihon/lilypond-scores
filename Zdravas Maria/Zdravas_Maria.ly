\version "2.16.2"

\header {
  %tagline = "2020 ŘKF Opava–Jaktař"
  %copyright = "2020 ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  system-system-spacing #'minimum-distance = #15
  system-system-spacing #'stretchability = #0
  markup-system-spacing #'stretchability = #0
  
  top-margin = 1.5\cm
  left-margin = 2\cm
  right-margin = 1.7\cm
  bottom-margin = 1.5\cm
  indent = 0\cm
  %ragged-last = ##t
  print-all-headers = ##t
  oddFooterMarkup = \markup { \fill-line { "2020 ŘKF Opava–Jaktař" } }
}

globalRef = {
  \time 12/8
  \tempo 4. = 60
  \key e \minor
}

sopranoRef = \relative c' {
  \globalRef
  e8 e fis g8. a16 g8 fis e d e8 e4
  e4 fis8 g4. a8 g a b4.
  b8 c d a b a g g b fis8 fis4
  e4 g8 a4 fis8 g8 g fis e4.
  b'8( g) a b b b d c b a4.
  g8( e) fis g4. b8( a g) fis4.
  b8 g a b b b d c b a4.
  e4 g8 a4 fis8 g g fis e4.
  \bar "||"
}

altoRef = \relative c' {
  \globalRef
  e8 e fis e8. e16 e8 d b b b8 b4
  e4 fis8 e4. fis8 e fis g4.
  g8 g g fis g fis e e e d8 d4
  e4 e8 fis4 fis8 e e d e4.
  g4 g8 g g g g a g fis4.
  e4 e8 e4. e8( fis e) dis4.
  g8 g g g g g g a g fis4.
  e4 e8 fis4 fis8 e e d e4.
}

tenorRef = \relative c' {
  \globalRef
  g8 g a b8. c16 b8 b b fis g g4
  g4 a8 b4. d8 d d d4.
  d8 c b d d d b b g b b4
  g4 b8 d4 a8 c8 c b b4.
  d8( b) c d d d b c d d4.
  b8( g) a b4. g8( a b) b4.
  d8 b c d d d b c d d4.
  b4 b8 d4 a8 c c b b4.
}

bassRef = \relative c {
  \globalRef
  e8 e e e8. e16 e8 b b b e e4
  e4 e8 e4. d8 d fis g4.
  g8 g g d d d e e e b b4
  e4 e8 d4 d8 c c b e4.
  g4 g8 g g g g g g d4.
  e4 e8 e4. e4. b4.
  g'8 g g g g g g g g d4.
  e4 e8 d4 d8 c c b e4.
}

globalVerse = {
  \override Staff.TimeSignature #'stencil = ##f % hide time signature
  \time 4/4
  \key e \minor
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 8)
  \set Timing.beatStructure = #'(1 1 1 1 1 1 1 1)
}

sopranoVerse = \relative c'' {
  \globalVerse
  g\breve*1/2 \bar ""
  \skip 4 a8 a a a g4
  g\breve*1/2 \bar ""
  \skip 4 fis8 fis e d e4 \bar "||" \break
  
  g\breve*1/2 \bar ""
  a8 a a a g4 g
  g\breve*1/2 \bar ""
  \skip 8 fis8 fis e d e e4 \bar "||" \break
  
  g\breve*1/2 \bar ""
  \skip 4. a8 a a g4
  g\breve*1/2 \bar ""
  \skip 4. fis8 e d e4 \bar "||"
}

altoVerse = \relative c' {
  \globalVerse

}

tenorVerse = \relative c' {
  \globalVerse
  \skip 1*2
  b\breve*1/2 \bar ""
  \skip 4 b8 b b fis g4
  \skip 1*2
  b\breve*1/2 
  \bar ""
  \skip 8 b8 b b b fis g4
  \skip 1*2
  b\breve*1/2 
  \bar ""
  \skip 4. b8 b fis g8
}

bassVerse = \relative c {
  \globalVerse
  \skip 1*2
  e\breve*1/2 \bar ""
  \skip 4 b8 b b b e4
  \skip 1*2
  e\breve*1/2 \bar ""
  \skip 8 b8 b b b b e4
  \skip 1*2
  e\breve*1/2 \bar ""
  \skip 4. b8 b b e4
}

textRef = \lyricmode {
  Zdrá -- va buď Ma -- ri -- a,
  mi -- lo -- sti pl -- ná,
  Pán "s te" -- bou;
  po -- že -- hna -- ná
  ty me -- zi že -- na -- mi
  a po -- že -- hna -- ný
  plod ži -- vo -- ta
  tvé -- ho Je -- žíš.
  Sva -- tá Ma -- ri -- a,
  Mat -- ko Bo -- ží,
  pros za nás hří -- šné
  ny -- ní i "v ho" -- di -- nu
  smr -- ti na -- ší.
  A -- men, a -- men,
  a -- le -- lu -- ja.
}

chordsRef = \chordmode {
  \germanChords
  e8*6:m b8*3:m e8*9:m
  d8*3 g8*6
  d8*3 e:m b:m
  e:m d c8*2 b8:m e8*3:m
  g8*9 d8*3
  e8*9:m b8*3
  g8*9 d8*3
  e:m d c8*2 b8:m e8*3:m
}


chordsVerse = \chordmode {
  \germanChords
  e4*13:m b2:m e4:m
  e8*25:m b2:m e4.:m
  e8*27:m b4.:m e4:m
}

textVerse = \lyricmode {
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = "1." "Anděl Páně byl" po -- slán "k Ma" -- ri -- i
  \once \override LyricText #'self-alignment-X = #LEFT
  "a ona počala" "z Du" -- cha sva -- té -- ho.
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = "2." "Maria řekla: „Jsem" slu -- žeb -- ni -- ce Pá -- ně,
  \once \override LyricText #'self-alignment-X = #LEFT
  "ať se mi stane" po -- dle tvé -- ho slo -- va.“
  \once \override LyricText #'self-alignment-X = #LEFT
  \set stanza = "3." "A Slovo se" sta -- lo tě -- lem
  \once \override LyricText #'self-alignment-X = #LEFT
  "a přebývalo" me -- zi ná -- mi.

}

\score {
  \new ChoirStaff <<
    \new ChordNames \chordsRef
    \new Staff <<
      \new Voice = "soprano" { \voiceOne \sopranoRef }
      \new Voice = "alto" { \voiceTwo \altoRef }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \textRef
    
    \new Staff <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenorRef }
      \new Voice = "bass" { \voiceTwo \bassRef }
    >>
  >>
  \layout { }
  \midi { }
  \header {
    title = \markup
    \override #'(font-name . "Alegreya Sans Black")
    \override #'(font-size . 6)
    "Zdrávas Maria"
    composer = "Jean-Batiste de la Sainte Famille"
    subtitle = \markup
    \override #'(font-name . "Alegreya Sans Medium")
    \override #'(font-size . 4)
    "Anděl Páně"
  }
}

\pageBreak

\score {
  \new ChoirStaff <<
    \new ChordNames \chordsVerse
    \new Staff <<
      \new Voice = "soprano" { \voiceOne \sopranoVerse }
      \new Voice = "alto" { \voiceTwo \altoVerse }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \textVerse
    
    \new Staff <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenorVerse }
      \new Voice = "bass" { \voiceTwo \bassVerse }
    >>
  >>
  \layout { }
  %\midi { }
}