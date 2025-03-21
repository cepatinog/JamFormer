\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Playin' in the Yard"
  composer = "Sonny Rollins"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \major
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
      | g1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7|
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


      \tempo 4 = 155
      \set Score.currentBarNumber = #0
     
      | r8. bes16~ bes8 c'4 d'8 g8 bes8 
      \bar "||" \mark \default c'8 ais8 \tuplet 3/2 {g4 f8} g8 r8 r4 
      | \tuplet 3/2 {b'8 e'8 d'8~} \tuplet 6/4 {d'16 e'4 d'16~} d'8 e'8 d'4 
      | g8 r8 r4 \tuplet 3/2 {g4 ais8} g8 c'8~ 
      | c'8 g8 bes4 f8 g8 d8 f8 
      | \tuplet 3/2 {c4 d8} f4~ f16 g8 ais16 f8 g8~ 
      | g4. f8 g4 bes8 r8 
      | r4 g8 d8 f8 g4 g8~ 
      | g8 d'4 e'8 f'4 g'4 
      | d'8 r8 r4 c'8 d'8 c'8 g8 
      | bes4 a16 bes8 c'16~ c'8 g8 bes8 r8 
      | r4 ais'8 g'4 ais'4 g'8 
      | \tuplet 3/2 {f'8 e'8 f'8} d'4. des'16 c'16 bes16 g8. 
      | ais8 f4 g4 ais8 g8 ais8 
      | c'8 g8 bes8 f8 g4 bes8 r8 
      | r4 \tuplet 6/4 {r4 r16 e'16\bendAfter #+4 } f'8 g'4 g'8~ 
      | g'4. f'8 d'4 f'4 
      | g'4 \tuplet 3/2 {f'8\bendAfter #+4  g'4~} g'8 f'4 f'16 g'16 
      | d'8 f'8 d'8 c'8 d'4 c'4~ 
      | c'16 a16\bendAfter #+4  ais8 d'8. g16~ g4 r4 
      | \tuplet 3/2 {bes4 g8} \tuplet 3/2 {bes4 g8} d8 r8 r4 
      | r4 d'8 f'8~ f'16 g'8 ais'16 f'8 g'8~ 
      | g'4.. f'16 d'8 c'8~ c'16 bes8 g16~ 
      | g16 des'16 c'8 ais16 g8 ais16~ ais8. g16 f8 d8 
      | f8 d8 f8 d8 r2 
      | f'16 g'8.~ \tuplet 6/4 {g'4~ g'16 des'16} c'8 ais8~ ais16 g8 e16 
      | g8 g8 r2. 
      | g'4 \tuplet 3/2 {fis'8 g'4~} \tuplet 6/4 {g'4 fis'16 g'16~} g'8 f'16 e'16~ 
      | e'8 d'4 g4 c'4 bes8 
      | c'8 g8 c'4~ c'16 g8 ais16~ ais8. ais16 
      | \tuplet 3/2 {cis'8 d'8 f'8} f'4 d'8 c'8~ \tuplet 6/4 {c'16 bes8. g16 fis16} 
      | r2 g8 ais8 r4 
      | ais8 g8 bes8 g8 f4 \tuplet 3/2 {g4 d8} 
      | \tuplet 3/2 {g8 ais8 c'8~} c'8 d'4 f'4 d'8~ 
      | d'4.. c'16~ c'16 bes8 g16 f8 d8 
      | f8 f8 d8 c8 d8 r8 r4 
      | r8 a'16 bes'16~ bes'4 g'8 bes'8 g'8 f'8 
      | g'16\bendAfter #+4  fis'16 g'4. \tuplet 6/4 {f'4~ f'16 g'16~} g'8 f'8~ 
      | f'4.. d'16 f'8 d'8 c'8 g8~ 
      | g8 c'8~ c'16 ais8 g16~ \tuplet 6/4 {g16 bes8. a16 ais16} g8 r8 
      | r2 f'4 g'4 
      | f'16 g'8.~ g'4 f'4 g'8 r8 
      | r4 r8 g8~ g16 b'16 c''8 bes'8 g'8~ 
      | g'4 c''8 cis''4 ais'8 g'4~ 
      | g'8 bes'16 g'16~ g'16 b'16 c''16 bes'16 g'4~ \tuplet 3/2 {g'8 f'8 g'8~} 
      | g'16 b'16 c''16 c''16 ais'8 g'4 b'16 c''16~ c''8 ais'8~ 
      | ais'8. g'16~ \tuplet 6/4 {g'16 ais'8. b'16 c''16} bes'8 g'4 r8 
      | r4 r8 f'16 c''16 d''16 g'8 f'16~ \tuplet 6/4 {f'16 d'8. des'16 c'16~} 
      | c'4. bes8 c'8 d'8 des'4\bar  ".."
    }
    >>
>>    
}
