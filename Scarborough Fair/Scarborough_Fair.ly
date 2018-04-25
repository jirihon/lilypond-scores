\version "2.16.2"

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 7)
  "Scarborough Fair"
  arranger = "Arr. Bill Reichenbach"
  tagline = "2018"
}

\paper {
  %system-system-spacing #'minimum-distance = #22
  top-margin = 1.5\cm
  left-margin = 1.2\cm
  right-margin = 1.2\cm
  bottom-margin = 2\cm
  indent = 0\cm
}

#(set-global-staff-size 19)

global= {
  \time 3/4
  \key f \major
  \tempo "Moderato"
  \clef bass
}

voiceOne = \new Voice \relative c'' {
  \clef treble
  g2(\pp g4
  d'2 d4
  a4. bes8 a4
  g2.~
  g4) \breathe d'4( f
  g2 f4
  d e c
  d2.\mp\<
  d2.\mf
  g2) g4
  f2 d4
  d\> c bes\p
  a2.~(
  a2.
  g2)\> d'4\pp
  c2 bes4
  a g f
  g2.~\<
  g2.\! \bar "||"
  \mark \markup{ \circle \pad-markup #1 A }
  g8(\pp a bes) g( bes c)
  d(\< e f) d(\mf e f)
  e(\> d e f e\p c)
  d( e f) d( e f)
  d( e f) e( d c)
  d2\mf d4
  f\< g g
  a2.~(\f\>
  a2.\p^\markup { \italic rit. }
  g4) r^\markup { \italic { a tempo } } r
  r2.
  r2.
  c,2.~\>
  c2.\fermata
  \breathe
  d2(\! d4
  f2.
  d2.~
  d4) c( bes8 a) \bar "||"
  \mark \markup{ \circle \pad-markup #1 B }
  g2\f^\markup { \italic { slightly faster } } g4
  d'2 d4
  a4.\> bes8 a4
  g2.~\mf
  g4 d'\< f
  g2\f f4
  d\< e c
  d2.(\ff
  g2) g4
  f2\> d4
  d\mp c bes
  a2.(\>
  g2)\pp d'4
  c2 bes4
  a\> g f
  g2.\fermata\ppp
  \bar "|."
}

voiceTwo = \new Voice \relative c'' {
  \clef treble
  g2(\pp g4
  d'2 d4
  a4. bes8 a4
  g2.~
  g4) r r
  r2.
  r2.
  r4 a8->(\mp\< bes a4)
  r4\! a8->(\mf bes a4
  d2) d4
  d2 bes4
  f2.\>
  r4\! f8->(\p g f4)
  r4\! f8->(\p g f4
  d2)\> g4\pp
  f2 f4
  d2.
  d2.~\<
  d2.\! \bar "||"
  d8(\pp e f) d( e f)
  a(\< c d) a(\mf c d)
  c(\> b c d c\p a)
  g( a bes) g( a bes)
  g( a bes) a( g f)
  bes2\mf bes4
  bes\< c d
  e2.~(\f\>
  e2.\p
  d8) c( d e f d
  c d c bes a4)
  a g f
  g2.~\>
  g2.\fermata \breathe
  g2(\! g4
  c2.
  a2.
  g2.) \bar "||"
  d2\f d4
  bes'2 bes4
  f2\> f4
  d2.\mf
  d'4 a\< f
  es2\f e4
  f4\< g g
  g\ff fis2(
  d') e4
  d2\> bes4
  f2.\mp
  f2(\> e4
  d2.\pp
  f2.
  f4\> g f)
  d2.\fermata\ppp
  
}

voiceThree = \new Voice \relative c'' {
  \clef treble
  g2(\pp g4
  d'2 d4
  a4. bes8 a4
  g2.~
  g4) r r
  r2.
  r2.
  r8 g8~->\mp\< g4. g8->
  r8 g8~->\mf g4. g8->(
  c2) bes4
  a4. g8 f4
  f\> e d
  r8\! c8~-> c4. c8->
  r8 c8~-> c4. c8->(
  d2)\> d4\pp
  e2 d4
  a bes c
  d2.~\<
  d8(\! e f) d( e f) \bar "||"
  d2(\mp d4
  bes'2 bes4
  e,4. f8 e4
  g2.~
  g4) f a
  bes2\mf a4
  f\< g e
  r8 a8(\f\> g a bes a
  g\mp a bes c bes a
  g4)\p r4 r
  r2.
  r2.
  e2.~\>
  e2.\fermata \breathe
  d2(\! a'4
  g2 f4
  e d c
  d2.) \bar "||"
  d2\f g4
  f2 f4
  d2\> d4
  g8(\mf a bes c d e
  f4) d\< c
  bes2\f c4
  bes\< c c8 b
  a2.(\ff
  bes2) c4
  a4.( g8 f4)
  f\mp e d
  c2.(\>
  d2.\pp
  c2.
  c4\> d d)
  d2.\fermata\ppp
}

voiceFour = \new Voice \relative c {
  g2(\pp g4
  d'2 d4
  a4. bes8 a4
  g2.~
  g4) \breathe bes(\p a
  g2 a4
  bes c2
  d2.->)\mp\<
  d2.->(\mf
  g2) g,8 a
  bes2 bes4
  bes\> a g
  f2.->\p
  f2.->(
  g2)\> g4\pp
  a2 bes4
  f2.
  g8(\< a bes) g( a bes)
  g8(\! a bes) g( a bes)
  g2(\f^\markup{ \italic solo } g4
  d'2 d4
  a4. bes8 a4
  g2.~
  g4) d' f
  g2\mf f4
  d\< e c
  d2.~\f\>
  d2.\!
  g2\p g4
  f2 d4
  d c bes
  a2.~\>
  a2.\fermata \breathe
  g2(\! d'4
  c2 bes4
  a g f
  g2.) \bar "||"
  g2\f g8 a
  bes2 bes8 c
  d2\> d,4
  g2.~\mf
  g4 bes\< a
  g2\f a4
  c\< c e
  d\ff d,2(
  g) a4
  bes2\> bes4
  bes\mp a g
  f2.(\>
  g2.)\pp
  f2( g4
  a\> bes8 c d4
  g2.)\fermata\ppp
}

\score {
  \new StaffGroup <<
    \new Staff << \global \voiceOne >>
    \new Staff << \global \voiceTwo >>
    \new Staff << \global \voiceThree >>
    \new Staff << \global \voiceFour >>
  >>
  \layout { }
  \midi { }
}

