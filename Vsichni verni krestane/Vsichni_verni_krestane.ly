\version "2.16.2"

#(set-global-staff-size 19)

\header {
  title = "Všichni věrní křesťané"
  composer = "Jan Trajan Turnovský (1575)"
  tagline = "2016"
}

\paper {
  system-system-spacing #'minimum-distance = #22
  top-margin = 1.5\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  bottom-margin = 1.5\cm
  indent = #0
}

global= {
  \time 4/4
  \key f \major
  \clef treble
}

Tenor =  \new Voice = "tenor" 	 \relative c'' {
  %\set Staff.instrumentName = #"Tenor"
  
  \repeat volta 2 {
  a4 a c g |
  a c2 f,4~ |
  f2 r4 f4 |
  f8( g a bes c4) g |
  a d2( c4~ c bes2 a8 g) |
  a1
  }
  a4( c) bes f~ |
  f f8( g a bes c4~ |
  c8) bes g4 f2 |
  r4 f d g~( |
  g8 f) d4 e g |
  a a g g |
  a( g) f( a) |
  f2 r4 f~( |
  f8 g a bes c4) g |
  a( d4. c8) c4~ |
  c bes2( a8 g) |
  a1
}

TenorLyrics = \new Lyrics \lyricsto "tenor" {
  <<
    { \set stanza = "1."
    Vši -- chni věr -- ní křes -- ťa -- né,
    ve -- se -- lme se ny -- ní,
    
    "V němž" mi -- lost sv -- rcho -- va -- ná
    nám jest u -- ká -- zá -- na
    od Bo -- ha pře -- do -- bré -- ho
    la -- ska -- vé -- ho Pá -- na.
    }
    \new Lyrics { \set associatedVoice = "tenor"
    pa -- ma -- tu -- jíc spo -- leč -- ně
    Kris -- to -- va vtě -- le -- ní. }
    \new Lyrics { \set associatedVoice = "tenor"
    \set stanza = "2." 
    Ve dne "v no" -- ci "v mod" -- lit -- bách
    u -- sta -- vič -- ně stů -- jme,
    
    Ma -- ri -- e Pa -- nny čis -- té
    "v cno" -- stech ná -- sle -- duj -- me, 
    "v ví" -- ře, lá -- sce, po -- ko -- ře, 
    u -- sta -- vi -- čně stů -- jme.
    }
    \new Lyrics { \set associatedVoice = "tenor"
    je -- ho sva -- té po -- mo -- ci
    od Bo -- ha žá -- de -- jme. }
  >>
}

\score {
  \new StaffGroup <<
    \new Staff << \global \Tenor \TenorLyrics >>
  >>
  \layout { }
  \midi { }
}