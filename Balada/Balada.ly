\version "2.16.2"

\header {
  title = "Balada"
  composer = "Jaroslav Zouhar"
  tagline = "2016"
}

\paper {
  system-system-spacing #'minimum-distance = #22
  top-margin = 1.5\cm
  left-margin = 1.2\cm
  right-margin = 1.2\cm
  bottom-margin = 1.5\cm
}

global= {
  \time 4/4
  \key f \major
  \tempo 4 = 80
}

violinOne = \new Voice \relative c'' {
  \set Staff.instrumentName = #"Voice 1"
  
  \repeat volta 2 {
  a2. a16 bes c8
  g2. c4
  d2 \times 2/3 { d4 e f }
  c8 a~ a2 r4
  a2 d4 f
  e2. d8 e
  f2 e4 f
  g2 a \bar "||"
  \tempo 4 = 100 bes,2. c8 d
  c2. bes4
  c2. a8 c
  d2. c4
  d2. e8 f
  e4 r d e
  e1
  fis1 \bar "||"
  r2 d8-- bes-. d-- bes-.
  c-- c-. r4 r a8 bes
  c4-. r4 c8-- a -. c-- a-.
  bes2. a4--
  bes2. a8 g
  a2. e'4
  }
  \alternative {
    { a,8. c16 r8 d->~ d2
      c1
      c1 }
    { e1
      d1 }
  }
  \bar "|."
}

violinTwo = \new Voice \relative c' {
  \set Staff.instrumentName = #"Voice 2"
  
  \repeat volta 2 {
  f4. f8-. f2
  e4. e8-. e2
  bes'2 \times 2/3 { bes4 c d }
  a8 f~ f2 r4
  f2 a4 d
  c1
  d2 c4 d
  d2 cis2 \bar "||"
  bes8-- bes-. r bes-. bes2
  bes8-- bes-. r bes-. bes2
  a8-- a-. r a-. a2
  a8-- a-. r a-. a2
  bes8-- bes-. r bes-. bes2
  g8-- g-. r g-. g2
  g8-- g-. r g-. g2
  fis8-- fis-. r fis-. fis2 \bar "||"
  bes8-- bes-. r bes-. bes2
  bes8-- bes-. r bes-. bes2
  a8-- a-. r a-. a2
  a8-- a-. r a-. a2
  g8-- g-. r g-. g2
  g8-- g-. r g-. g2
  }
  \alternative {
    { f8. a16 r8 c8->~ c2
      g1
      g1 }
    { g8-- g-. r g-. fis4 g
      fis1 }
  }
  \bar "|."
}

viola = \new Voice \relative c' {
  \set Staff.instrumentName = #"Voice 3"
  
  \repeat volta 2 {
  c4. c8-. c2
  c4. c8-. c2
  f4. f8-. f2
  c4. c8-. c4 f8 e
  d2 f4 a
  g1
  a2 g4 a
  g2 g \bar "||"
  f8-- f-. r f-. f2
  e8-- e-. r e-. e2
  e8-- e-. r e-. e2
  d8-- d-. r d-. d2
  d8-- d-. r d-. d2
  d8-- d-. r d-. cis2
  a8-- a-. r a-. a2
  a8-- a-. r a-. a2 \bar "||"
  f'8-- f-. r f-. f2
  e8-- e-. r e-. e2
  e8-- e-. r e-. e2
  d8-- d-. r d-. d2
  d8-- d-. r d-. d2
  d8-- d-. r d-. cis2
  }
  \alternative {
    { d8. f16 r8 f->~ f2
      f1
      e1 }
    { a,8-- a-. r a-. a2
      a1 }
  }
  \bar "|."
}

cello = \new Voice \relative c, {
  \set Staff.instrumentName = #"Voice 4"
  \clef bass

  \repeat volta 2 {
  f4. f8-. f2
  f4. f8-. f2
  f4. f8-. f2
  f4. f8-. f4 r
  d1
  c4. c8-. c2
  bes4. bes8-. bes2
  a4. a8-. a2 \bar "||"
  g'8-- g-. r g-. g2
  c,8-- c-. r c-. c2
  f8-- f-. r f-. f2
  bes,8-. bes-. r bes -. bes2
  g'8-- g-. r g-. g2
  a8-- a-. r a-. a2
  d,8-- d-. r d-. d2
  d8-- d-. r d-. d2 \bar "||"
  g8-- g-. r g-. g2
  c,8-- c-. r c-. c2
  f8-- f-. r f-. f2
  bes,8-. bes-. r bes -. bes2
  e8-- e-. r e-. e2
  a,8-- a-. r a-. a2
  }
  \alternative {
    { d8. c16 r8 bes8->~ bes2
      c4-> r8 g'-- c-- g-. r g--
      c,1
    }
    { d8-- d-. r d-. d2
      d1
    }
  }
  \bar "|."
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
