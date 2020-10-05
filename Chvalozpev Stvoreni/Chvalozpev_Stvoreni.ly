\version "2.16.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 6)
  "Chvalozpěv stvoření"
  tagline = "2020 ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  %system-system-spacing #'minimum-distance = #15
  
  top-margin = 1.2\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  bottom-margin = 1.2\cm
  indent = 0\cm
  %ragged-last = ##t
  %print-all-headers = ##t
  markup-system-spacing #'minimum-distance = #13
}

global = {
  %\override Staff.TimeSignature #'stencil = ##f % hide time signature
  \time 4/4
  %\tempo 4 = 115
  \key d \major
  %\set Timing.beamExceptions = #'()
  %\set Timing.baseMoment = #(ly:make-moment 1 4)
  %\set Timing.beatStructure = #'(1 1 1 1)
}

refrain = \relative c' {
  \global
  \partial 4 fis8 g
  a4 a8 b a4 g8 fis
  b,8 d r4 r d8 e
  fis( g) fis4 g8 fis e4
  e8 e e d e4 r
  fis8 a b a b cis d b
  b a b4 r a8 g
  fis fis g a d, d4.
  e8 d cis e e4 d~
  d r r2 \bar "||"
}
verse = \relative c' {
  \global
  \partial 4 d8 e
  fis a4 b8 b a g fis
  b, d r4 r d8 e
  fis4  r8 fis g fis e d
  e2 r4 r8 d
  a' fis4. b8 cis d b
  b a b2 b8 a
  a2 r
  \bar "||"
}

refrainText = \lyricmode {
  Nej -- vyš -- ší, vše -- moc -- ný, dob -- rý Pa -- ne,
  To -- bě slá -- va, chvá -- la, čest, dob -- ro -- ře -- če -- ní.
  Pa -- tří To -- bě je -- di -- né -- mu, Nej -- vyš -- ší,
  žá -- dný člo -- věk ne -- ní ho -- den vy -- slo -- vit Tvé jmé -- no.
  \set stanza = "1."
 
}
verseText = \lyricmode {
  \set stanza = "1."
  Ať Tě chvá -- lí, můj Pa -- ne, bra -- tr Slun -- ce,
  on je den a dá -- vá svět -- lo nám.
  Je krás -- ný, zá -- ří les -- kem, vždyť je tvým o -- bra -- zem.
}

refrainChords = \chordmode {
  \germanChords
  s4 d2 fis:m/cis
  g/b g
  d e:m
  a:sus4 a
  d b:m
  g g:m
  d g
  a:7 d
  d1
}
verseChords = \chordmode {
  \germanChords
  s4 d2 fis:m/cis
  g/b g
  d e:m
  a:sus4 a
  d b:m
  e1:m
  a2 a:7
}

text = \markup { hello }

\score {
  <<
    \new ChordNames \refrainChords
    \new Staff \new Voice = "soprano" { \refrain }
    \new Lyrics \lyricsto "soprano" \refrainText
  >>
  \layout { }
  \midi { }
}
\score {
  <<
    \new ChordNames \verseChords
    \new Staff \new Voice = "soprano" { \verse }
    \new Lyrics \lyricsto "soprano" \verseText
  >>
  \layout { }
  \midi { }
}

verseSpace = \markup { \vspace #1.2 }

\markup {
  \hspace #7.2
  \larger {
    \vspace #2.2
    \column {
      \line {
        \column { \bold 2. }
        \column {
          \line { Ať Tě chválí, můj Pane, sestra Luna
                  a hvězdy, jež svítí nám na zem. }
          \line { Jsou krásné, stvořil jsi je na nebi jasné.\hspace #-5.5 {\musicglyph #"ties.lyric.default"} }
        }
      }
      \verseSpace
      \line {
        \column { \bold 3. }
        \column {
          \line { Ať Tě chválí, můj Pane, bratr vítr,
                  oblaka, vzduch, jasná obloha }
          \line { i každé počasí, jímž živíš své tvory.\hspace #-5 {\musicglyph #"ties.lyric.default"} }
        }
      }
      \verseSpace
      \line {
        \column { \bold 4. }
        \column {
          \line { Ať Tě chválí, můj Pane, sestra voda,
                  která je velmi užitečná. }
          \line { Je čistá, pokorná a vzácná\hspace #-6 {\musicglyph #"ties.lyric.default"} \hspace #5.5 lidem všem. }
        }
      }
      \verseSpace
      \line {
        \column { \bold 5. }
        \column {
          \line { Ať Tě chválí, můj Pane, bratr oheň,
                  kterým Ty osvětluješ noci. }
          \line { Je pěkný, příjemný a mocný\hspace #-5.5 {\musicglyph #"ties.lyric.default"}\hspace #4 , silný.\hspace #-5.5 {\musicglyph #"ties.lyric.default"} }
        }
      }
      \verseSpace
      \line {
        \column { \bold 6. }
        \column {
          \line { Ať Tě chválí, můj Pane, matka Země,
                  živí nás a dobře slouží nám. }
          \line { A dává mnohé plody s pestrými květy.\hspace #-5 {\musicglyph #"ties.lyric.default"} }
        }
      }
      \verseSpace
      \line {
        \column { \bold 7. }
        \column {
          \line { Ať Tě chválí, můj Pane, sestřička smrt,
                  člověk jí nemůže uniknout. }
          \line { Ať zemřem ve spojení s Tvou svatou vůlí.\hspace #-4 {\musicglyph #"ties.lyric.default"} }
        }
      }
      \verseSpace
      \line {
        \column { \bold 8. }
        \column {
          \line { Ať Tě chválí, můj Pane, všichni lidé,
                  děkují a dobrořečí Ti. }
          \line { A slouží Tobě, Pane, s velikou pokorou. }
        }
      }
    }
  }
}