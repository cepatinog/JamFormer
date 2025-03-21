\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Everywhere Calypso"
  composer = "Sonny Rollins"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
    \override Rest #'direction = #'0
    \override MultiMeasureRest #'staff-position = #0
}
\score
{
<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | r1 
      | c1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1:7 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | r1|
      }
      }

    \new Staff
    <<
    \transpose c' c'

    {
      \global
  		%\override Score.MetronomeMark #'transparent = ##t
  		%\override Score.MetronomeMark #'stencil = ##f
  		
  		\override HorizontalBracket #'direction = #UP
  		\override HorizontalBracket #'bracket-flare = #'(0 . 0)
  		
  		\override TextSpanner #'dash-fraction = #1.0
  		\override TextSpanner #'bound-details #'left #'text = \markup{ \concat{\draw-line #'(0 . -1.0) \draw-line #'(1.0 . 0) }}
  		\override TextSpanner #'bound-details #'right #'text = \markup{ \concat{ \draw-line #'(1.0 . 0) \draw-line #'(0 . -1.0) }}
          \set Score.markFormatter = #format-mark-box-numbers


      \tempo 4 = 193
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8 g8 a4 a4 
      \bar "||" \mark \default a4 r4 r8 g4 d'8 
      | d'8 c'4 c'8 c'4 r4 
      | r8 b4 b8 b8 a4 a8 
      | a8 g8 fis8 a8 g8 g8 e8 g8 
      | cis4. e8 \tuplet 3/2 {g4 a8~} a8 g8 
      | f8 a4 d'8~ d'16 f'8 e'16~ e'8 d'8 
      | \tuplet 3/2 {c'4 b8~} b8 a8 g4 f8 e8 
      | r4 r8 g8 c'8 e'8 g'8 a'8 
      \bar "||" \mark \default g'8 e'8 \tuplet 3/2 {c'4 g8} e8 g8 c'8 e'8 
      | f'8 c'8 f8 c8 f4 r4 
      | r8 a8 g8 e8 f4. g8 
      | e8 c8 e8 g8 c'8 e'8 \tuplet 3/2 {g'8 fis8 g8} 
      | ais4. fis8 a8 g8 e8 cis8 
      | d4. f8 a8 d'8 f'4~^\markup{\left-align \small vib} 
      | f'8 r8 r8 d'8 b8 a8 g8 f8 
      | e8 r8 r8 g4 e8 a8 e8 
      \bar "||" \mark \default g4.^\markup{\left-align \small vib} e8 g4^\markup{\left-align \small vib} c'8 r8 
      | r8 g8 e8 g8 \tuplet 6/4 {c'8. e'8 g'16~} g'8 d'8 
      | f'4. d'4 b8 b8 c'8~ 
      | c'8 g8 e8 g8 c'8 e'8 g'8 a'8 
      | e'4.^\markup{\left-align \small vib} d'8 cis'8 bes8 a8 g8 
      | f4 a8 d4 g8 b,4 
      | r4 r8 g8 b,8 c8 d8 e8 
      | c4 e8 g8 f8 g8 a8. fis16 
      \bar "||" \mark \default c'4 g8 f8 e'8 c'8 g8 c8 
      | f8 c8 a2^\markup{\left-align \small vib} f8 r8 
      | r8 c8 g8 c8 f4^\markup{\left-align \small vib} c4 
      | g4..^\markup{\left-align \small vib} e16 g8 c'8 e'8 d'8 
      | cis'4 cis'8. a16~ a8 g8 f8 e8 
      | \tuplet 3/2 {g4 e8~} e8 f4 e8 d4 
      | r4 r8 f4 d8 b,8 c8~^\markup{\left-align \small vib} 
      | c4. e8 g8. c'16 r4 
      \bar "||" \mark \default r4 r8 c'8 e8 g8 c'8 e'8 
      | g'8 c''8 a'8 f'8 c'4 f'8 a'8 
      | g'16 a'16 g'8 e'8 g'8 f'8 d'8 b8 a8 
      | \tuplet 3/2 {g8 a8 g8} fis8 a8 \tuplet 3/2 {g8 a8 g8~^\markup{\left-align \small vib}} g8 r8 
      | r4 \tuplet 6/4 {r4 r16 a16~} a8 g4 f8~^\markup{\left-align \small vib} 
      | f4. a8 d'8 f'8 a'8 fis'16 g'16~ 
      | g'8 e'8 c'8 g8 c'8 d'8 b8 g8 
      | c'4 g8 e8 a8 f8 d8 g8 
      \bar "||" \mark \default e8 c8 \tuplet 3/2 {e4 g8} c'8 e'8 g'8 e'8 
      | f'4.^\markup{\left-align \small vib} c'8 g8 c'8 f4 
      | r2 g2~^\markup{\left-align \small vib} 
      | g2~ g8 b8 a8 g8 
      | a1~^\markup{\left-align \small vib} 
      | a8 a8 cis'8 d'8 e'8 f'8 d'8 c'8 
      | b8 a8 g8 e8 f8 d8 b,8 c8 
      | c4.^\markup{\left-align \small vib} e8 g8 g8 g8 g8 
      \bar "||" \mark \default g4 g8 g4 g8 a4~ 
      | a4 r2 a4 
      | f8 f8 f8. f16 f8 f8 g4~ 
      | g2~ \tuplet 6/4 {g16 g4 g16~} g16 g8 e16~ 
      | e8 e8 e8 a4 g8 f4~ 
      | f8 r8 r4 r16 f8 d16~ d8 c8 
      | b,8 b,8 \tuplet 3/2 {b,4 d8~} d8 b,8 c4~ 
      | c8 r8 r2. 
      \bar "||" \mark \default r4 \tuplet 3/2 {e'4 e'8~} e'8 e'8 \tuplet 3/2 {e'4 f'8~} 
      | f'8 c'8 g2.~ 
      | g4. b8 d'8 f'8 a'8 fis'8 
      | \tuplet 6/4 {g'8. e'8 c'16~} \tuplet 6/4 {c'8 e'8. d'16~} d'8 c'8 g8 e8 
      | cis8 e8 g8 ais8 e8 g8 cis8 e8 
      | d8 e8 f8 g4 a8 f8 d8 
      | \tuplet 6/4 {c4~ c16 d16~} d8 b,4 c8 d8 e8 
      | c4 e8 g8 c'8 e'8 g'4 
      \bar "||" \mark \default r2. r8 g'8~ 
      | g'8 b'8 c''8 b'8 gis'8\glissando  a'8 g'8\glissando  aes'8 
      | f'8 e'4 d'4 c'8 b8 a8~ 
      | a8 g8 e4 g4 a4 
      | cis'8 e'8 d'8 cis'4 d'8 \tuplet 3/2 {e'4 f'8~} 
      | f'8 d'4 a4 d'8 b8 a8 
      | g8. g16~ g8 f4 d4 c8 
      | e8 g8 c'8 e'8~ \tuplet 6/4 {e'8 g'8. a'16~} a'4~ 
      \bar "||" \mark \default a'4. r8 r2 
      | \tuplet 6/4 {g'16 a'16 g'8. f'16~} f'8 a'8 g'16 a'16 g'8 e'8 a'8 
      | g'16 a'16 g'8 d'8 a'8 g'16 a'16 g'8 c'8 a'8 
      | \tuplet 3/2 {g'8 a'8 g'8} c'8 a'8 \tuplet 3/2 {g'8 a'8 g'8} c'8 a'8 
      | a'4 e'8 a'8 \tuplet 3/2 {e'8 g'8 e'8} cis'8 e'8~ 
      | e'16 e'16 g'16 e'16 d'8 e'8 \tuplet 3/2 {f'8 g'8 f'8} d'8 f'8 
      | \tuplet 3/2 {d'8 d'8 d'8} b8 d'8 \tuplet 3/2 {a8 b8 a8} r4 
      | r4 r8 e'8 g'8 a'8 g'8 a'8 
      \bar "||" \mark \default g'16 a'16 g'8 e'8 c'8 g8 c'8 e'8 g'8 
      | a'8 c''8 a'8 f'8 c'8 f'8 a'8 c''8 
      | \tuplet 3/2 {c''8 ais'8 b'8} \tuplet 3/2 {g'4 c''8~} c''16 a'16 b'16 a'16 f'8 a'8 
      | a'8 g'8 e'8 c'8 g8 c'8 e'8 g'8 
      | ais'8 cis''8 ais'8 g'8 \tuplet 3/2 {e'8 e'8 cis'8~} cis'16 ais8 g16 
      | e'16 g'16 e'16 d'16~ d'8 d'8 d'8 d'8 d'8 d'8 
      | g8 r8 r4 r8 a'8 g'8 fis'8 
      | a'8 fis'8 g'8 e'16 f'16~ f'8 d'8 b4 
      \bar "||" \mark \default g'8 fis'8 a'8 fis'4 g'8 e'8. a'16~ 
      | a'8 fis'16 g'16~ g'8 e'8 f'4 g'8 ges'8~ 
      | ges'8 a'8 fis'8 g'8 e'4 f'8 fis'8 
      | a'8 fis'16 g'16~ \tuplet 6/4 {g'8 e'8. f'16~} f'16 d'8 e'16~ e'16 f'8 dis'16~ 
      | dis'16 e'8 f'16~ f'8 dis'8 e'8 d'8 cis'8 e'8 
      | d'4. f'4 d'8 f'4~ 
      | f'8 d'8 b8 a8 g4 f8 r8 
      | r8 e'8 fis'8 c'8 e'8 g'8 a'8 fis'8 
      \bar "||" \mark \default g'8 e'8 f'8 c'8 e'4 c'4~ 
      | c'8 r8 r8 c'4 c'8 f'4~^\markup{\left-align \small vib} 
      | f'8 r8 r8 b4 b4 c'8~ 
      | c'8 g4 c'8~ c'16 e'8 g'16~ g'4 
      | cis'4. bes8 a8 g4 g8 
      | \tuplet 3/2 {f4 e8~} e8 d4 f8 \tuplet 6/4 {a4~ a16 g16~} 
      | g8. g16~ g8 c'4 b4 c'8~ 
      | c'4. g8 a4 b8 g8 
      \bar "||" c'2. r4\bar  ".."
    }
    >>
>>    
}
