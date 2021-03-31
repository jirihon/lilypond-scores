\version "2.16.2"

\header {
  title = "Výčitky"
  composer = "P. Josef Olejník, doplněny verše"
  tagline = "2021 ŘKF Opava–Jaktař"
}

%#(set-global-staff-size 19)

\paper {
  system-system-spacing #'minimum-distance = #10
  system-system-spacing #'stretchability = #0
  markup-system-spacing #'stretchability = #0
  
  top-margin = 1.2\cm
  left-margin = 2\cm
  right-margin = 1.7\cm
  bottom-margin = 1.2\cm
  indent = 0\cm
  %ragged-last = ##t
}

global = {
  \time 1000/8
  \key es \major
  \override Staff.TimeSignature #'stencil = ##f % hide time signature
  \override Staff.BarNumber #'stencil = ##f % hide bar numbers
}

doubleVoice = \markup { \box { \smaller "1 + 2" } }
voiceOne = \markup { \box { \smaller "1" } }
voiceTwo = \markup { \box { \smaller "2" } }

sopranoRef = \relative c'' {
  \global
  \mark \doubleVoice
  r8 g f[( es]) es4 es8 f[ g] as[ f] f4 \breathe
  g8[ bes] bes[ as g] f[( es]) g[( as f]) f4 r8
  es[ f] f[( g]) g4
  \bar "||"
}

textRef = \lyricmode {
  Li -- de můj, co jsem ti u -- či -- nil?
  Ne -- bo "v čem" jsem tě za -- rmou -- til?
  Od -- po -- věz mi!
}

sopranoBridge = \relative c'' {
  \global
  \mark \voiceOne
  g8[ f es] es[( f)] f f4 \bar "||"
  \mark \voiceTwo
  r8 g f[( es)] es[( f)] f4 r8 \bar "||"
  \mark \voiceOne
  g8[ f es] es[( f)] f f4 \bar "||"
  \mark \voiceTwo
  r8 g f[( es)] es[( f)] f4 r8 \bar "||"
  \mark \voiceOne
  g8[ f es] as[ as as] as4--( g--)
  bes8[ es,] as[ g] f[(es f)] f4 \bar "||"
  \mark \voiceTwo
  r8 g8 f[( es)] as[ as as] as4--( g--)
  bes8[ es,] as[ g] f[(es f)] f4 \bar "||"
  
}

textOne = \override Score . LyricText #'font-series = #'regular
textTwo = \override Score . LyricText #'font-series = #'bold

textBridge = \lyricmode {
  \textOne
  Há -- gi -- os o Thé -- os.
  \textTwo
  Sva -- tý Bo -- že!
  \textOne
  Há -- gi -- os I -- schy -- rós.
  \textTwo
  Sva -- tý Sil -- ný!
  \textOne
  Há -- gi -- os A -- thá -- na -- tos,
  e -- lé -- i -- son hy -- más.
  \textTwo
  Sva -- tý Ne -- smr -- tel -- ný,
  smi -- luj se nad ná -- mi!
}

sopranoVerse = \relative c'' {
  \global
  \mark \doubleVoice
  g8[ as] bes\breve g8[ bes] c[ bes] bes4 \bar "|" \break
  g8 bes\breve as8[ g] f[ es] g[ as f] f4 \bar "||"
  g8[ f es]
  
}

tie = \markup { \hspace #-0.1 \raise #1.2 \scale #'(1 . -1) \musicglyph #"ties.lyric.default" }
star = \markup { \lower #0.9 \fontsize #4 "*" }
leftAlign = \once \override LyricText #'self-alignment-X = #LEFT

textVerseA = \lyricmode {
  \set stanza = "1." Já jsem \leftAlign
  "pro tebe stíhal ranami Egypt + a pobil jeho" pr -- vo -- ro -- ze -- né
  \set stanza = "1." a \leftAlign
  "tys mě za to zbičo" -- val a vy -- dal  \markup { na \tie }  _ _ smrt.
}
textVerseB = \lyricmode {
  \set stanza = "2." Já jsem \leftAlign
  "tě vyrval z rukou faraónových a vysvobo" -- dil tě "z E" -- gy -- pta
  \set stanza = "2." a \leftAlign
  "tys mě vydal do" ru -- kou ve -- le -- \markup { ra \tie }  -- _ _ dy.
  \set stanza = \star Há -- gi -- "os..."
}
textVerseC = \lyricmode {
  \set stanza = "3." Já jsem \leftAlign
  "ti otevřel" ces -- tu \markup { mo \tie } -- _ řem
  \set stanza = "3." a \leftAlign
  "tys o" -- te -- vřel ko -- pím \markup { mou \tie } _ _ hruď.
}
textVerseD = \lyricmode {
  \set stanza = "4." Já jsem \leftAlign
  "tě v oblakovém sloupu" ve -- dl \markup { pou \tie } -- _ ští
  \set stanza = "4." a \leftAlign
  "tys mě" vle -- kl před Pi -- \markup { lá \tie } -- _ tův soud.
  \set stanza = \star Há -- gi -- "os..."
}
textVerseE = \lyricmode {
  \set stanza = "5." Já jsem \leftAlign
  "tě vodil jako pastýř a sy" -- til tě \markup { ma \tie } -- _ nou
  \set stanza = "5." a \leftAlign
  "tys mě tloukl" a na -- sy -- til \markup { po \tie } -- _ tu -- pou.
}
textVerseF = \lyricmode {
  \set stanza = "6." Já jsem \leftAlign
  "ti ve skále otevřel pramen" vo -- dy \markup { ži \tie } -- _ vé
  \set stanza = "6." a \leftAlign
  "tys hasil mou ží" -- zeň žlu -- čí a \markup { o \tie } -- _ _ ctem.
  \set stanza = \star Há -- gi -- "os..."
}
textVerseG = \lyricmode {
  \set stanza = "7." Já jsem \leftAlign
  "kvůli tobě rozdrtil krále" ze -- mě \markup { Ká \tie } -- _ naán
  \set stanza = "7." a \leftAlign
  "tys" ho -- lí roz -- bil \markup { mou \tie } _ _ tvář.
}
textVerseH = \lyricmode {
  \set stanza = "8." Já jsem \leftAlign
  "tě povýšil" na lid krá -- lov -- ský
  \set stanza = "8." a \leftAlign
  "tys mě koruno" -- val ko -- ru -- nou \markup { "z tr" \tie } -- _ _ ní.
}
textVerseI = \lyricmode {
  \set stanza = "9." \markup { \lower #2 " " \hspace #-1.3 Já } jsem \leftAlign
  "tě proslavil svými veli" -- ký -- mi \markup { sku \tie } -- _ tky
  \set stanza = "9." \markup { \lower #4 " " \hspace #-1.3 a } \leftAlign
  "tys mě" za to při -- byl \markup { na \tie } _ _ kříž.
  \set stanza = \star Há -- gi -- "os..."
}


\score {
   <<
    \new Voice = "soprano" { \sopranoRef }
    \new Lyrics \lyricsto "soprano" \textRef
   >>
  \layout { }
  \midi { }
}

lyricsPadding = \with { \override VerticalAxisGroup.nonstaff-nonstaff-spacing = #'((padding . 3)) }

\score {
   <<
    \new Voice = "soprano" { \sopranoVerse }
    \new Lyrics \lyricsto "soprano" \textVerseA
    \new Lyrics \lyricsPadding \lyricsto "soprano" \textVerseB
    \new Lyrics \lyricsto "soprano" \textVerseC
    \new Lyrics \lyricsPadding \lyricsto "soprano" \textVerseD
    \new Lyrics \lyricsto "soprano" \textVerseE
    \new Lyrics \lyricsPadding \lyricsto "soprano" \textVerseF
    \new Lyrics \lyricsto "soprano" \textVerseG
    \new Lyrics \lyricsto "soprano" \textVerseH
    \new Lyrics \lyricsto "soprano" \textVerseI
   >>
   \layout { }
  \midi { }
}

\score {
   <<
    \new Staff  \with { instrumentName = \markup { \hspace #-1 \fontsize #10 "*" } }
    \new Voice = "soprano" { \sopranoBridge }
    \new Lyrics \lyricsto "soprano" \textBridge
   >>
  \layout {
    indent = 1\cm
    ragged-last = ##t
  }
  \midi { }
}