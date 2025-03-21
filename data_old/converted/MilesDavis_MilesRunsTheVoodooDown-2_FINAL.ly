\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Miles Runs the Voodoo Down (Solo 2)"
  composer = "Miles Davis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key f \major
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
      
      | f1:9+
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


      \tempo 4 = 118
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r4 gis'8 a'4.\glissando  gis'4\glissando  
      | a'2~ a'8 gis'4. 
      | a'8 g'8 f'4. f'4.~ 
      | f'4. r8 r2 
      | r4 b'4. bes'4.~ 
      | bes'2 a'8 gis'8 a'4 
      | gis'8 a'4. r2 
      | r1 
      | r4 bes'4. aes'16 b'16~ b'4~ 
      | b'4 gis'4. a'4.~ 
      | a'4.. gis'16 a'4~ a'16 a'16\glissando  bes'8~ 
      | bes'8 aes'8~ aes'4. r8 r4 
      | r2 aes'8.\glissando  bes'16~ bes'8. bes'16 
      | r4 b'4. c''4 des''8 
      | f'8 fis'8~ fis'2\glissando  g'4~ 
      | g'8 f'4. \tuplet 6/4 {aes'8. g'8 aes'16} f'8 c'8 
      | f8 r8 r2. 
      | r2. f''4 
      | c''4 aes'8\bendAfter #-4  r8 r8. f'16 r4 
      | r2 aes'8 gis'8 a'16\glissando  aes'16 gis'8 
      | a'4 f'4 f'8 f'4. 
      | r2. \tuplet 3/2 {r8 d'8\glissando  es'8~} 
      | es'2~ es'8.\glissando  d'16~ d'8 r8 
      | r1 
      | r2 \tuplet 3/2 {des'8 es'4~} \tuplet 6/4 {es'4~ es'16\glissando  d'16~} 
      | d'8 c'8~ c'4. r8 r4 
      | r8 aes8 f8 f8 f8 r8 r4 
      | r1 
      | c''16 f''8. f''8 g''8 f''8 g''8 r4 
      | r1 
      | r4 r16 e'''16 ges'''16\glissando  f'''16~ f'''8\glissando  ges'''8 r4 
      | r2 aes''4.. bes''16 
      | \tuplet 3/2 {aes''8 bes''8 gis''8} a''16 aes''16 bes''32 aes''16 bes''32~ bes''8 f''8~ \tuplet 7/8 {f''16. es''16. f''32~} 
      | f''16 es''16 f''16 es''16 \tuplet 6/4 {f''16 es''16 d''16 es''16 c''8~} c''8 gis'4.~ 
      | gis'1 
      | a'2 r2 
      | r2 r16 aes'16 c''16 a'16 gis'16 a'16 b'16 des''16 
      | es''16 f''16 ges''16 aes''16 \tuplet 5/4 {b''16 des'''16 c'''16 d'''16 b''16} c'''8 r8 r4 
      | r4 \tuplet 6/4 {r16 e'''16\glissando  ges'''8\glissando  f'''16 ges'''16~} \tuplet 6/4 {ges'''16\glissando  es'''16 d'''16 c'''16 c'''16 bes''16} a''16 g''16 f''16 e''16 
      | es''16 c''16 b'8 \tuplet 3/2 {bes'8\glissando  a'4} a'16\glissando  aes'8. f'4 
      | gis'2. a'4~ 
      | a'8.\bendAfter #+4  gis'16~ gis'4. a'4.~ 
      | a'4\bendAfter #+4  gis'4. a'8~ a'8.\bendAfter #+4  aes'16~ 
      | aes'1~ 
      | aes'1~ 
      | aes'1~ 
      | aes'2 r2 
      | r2. r8 f'8 
      | f'8 f'8 f'8 f'8\bendAfter #-4  r2 
      | r1 
      | r4 r8 f''8 r4 bes'8 r8 
      | r8 b'8\bendAfter #-4  r4 \tuplet 3/2 {c''4 a'8~} a'16. f'8 es'32~ 
      | es'8 c'8 f'8 es'8~ es'2~ 
      | es'8 r8 r2 r8 des'8~ 
      | des'1 
      | b2 r2 
      | r8 ges8 aes2.~ 
      | aes8\glissando  g4. r2 
      | r8 f8 e8 f8 r2 
      | r1 
      | r2 r8 f'8 es'4~ 
      | es'2~ es'8 c'4. 
      | g2.. r8 
      | r2. aes'8 aes'8 
      | aes'8 g'4 f'8 f'8 r8 r4 
      | r1 
      | r4 r8. d''16 f''16 f''8 f''16 f''8 f''8 
      | f''8 f''16 f''16~ f''8 f''8 f''8 f''8 f''8 f''8~ 
      | f''16 f''16 f''8~ f''16 f''16 f''16 f''16 f''8 d''8 \tuplet 3/2 {f''8 g''8 f''8~} 
      | f''16 f''16 f''8~ f''16 es''8 f''16 \tuplet 3/2 {f''8 f''8 g''8} f''4 
      | es''16 es''16 f''4 f''16 f''16 f''16 g''8 f''16 es''4 
      | r8 bes'8 \tuplet 6/4 {f''16 f''16 f''16 g''8.} \tuplet 6/4 {r4 r16 c''16} es''4 
      | \tuplet 3/2 {f''8 g''8 g''8} f''4 es''8 es''4 f''16 g''16~ 
      | \tuplet 3/2 {g''8 f''8 es''8} r4 \tuplet 3/2 {c''8 f''4} \tuplet 3/2 {es''8 f''4} 
      | g''16 f''8. es''4 f''16 g''8 g''16 g''8 f''8~ 
      | f''8 f''16 es''16~ es''4 f''16 g''8 f''16 es''4 
      | r8. c''16 \tuplet 3/2 {f''8 g''4} \tuplet 3/2 {f''8 es''4~} es''8 es''16 f''16 
      | g''8 g''8 g''16 g''16 g''8 r4 e''16 g''16 aes''16 f''16 
      | \tuplet 3/2 {g''8 f''8 f''8} r4 \tuplet 6/4 {es''8 f''8 g''16 g''16~} g''16 f''16 f''8 
      | r2. f'''16\glissando  ges'''8.~ 
      | ges'''16 ges''8\glissando  gis''16 a''4 g''8 f''8 c''8 g'8 
      | \tuplet 3/2 {ges'8\glissando  a'8 f'8~} f'4 es'4 c'8 aes8~ 
      | aes1~ 
      | aes2~ aes8\bendAfter #-4  r8 r4 
      | r8 f8 f8 f8 f4\bendAfter #-4  r4\bar  ".."
    }
    >>
>>    
}
