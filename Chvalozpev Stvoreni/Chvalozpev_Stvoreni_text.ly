\version "2.16.2"

\header {
  tagline = ""
}

%#(set-global-staff-size 19)

\paper {
  %system-system-spacing #'minimum-distance = #15
  
  top-margin = 0.8\cm
  left-margin = 2.5\cm
  right-margin = 1.5\cm
  bottom-margin = 0\cm
  indent = 0\cm
  %ragged-last = ##t
  %print-all-headers = ##t
  markup-system-spacing #'minimum-distance = #13
}

verseSpace = \markup { \vspace #0.5 }

verse = \markup {
  \larger {
    \column {
      
      \line { 
        \override #'(font-name . "Alegreya Sans Black")
        \override #'(font-size . 4) 
        { Chvalozpěv stvoření }
      }
      \verseSpace
      \line { Nejvyšší, všemocný, dobrý Pane,
              Tobě sláva,\hspace #-5 {\musicglyph #"ties.lyric.default"}\hspace #4.3 chvála, čest, dobrořečení. }
      \line { Patří Tobě jedinému, Nejvyšší,
              žádný člověk není hoden vyslovit Tvé jméno. }
      \verseSpace
      \line {
        \column { \bold 1. }
        \column {
          \line { Ať Tě chválí, můj Pane, bratr Slunce,
                  on je den a dává světlo nám. }
          \line { Je krásný, září leskem, vždyť je tvým obrazem. }
        }
      }
      \verseSpace
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

\verse
\markup { \vspace #3.5 }
\verse
