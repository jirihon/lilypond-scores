\version "2.16.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 5)
  "Oči všech se upírají"
  subtitle = \markup
  \override #'(font-name . "Alegreya Sans")
  \override #'(font-size . 1)
  "Podle žalmu 104"
  composer = "Petr Eben"
  %piece = "Poprvé v 1. taktu zazpívat unisono melodii sopránu, pak už vždy čtyřhlas."
  tagline = "2018 ŘKF Opava–Jaktař"
}

#(set-global-staff-size 19)

\paper {
  system-system-spacing #'minimum-distance = #13
  
  top-margin = 1\cm
  left-margin = 1.8\cm
  right-margin = 1.5\cm
  bottom-margin = 1\cm
  indent = 0\cm
  ragged-last = ##f
}

global = {
  \override Staff.TimeSignature #'stencil = ##f % hide time signature
  \time 2/2
  \tempo "Allegretto tranquillo" 2 = 46
  \key des \major
}

soprano = \relative c' {
  \global
  des4\p f as bes
  ges\< f es es
  f\mp\< as8 as bes4 des
  c2\> f,
  es4(\mp ges) bes c
  as\< ges f f
  ges(\mf\< bes) des( es)
  c2. as4\f
  des des es f
  des des c( des)
  bes bes c des
  es2 f4 es
  des\> c f, ges
  as1\mf\>
  des,\p
  \bar "|."
}

alto = \relative c' {
  \global
  des4 f des2
  es4 f es es
  f es8 es f4 g
  as( g) f2
  es4 ges es2
  f4 ges f f
  ges2 f4( es)
  es2( f4) ges
  as2 a
  bes f
  ges as4 as
  ges( bes) as( ges)
  f2 des
  des( c)
  as1
}

tenor = \relative c {
  \global
  f2\p c'4 bes
  bes2\< des4 c
  c2\mp\< des
  c4\> bes c2
  bes\mp des4 c
  c2\< es4 des
  des2\mf\< bes
  c2. es4\f
  f2 es
  f des
  es des4 des
  des2 c
  des\> c4( bes)
  bes2(\mf\> es,)
  f1\p
}

bass = \relative c {
  \global
  des2 f4 f
  des2 ges4 ges
  f2 bes
  f2.( as4)
  ges2 as
  f bes
  es, ges
  as2. c4
  des2 c
  bes as
  ges f4 f
  es2 as,
  bes as4( ges)
  f( ges as2)
  des1
}

verseOneSoprano = \lyricmode {
  \set stanza = "1."
  O -- či všech se u -- pí -- ra -- jí
  "s dů" -- vě -- rou "k To" -- bě, Pa -- ne,
  a ty jim dá -- váš po -- krm "v pra" -- vý čas.
  Ty o -- tví -- ráš svou ru -- ku a na -- pl -- ňu -- ješ
  kaž -- dé -- ho tvo -- ra po -- že -- hná -- ním.
}

verseTwoSoprano = \lyricmode {
  \set stanza = "2."
  Slá -- va bu -- díž Ho -- spo -- di -- nu,
  slá -- va mu buď na vě -- ky, Ho -- spo -- din
  roz -- ve -- sel se "v skut" -- cích svých.
  Já zpí -- va -- ti mu bu -- du, já zpí -- vat bud -- du
  chvá -- ly a žal -- my Bo -- hu své -- mu.
}

verseOneAlto = \lyricmode {
  \override LyricText #'font-shape = #'italic
  \skip 1 \skip 1 se
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  a ty jim
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
  na -- pl -- ňu -- ješ kaž -- dé -- ho tvo -- ra po -- že -- hná -- ním.
}

verseTwoAlto = \lyricmode {
  \override LyricText #'font-shape = #'italic
  \skip 1 \skip 1 buď
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1
  Pa -- ne náš
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
  zpí -- vat bu -- du chvá -- ly a žal -- my Bo -- hu své -- mu.
}

verseOneTenor = \lyricmode {
  \set stanza = "1."
  O -- či se u -- pí -- ra -- jí "k To" -- bě Pa -- ne,
  a Ty jim dáš po -- krm "v pra" -- vý čas.
  Ty na -- pl -- ňu -- ješ ka -- ždé -- ho tvo -- ra po -- že -- hná -- ním.
}

verseTwoTenor = \lyricmode {
  \set stanza = "2."
  Slá -- va buď, slá -- va buď na vě -- ky, vě -- ky,
  Ho -- spo -- din, ve -- sel se "v skut" -- cích svých.
  Já zpí -- vat bu -- du chvá -- ly a žal -- my Bo -- hu své -- mu.
}

verseOneBass = \lyricmode {
  \override LyricText #'font-shape = #'italic
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
  bě, __ dá -- váš po -- krm
}

verseTwoBass = \lyricmode {
  \override LyricText #'font-shape = #'italic
  \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 \skip 1 
  ky, __ Pán se ve -- sel
}

\score {
  \new ChoirStaff <<
    \new Staff <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \lyricsto "soprano" \verseOneSoprano
    \new Lyrics \lyricsto "alto" \verseOneAlto
    \new Lyrics \lyricsto "soprano" \verseTwoSoprano
    \new Lyrics \lyricsto "alto" \verseTwoAlto
    \new Staff <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \lyricsto "tenor" \verseOneTenor
    \new Lyrics \lyricsto "bass" \verseOneBass
    \new Lyrics \lyricsto "tenor" \verseTwoTenor
    \new Lyrics \lyricsto "bass" \verseTwoBass
  >>
  \layout {
    \context {
      \Score \override SpacingSpanner #'base-shortest-duration = #(ly:make-moment 1 8)
      %\override LyricText #'font-size = #1  
    }
  }
  \midi { }
}
