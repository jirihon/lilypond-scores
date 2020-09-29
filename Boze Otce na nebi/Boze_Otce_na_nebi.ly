
\version "2.18.2"
% automatically converted by musicxml2ly from /home/xhonji01/Noty/Boze Otce na nebi/Bože_Otče_na_nebi.musicxml

\header {
  title = \markup
  \override #'(font-name . "Alegreya Sans Black")
  \override #'(font-size . 5) "Bože Otče na nebi"
  composer = "Zuzana Nováková, Václav Renč"
  tagline = "2020 ŘKF Opava–Jaktař"
}


\paper {
  system-system-spacing #'minimum-distance = #19
  
  top-margin = 1\cm
  left-margin = 1.8\cm
  right-margin = 1.5\cm
  bottom-margin = 1\cm
  indent = 0\cm
  ragged-last = ##f
}

PartPOneVoiceOne =  \relative g' {
  \clef "treble" \key g \major \numericTimeSignature\time 4/4 | % 1
  b4\rest g8 a8 b8 c8 b8 a8 | % 2
  g4 b4\rest b2\rest | \break % 3
  b4\rest a8 b8 c8 d8 c8 b8 | % 4
  a4 b4\rest b2\rest | % 5
  b4\rest b8 d8 b4 a4 | % 6
  g4 fis4 e4 b'4\rest | % 7
  b4\rest d,8 g8 a8 g8 a8 b8 | % 8
  b4 b4\rest b2\rest | % 9
  b4\rest b8 d8 b4 a4 | \barNumberCheck #10
  g4 fis4 e4 b'4\rest | % 11
  b4\rest d,8 g8 a8 g8 a8 b8 | % 12
  g4 b4\rest b2\rest \bar "|."
}

PartPOneVoiceOneChords =  \chordmode {
  | % 1
  g4:5 s8 s8 d8:5 s8 s8 s8 | % 2
  e4:m5 s4 s2 | % 3
  a4:m5 s8 s8 s8 s8 s8 s8 | % 4
  d4:5 s4 s2 | % 5
  g4:5 s8 s8 s4 s4 | % 6
  e4:m5 s4 c4:5 s4 | % 7
  g4:5 s8 s8 d8:5 s8 s8 s8 | % 8
  g4:5 s4 d2:5 | % 9
  g4:5 s8 s8 s4 s4 | \barNumberCheck #10
  e4:m5 s4 c4:5 s4 | % 11
  g4:5 s8 s8 d8:5 s8 s8 s8 | % 12
  g4:5 s4 d2:5 \bar "|."
}

PartPOneVoiceOneLyricsOne =  \lyricmode {
  \set stanza = "1." "Bo" -- "že" Ot -- "če" na
  ne -- "bi," "kaž" -- "dý" tvor "tě" ve -- le -- "bí," ce -- "lá" ze
  -- "mě" "zpí" -- "vá" "si," "žes" ji stvo -- "řil" do "krá" -- "sy,"
  ce -- "lá" ze -- "mě" "zpí" -- "vá" "si," "žes" ji stvo -- "řil" do
  "krá" -- "sy."
}
PartPOneVoiceOneLyricsTwo =  \lyricmode {
  \set stanza = "2." "A" ten "náš" "svět," Bo --
  "že" "chraň," "drž" nad "ním" svou moc -- nou "dlaň" i na -- de
  "mnou," kte -- "rý" "v něm," chci "zů" -- stat "tvým" "dí" -- "tě"
  -- "tem," i na -- de "mnou," kte -- "rý" "v něm," chci "zů" -- stat
  "tvým" "dí" -- "tě" -- "tem."
}

PartPOneVoiceTwo =  \relative g' {
  \clef "treble" \key g \major \numericTimeSignature\time 4/4 s4 g8 e8
  fis8 fis8 fis8 fis8 | % 2
  g4 s1 e8 e8 e8 e8 a8 g8 | % 4
  fis4 s1 d8 d8 dis4 dis4 | % 6
  e4 e4 e4 s2 d8 d8 d8 d8 d8 d8 | % 8
  d4 s1 d8 d8 dis4 dis4 | \barNumberCheck #10
  e4 e4 e4 s2 d8 d8 d8 d8 d8 d8 | % 12
  d4 s2. \bar "|."
}

PartPTwoVoiceOne =  \relative b {
  \clef "bass" \key g \major \numericTimeSignature\time 4/4 b2 a2 | % 2
  b8 a8 g8 fis8 g8 fis8 g8 a8 | % 3
  c2 b2 | % 4
  a8 g8 fis8 e8 d8 fis8 g8 a8 | % 5
  b2 a4 a4 | % 6
  b4 b4 c4 r4 | % 7
  g2 fis8 g8 fis8 fis8 | % 8
  g4 d4\rest d2\rest | % 9
  d4\rest b'8 b8 a4 a4 | \barNumberCheck #10
  b4 b4 c4 r4 | % 11
  g2 fis8 g8 fis8 fis8 | % 12
  g4 d4\rest d2\rest \bar "|."
}

PartPTwoVoiceTwo =  \relative g {
  \clef "bass" \key g \major \numericTimeSignature\time 4/4 g2 fis2 | % 2
  e8 fis8 e8 d8 e4 e8 fis8 | % 3
  a2 g2 | % 4
  fis8 e8 d8 e8 d4 e8 fis8 | % 5
  g2 fis4 fis4 | % 6
  g4 b4 e,4 s4 | % 7
  d2 d8 e8 d8 d8 | % 8
  d4 s1 g8 g8 fis4 fis4 | \barNumberCheck #10
  g4 b4 e,4 s4 | % 11
  d2 d8 e8 d8 d8 | % 12
  d4 s2. \bar "|."
}

PartPTwoVoiceTwoLyricsOne =  \lyricmode {
  \set stanza = "1." "Á" -- "á," Bo -- "že" Ot --
  "če" na ne -- "bi," "Á" -- "á," "kaž" -- "dý" tvor "tě" ve -- le --
  "bí," Ce ze -- "mě" "zpí" -- "vá" "si," "že" stvo -- "řil" do "krá"
  -- "sy," ce -- "lá" ze -- "mě" "zpí" -- "vá" "si," "že" stvo --
  "řil" do "krá" -- "sy."
}
PartPTwoVoiceTwoLyricsTwo =  \lyricmode {
  \set stanza = "2." "Á" -- "á," a ten "náš"
  "svět," Bo -- "že" "chraň," "Á" -- "á," "drž" nad "ním" svou moc --
  nou "dlaň," Na -- de "mnou," kte -- "rý" "v něm," chci "zů" -- stat
  "dí" -- "tě" -- "tem," I na -- de "mnou," kte -- "rý" "v něm," chci
  "zů" -- stat "dí" -- "tě" -- "tem."
}

% The score definition
\score {
  <<
    \new ChoirStaff <<
      \new ChordNames = "PartPOneVoiceOneChords" \PartPOneVoiceOneChords
      \new Staff <<
        \new Voice = "PartPOneVoiceOne" { \voiceOne \PartPOneVoiceOne }
        \new Voice = "PartPOneVoiceTwo" { \voiceTwo \PartPOneVoiceTwo }
      >>
      \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsOne
      \new Lyrics \lyricsto "PartPOneVoiceOne" \PartPOneVoiceOneLyricsTwo
      \new Staff <<
        \new Voice = "PartPTwoVoiceOne" { \voiceOne \PartPTwoVoiceOne }
        \new Voice = "PartPTwoVoiceTwo" { \voiceTwo \PartPTwoVoiceTwo }
      >>
      \new Lyrics \lyricsto "PartPTwoVoiceTwo" \PartPTwoVoiceTwoLyricsOne
      \new Lyrics \lyricsto "PartPTwoVoiceTwo" \PartPTwoVoiceTwoLyricsTwo
    >>
  >>
  \layout {}
  \midi {}
}

