\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Sidewinder"
  composer = "Lee Morgan"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key es \major
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
      | s4 r2. 
      | es1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | aes1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | aes1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | aes1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | bes1:7 | s1 | s1 | s1 | es1:7 | s1 | s1 | s1 
      | s1|
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


      \tempo 4 = 156
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8 des''4 bes'8 \tuplet 6/4 {aes'8. bes'8 es'16~} 
      \bar "||" \mark \default \tuplet 6/4 {es'8. bes8 es'16~^\markup{\left-align \small vib}} es'4 r2 
      | r4 cis''4~ cis''16 d''16 c''16 bes'16 \tuplet 6/4 {aes'8. bes'8 es'16~} 
      | es'8 es'8 \tuplet 6/4 {fis'4~ fis'16 g'16~} g'4 g'4 
      | fis'8\glissando  g'4\bendAfter #-4  es'8 \tuplet 6/4 {des'16 es'16 des'16 bes8.} des'8 bes8 
      | es'4 es'4^\markup{\left-align \small vib} r2 
      | r1 
      | \tuplet 5/4 {r8 bes'16 des''16 es''16~} es''16 es''8 es''16~ es''8 bes'8 des''8 es''8 
      | \tuplet 3/2 {f''8 es''8 d''8} des''8 f''8 d''16 c''16 b'8 bes'8 a'8 
      | \tuplet 6/4 {aes'4~ aes'16 aes'16~} aes'8 aes'16 aes'16~ aes'8 aes'8 aes'8 aes'16 ges'16~ 
      | ges'8. aes'16~ aes'8 bes'8~ \tuplet 5/4 {bes'8 ges'8 es'16~} es'8 es'16 es'16~ 
      | es'8. f'16~ f'8\glissando  aes'8 aes'8 aes'16 aes'16~ aes'16 aes'8 ges'16~ 
      | ges'8. aes'16~ \tuplet 6/4 {aes'4 aes'16\glissando  bes'16~} bes'8 es'4. 
      | bes'16 aes'16 g'8 es'4 des'8 es'4.^\markup{\left-align \small vib} 
      | r2 r8 g'8~ \tuplet 6/4 {g'16 bes'16 aes'16 g'8.} 
      | \tuplet 3/2 {aes'8 g'8\bendAfter #+4  aes'8} g'8 es'4 aes'8 g'8 es'8 
      | \tuplet 3/2 {aes'8 g'8\bendAfter #+4  aes'8~} \tuplet 3/2 {aes'8 g'8 f'8} \tuplet 6/4 {e'16 f'16 es'16 des'8.} \tuplet 6/4 {c'8. bes8 aes16~} 
      | aes8 bes16 c'16~ c'4 f2 
      | r1 
      | r8. f'16~ f'8 g'8 aes'8 bes'8 c''8 f''16 es''16 
      | d''8 cis''8 d''16 c''16 b'8 bes'8 aes'8 g'8 bes'8 
      | \tuplet 3/2 {es'4 bes8} es'4^\markup{\left-align \small vib} r2 
      | r2 g'16\glissando  ges'16 aes'4. 
      | fis'8 g'8 es'8 bes8 des'8 es'4^\markup{\left-align \small vib} r8 
      | r1 
      \bar "||" \mark \default r4 r8 bes'4 es''4 aes''8~ 
      | aes''8 fis''8 g''8 es''8 \tuplet 6/4 {cis''16 d''16 des''16 bes'8.} aes'8 bes'8 
      | fis'8 g'8 r2. 
      | r1 
      | r8 bes'8 ges''8 bes''8 \tuplet 3/2 {bes''8 aes''4~} aes''8 bes''8 
      | fis''8 g''8 \tuplet 3/2 {aes''4 g''8~} g''16 a''16 f''16 es''16 bes'8 aes'16 bes'16~ 
      | \tuplet 3/2 {bes'8 f'8 g'8} r2. 
      | r8 c'''8~ c'''16 bes''16 aes''8 g''8 e''8 f''8 e''8 
      | es''8 bes'8 des''8 es''8 c''8 des''8 bes'8 b'8~ 
      | b'16 d''16 c''16 b'16 bes'8 a'8~ a'16 bes'16 aes'16 g'16 ges'8 bes'8~ 
      | bes'8 ges'8 d'8. es'16\glissando  f'4 es'8 c'8 
      | des'16 es'16 bes8 es'8 b8 \tuplet 3/2 {d'4 c'8} es'8 d'8 
      | es'4.^\markup{\left-align \small vib} r8 r2 
      | r4 r8 es'8 f'8 g'8 aes'8 a'8~ 
      | a'8 bes'8 c''4~ \tuplet 3/2 {c''8 des''8 c''8\bendAfter #+4 } \tuplet 6/4 {des''4 c''16 bes'16} 
      | \tuplet 3/2 {b'8 bes'4} b'16 aes'16 g'16 f'16 e'8 des'8 c'8 bes8 
      | aes4~ aes16 c'16 es'16 g'16 f'4 g'8 c'8~ 
      | c'4. r8 r2 
      | r8 e''16 d''16 cis''16 d''16 es''16 e''16\bendAfter #+4  \tuplet 3/2 {es''8 d''8 c''8~} c''16 des''16 c''16 b'16 
      | bes'8 a'8 \tuplet 6/4 {aes'16 bes'16 aes'16 g'8.} ges'8 d'8 b8 a8 
      | bes8 es'8~ es'2 aes'8 aes'8 
      | aes'8 aes'8 aes'8 aes'8 aes'8 aes'8 aes'8 aes'8~ 
      | \tuplet 6/4 {aes'16 g'8 ges'16 es'16 c'16} bes4 es'4^\markup{\left-align \small vib} r4 
      | r2 des''8 bes'4.~ 
      \bar "||" \mark \default bes'1~ 
      | bes'1~ 
      | bes'1~ 
      | bes'2 a'8 a'8 aes'16 ges'16 es'16 d'16 
      | es'4 r2. 
      | r2 bes'2~ 
      | bes'1 
      | \tuplet 5/4 {bes'16 c''16 des''16 es''16 f''16~} f''8 des''8 a'8 c''16 a'16 \tuplet 5/4 {bes'16 f'16 aes'16 bes'16 aes'16} 
      | g'16 ges'16 f'16 e'16 es'16 b16 des'16 b16 \tuplet 3/2 {bes8\glissando  c'4~} c'8 aes'8~ 
      | aes'8 bes'4 ges'4 aes'8 \tuplet 6/4 {f'8. ges'8 d'16~} 
      | d'8 bes8 \tuplet 6/4 {f'4~ f'16 es'16~} es'4 f'8 c'8~ 
      | c'8 g'16\glissando  aes'16~ aes'8 a'8 aes'8 fis'8~ fis'16 g'16 aes'8 
      | \tuplet 6/4 {es'8. bes8 des'16~} des'8 es'4.^\markup{\left-align \small vib} r4 
      | r1 
      | r4 r8 bes'4 es''4 aes''8~ 
      | aes''8 a''16 g''16 \tuplet 5/4 {aes''16 a''16 g''16 f''8} e''8 cis''8 d''16 c''16 bes'8 
      | aes'4 c''4 es''4 g''8 es''8~ 
      | es''8 b'16\glissando  bes'16 c''4 b'8 aes'8 g'4~ 
      | \tuplet 6/4 {g'16 aes'16\glissando  bes'8. c''16~} c''4~ c''16 ges'16 aes'8 bes'8 g'8~ 
      | g'8 aes'4 aes'16 a'16\glissando  aes'8 ges'8 es'4 
      | des'8 es'4.^\markup{\left-align \small vib} r4 g'8 aes'8 
      | aes'8 aes'8 aes'8 aes'8 aes'8 aes'8 aes'8 aes'8 
      | bes'8 es'8 es'8 es'8 es'4^\markup{\left-align \small vib} r4 
      | r8 c''4 b'8 bes'8 fis'16\glissando  g'16~ g'8 bes'8 
      \bar "||" \mark \default fis'8 g'8 es'2^\markup{\left-align \small vib} r4\bar  ".."
    }
    >>
>>    
}
