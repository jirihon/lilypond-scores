\version "2.16.2"

#(set-global-staff-size 19)

\header {
  title = "Radujme se s anjeli"
  subtitle = "Alt"
  composer = "Jan Trajan Turnovský (1575)"
  tagline = "2016"
}

\paper {
  %system-system-spacing #'minimum-distance = #22
  top-margin = 1.5\cm
  left-margin = 1\cm
  right-margin = 1\cm
  bottom-margin = 1.5\cm
  indent = #0
}

global= {
  \time 4/4
  \key f \major
  \clef treble
}

Tenor =  \new Voice = "tenor" 	 \relative c' {
  %\set Staff.instrumentName = #"Tenor"
  
  \repeat volta 2 {
  c4 c c c |
  c c c2 |
  bes4 bes2( a4) |
  bes( c) c2 |
  a4( bes2 c4 |
  d2 c) |
  c1 |
  }
  f2 f |
  f4 d c c |
  c2 c |
  c4 a bes g |
  g2 a4 c~ |
  c c c2 |
  c4 c c2 |
  bes4 bes2 a4 |
  bes2 c |
  a4 bes2 c4 |
  d2( c) |
  c1 |
}

TenorLyrics = \new Lyrics \lyricsto "tenor" {
  <<
    { \set stanza = "1."
    Ra -- duj -- me se "s an" -- je -- li
    vši -- ckni spo -- lu ny -- ní.
    
    Ó pře -- div -- ná věc no -- vá
    před vě -- ky zří -- ze -- ná,
    je zří -- ze -- ná.
    Pa -- nny či -- stá shr -- nu -- la
    "v svém" ži -- vo -- tě Pá -- na.
    }
    \new Lyrics { \set associatedVoice = "tenor"
    Na -- ro -- dil se Spa -- si -- tel,
    na -- še vy -- kou -- pe -- ní.
    }
    \new Lyrics { \set associatedVoice = "tenor"
    \set stanza = "2." 
    Neb jsme již do -- če -- ka -- li,
    če -- hož jsou žá -- da -- li
    
    Ó dejž po -- moc nej -- vy -- šší,
    náš Pa -- ne Je -- ží -- ši,
    náš Je -- ží -- ši,
    a -- by -- chom by -- li vdě -- ční
    tvé -- ho na -- ro -- ze -- ní.
    }
    \new Lyrics { \set associatedVoice = "tenor"
    pro -- ro -- ci sva -- tí, krá -- li,
    a -- by jej vi -- dě -- li.
    }
    \new Lyrics { \set associatedVoice = "tenor"
    \set stanza = "3."
    Chvá -- la Ot -- ci mo -- cné -- mu
    i Sy -- nu mou -- dré -- mu,
    
    O -- tec nás mo -- cně stvo -- řil,
    Syn mou -- dře vy -- kou -- pil,
    Syn vy -- kou -- pil.
    Duch sva -- tý nás na -- vští -- vil
    a mi -- le u -- tě -- šil.
    }
    \new Lyrics { \set associatedVoice = "tenor"
    ta -- ké Du -- chu sva -- té -- mu,
    Mi -- stru vý -- bor -- né -- mu,
    }
  >>
}

\score {
  \new StaffGroup <<
    \new Staff << \global \Tenor \TenorLyrics >>
  >>
  \layout { }
  \midi { }
}