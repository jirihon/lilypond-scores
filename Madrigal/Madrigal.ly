\version "2.16.2"

\header {
  title = "Madrigal"
  composer = "Thomas Morley (1557–1602)"
  tagline = "2016"
}

\paper {
  system-system-spacing #'basic-distance = #22
  top-margin = 1.5\cm
  left-margin = 1.2\cm
  right-margin = 1.2\cm
  bottom-margin = 1.5\cm
}

global= {
  \time 2/2
  \key bes \major
}

violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Voice 1"
  
  \repeat volta 2 {
  \partial 4 bes4--\p
  bes-- bes-- c-- c--
  d2\> d4\! bes
  d4. c8 d4 e
  f2\> f4\! c8 d
  es4 es d bes
  c a f f'8 es
  d4 es c4. bes8
  bes2. } \repeat volta 2 { d4\mf
  c\< f f e\!
  f2 r4 c\p
  es\< es d d\!
  c r r f8 es
  d4 bes f'2
  f,8\< g a bes c d es4
  d4.\f es8\> d4 c
  bes2.\! }
}

violinTwo = \new Voice \relative c' {
  \set Staff.instrumentName = #"Voice 2"

  \repeat volta 2 {
  \partial 4 f4--\p
  g-- bes-- bes-- a--
  bes2\> bes4\! bes
  d4. c8 d4 bes
  c2\> c4\! c8 c
  c4 a bes bes
  a f8 g a4 c8 c
  bes4 bes bes a
  f2. } \repeat volta 2 { f4\mf
  f\< as g g\!
  c2 r4 as\p
  bes\< c c b\!
  c e8 d c4 c
  bes4. c8 d4 d
  c\< c8 bes a4 g
  f\f bes\> bes a
  f2.\!
  }
}

viola = \new Voice \relative c' {
  \set Staff.instrumentName = #"Voice 3"
  
  \repeat volta 2 {
  \partial 4 d4--\p
  es-- g-- es-- es--
  f2\> f4\! f
  bes4. a8 bes4 g
  a2\> a4\! a8 a
  g4 es f g
  c,2. a'8 a
  f4 g f es
  d2. } \repeat volta 2 { bes'4\mf
  c\< c c bes\!
  a2 r4 as\p
  g\< g g g\!
  e c'8 bes a bes a4
  f8 es d4 bes' f8 g
  f4\< f8 g a bes c4
  bes\f r r f8\> es
  d2.\!
  }
}

cello = \new Voice \relative c {
  \set Staff.instrumentName = #"Voice 4"
  \clef bass

  \repeat volta 2 {
  \partial 4 bes4--\p
  es-- es-- c-- c--
  bes2\> bes4\! bes4
  f'4. f8 bes4 g
  f2\> f4\! f8 f
  es4 c d g,
  f2. f'8 f
  bes,4 es, f f
  bes2. } \repeat volta 2 { bes4\mf
  as\< f c' c\!
  f,2 r4 f'\p
  es\< c g' g,\!
  c r r f
  bes, bes bes8 c d es
  f2.\< c4
  d\f g\> f f,
  bes2.\!
  }
}

\score {
  \new StaffGroup <<
    \new Staff << \global \violinOne >>
    \new Staff << \global \violinTwo >>
    \new Staff << \global \viola >>
    \new Staff << \global \cello >>
  >>
  \layout { }
  \midi { }
}
