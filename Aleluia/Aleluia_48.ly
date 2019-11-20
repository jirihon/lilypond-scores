\version "2.16.2"

\header {
  tagline = "2018, ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  %system-system-spacing #'minimum-distance = #13
  
  top-margin = 1.5\cm
  left-margin = 2\cm
  right-margin = 1.7\cm
  bottom-margin = 1.5\cm
  indent = 0\cm
  %ragged-last = ##t
  print-all-headers = ##t
}

globalRef = {
  %\override Staff.TimeSignature #'stencil = ##f % hide time signature
  \time 4/4
  %\tempo 4 = 85
  \key a \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

sopranoRef = \relative c'' {
  \globalRef
  cis4. b8 e4 b
  a4. gis8 cis4 gis
  fis4. e8 a4 e
  d8 e fis( a) gis2
  cis4. b8 e4 b
  a4. gis8 cis4 gis
  fis4. e8 a4 e
  a( gis) a2
  \bar "|."
}

altoRef = \relative c'' {
  \globalRef
  a4. a8 a4 b
  fis4. fis8 gis4 gis
  d4. d8 e4 e
  b8 cis d( e) d2
  a'4. a8 a4 b
  fis4. fis8 gis4 gis
  d4. d8 e4 e
  e~ e e2
}

tenorRef = \relative c' {
  \globalRef
  e4. e8 e4 e
  cis4. cis8 cis4 cis
  a4. a8 a4 a
  b8 b b4 b2
  e4. e8 e4 e
  cis4. cis8 cis4 cis
  a4. a8 a4 a
  b( d) cis2
}

bassRef = \relative c' {
  \globalRef
  a4. a8 gis4 fis
  fis4. fis8 e4 e
  d4. d8 cis4 cis
  b8 b b4 e2
  a4. a8 gis4 fis
  fis4. fis8 e4 e
  d4. d8 cis4 cis
  b( e) a,2
}

globalVerse = {
  \override Staff.TimeSignature #'stencil = ##f % hide time signature
  \time 4/4
  \key a \major
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1 4)
  \set Timing.beatStructure = #'(1 1 1 1)
}

sopranoVerse = \relative c'' {
  \globalVerse
  a\breve*1/2 \bar "" \skip 2 a4( fis)
  \break
  fis\breve*1/2 \bar "" e8 d e8 e8 e4
  \revert Score.BarLine #'stencil
  \bar "|."
}

altoVerse = \relative c' {
  \globalVerse
  e\breve*1/2 \skip 2 fis4( cis)
  d\breve*1/2 b8 b b8 b8 b4
}

tenorVerse = \relative c' {
  \globalVerse
  cis\breve*1/2 \skip 2 cis8( b a4)
  b\breve*1/2 b8 b b a gis4
}

bassVerse = \relative c' {
  \globalVerse
  a\breve*1/2 \skip 2 fis4~ fis
  \skip\breve*1/2 b,8 b e8 e8 e4
}

textRef = \lyricmode {
  A -- le -- lu -- ia,
  a -- le -- lu -- ia,
  a -- le -- lu -- ia,
  a -- le -- lu -- ia.
  A -- le -- lu -- ia,
  a -- le -- lu -- ia,
  a -- le -- lu -- ia,
  a -- men!
}

songChords = \chordmode {
  \germanChords
  a2 e
  fis:m cis:m
  d a
  b:m7
  e:7
  a2 e
  fis:m cis:m
  d a
  b4:m e:7 a2
}

textVerse = \lyricmode {
  \once \override LyricText #'self-alignment-X = #LEFT
  "Milujeme-li se navzájem, Bůh zůstává" "v nás" __
  \once \override LyricText #'self-alignment-X = #LEFT
  "a jeho láska je v nás přivedena" "k do" -- ko -- na -- lo -- sti.
}

\score {
  \new ChoirStaff <<
    \new ChordNames \with {
      %\override ChordName #'font-name = "Alegreya Sans"
      %\override ChordName #'font-size = 2
    } \songChords
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
  \layout {
    \context {
      %\Score \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      %\override LyricText #'font-size = #1  
    }
  }
  \midi { }
  \header {
    title = \markup
    \override #'(font-name . "Alegreya Sans Black")
    \override #'(font-size . 6)
    "Aleluia 48"
    piece = "Odpověď"
    composer = "J. Roux / Manuel Luis"
    arranger = "Arr. António Cartageno"
  }
}
\score {
  \new ChoirStaff <<
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
  \layout {
    \context {
      %\Staff
      %\remove "Bar_engraver"
      %\remove "Time_signature_engraver"
      %\Score \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      %\override LyricText #'font-size = #1  
    }
  }
  %\midi { }
  \header {
    piece = "Verš"
  }
}