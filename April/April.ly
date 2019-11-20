\version "2.16.2"

\header {
  title = "April"
  composer = "Thomas Morley (1557–1602)"
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
  \key bes \major
  \clef bass
}

PartPOneVoiceOne =  \new Voice \relative c' {
  %\set Staff.instrumentName = #"Voice 1"
  
  d4 c8 bes8 c4 d4 | % 2
  bes4 c4 a2 | % 3
  r2 d4 d8 d8 | % 4
  d4 d4 es4 c4 | % 5
  d2 a2 | % 6
  bes2 g4 bes4 | % 7
  a2 d4 c8 bes8 | % 8
  c4 a4 bes4 c4 | % 9
  a2 r4 a4 | \barNumberCheck #10
  bes8 a8 bes8 c8 d4 bes4 | % 11
  a2 g2 | % 12
  r4 bes4 d8 c8 d8 e8 | % 13
  f2 d4 es4 ~ | % 14
  es8 d8 c8 bes8 c2 | % 15
  bes2 r4 d4 | % 16
  c4 d4 es2 | % 17
  d2 r4 d4 | % 18
  bes4 d4 c2 | % 19
  bes2 d2 | \barNumberCheck #20
  c2 d2 ~ | % 21
  d4 c4 bes4 a4 | % 22
  bes1 | % 23
  a4 d4 d4 d4 | % 24
  f1 | % 25
  r4 c4 c4 c4 | % 26
  es2 es2 | % 27
  bes4 g4 bes4 c4 | % 28
  d1 ~ | % 29
  d1 | \barNumberCheck #30
  b1 | % 31
  r4 d4 d4 d4 | % 32
  f1 | % 33
  r4 c4 c4 c4 | % 34
  es2 es2 | % 35
  bes4 g4 bes4 c4 | % 36
  d1 ~ | % 37
  d1 | % 38
  b1
  \bar "|."
}

PartPTwoVoiceOne =  \new Voice \relative c' {
  %\set Staff.instrumentName = #"Voice 2"
  
  bes4 a8 g8 a4 d,4 | % 2
  g4 a8 g8 fis8 e8 fis4 | % 3
  g2 r2 | % 4
  d4 d8 d8 g4 g4 | % 5
  g2 fis2 | % 6
  g2 r2 | % 7
  r2 bes4 a8 g8 | % 8
  a4 fis4 g4 g4 | % 9
  fis2 r4 f4 | \barNumberCheck #10
  g8 f8 g8 a8 bes4 g4 | % 11
  fis2 g2 | % 12
  r4 f4 bes4 bes4 | % 13
  a8 bes8 c8 a8 bes4 g4 | % 14
  f2 ~ f4 f4 | % 15
  f2 r4 bes4 | % 16
  a4 bes2 a4 | % 17
  bes2 f2 | % 18
  g4 eis4 f2 | % 19
  f2 bes2 | \barNumberCheck #20
  a2 bes2 ~ | % 21
  bes4 a4 g4 fis4 | % 22
  g1 | % 23
  fis1 | % 24
  R1 | % 25
  r4 a4 a4 a4 | % 26
  c2 g2 | % 27
  g2 g2 | % 28
  f4 d4 g2 ~ | % 29
  g4 fis8 e8 fis2 | \barNumberCheck #30
  g4 g4 g4 g4 | % 31
  bes2 bes2 | % 32
  a1 | % 33
  r4 a4 a4 a4 | % 34
  c2 g2 | % 35
  g2 g2 | % 36
  f4 d4 g2 ~ | % 37
  g4 fis8 e8 fis2 | % 38
  g1
  \bar "|."
}

PartPThreeVoiceOne =  \new Voice \relative c {
  %\set Staff.instrumentName = #"Voice 3"
  
  R1*2 | % 3
  r2 bes4 a8 g8 | % 4
  a4 bes4 c4 g4 | % 5
  a1 | % 6
  g2 d'4 c8 bes8 | % 7
  c4 d4 bes4 bes4 | % 8
  a4 d4 d4 es4 | % 9
  d1 | \barNumberCheck #10
  R1 | % 11
  r4 r2 bes4 | % 12
  d8 c8 d8 e8 f4 bes,4 | % 13
  c2 bes4 c4 ~ | % 14
  c8 bes8 bes2 a4 | % 15
  bes2 r4 bes4 | % 16
  f'4 d4 c2 | % 17
  bes2 bes2 | % 18
  g4 bes2 a4 | % 19
  bes2 f'2 ~ | \barNumberCheck #20
  f2 f2 | % 21
  d1 ~ | % 22
  d1 | % 23
  d2 r4 d4 | % 24
  d4 d4 f2 ~ | % 25
  f2 f2 | % 26
  c1 | % 27
  r2 g2 | % 28
  bes2 bes2 | % 29
  a1 | \barNumberCheck #30
  g2 r4 g4 | % 31
  g4 g4 d'2 | % 32
  d2 f2 ~ | % 33
  f2 f2 | % 34
  c1 | % 35
  r2 g2 | % 36
  bes2 bes2 | % 37
  a1 | % 38
  g1
  \bar "|."
}

PartPFourVoiceOne =  \new Voice \relative c {
  %\set Staff.instrumentName = #"Voice 4"
  
  \clef bass
  R1*2 | % 3
  r2 g4 ges8 fes8 | % 4
  ges4 g4 c,4 es4 | % 5
  d1 | % 6
  r2 bes'4 a8 g8 | % 7
  a4 ges4 g4 g4 | % 8
  c,4 d4 g4 c,4 | % 9
  d1 | \barNumberCheck #10
  R1 | % 11
  r4 d4 es8 f8 g8 a8 | % 12
  bes2 bes2 | % 13
  f2 g4 es4 | % 14
  f1 | % 15
  bes,1 | % 16
  R1 | % 17
  r2 bes2 | % 18
  es4 bes4 f'2 | % 19
  bes,1 | \barNumberCheck #20
  f'2 d2 | % 21
  g1 ~ | % 22
  g1 | % 23
  d1 | % 24
  r4 d4 d4 d4 | % 25
  f1 | % 26
  r4 c4 c4 c4 | % 27
  es2 ~ es4 es4 | % 28
  bes2 ~ bes4 c4 | % 29
  d1 | \barNumberCheck #30
  g,1 ~ | % 31
  g1 | % 32
  r4 d'4 d4 d4 | % 33
  f1 | % 34
  r4 c4 c4 c4 | % 35
  es2 ~ es4 es4 | % 36
  bes2 ~ bes4 c4 | % 37
  d1 | % 38
  g,1
  \bar "|."
}

\score {
  \new StaffGroup <<
    \new Staff << \global \PartPOneVoiceOne >>
    \new Staff << \global \PartPTwoVoiceOne >>
    \new Staff << \global \PartPThreeVoiceOne >>
    \new Staff << \global \PartPFourVoiceOne >>
  >>
  \layout { }
  \midi { }
}