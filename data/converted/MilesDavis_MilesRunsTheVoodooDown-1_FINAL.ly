\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Miles Runs the Voodoo Down"
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
     
      \bar "||" \mark \default r4 \tuplet 3/2 {aes'8\glissando  g'8\glissando  gis'8\glissando } a'2~ 
      | a'4\glissando  gis'4\glissando  a'4\glissando  gis'4 
      | a'4. g'4 f'4 c'8 
      | r1 
      | r2 r8 aes8 aes4 
      | r2. gis8\glissando  a8~ 
      | a4. f8 f4^\markup{\left-align \small vib} r4 
      | r2. es'8 f'8 
      | r1 
      | r1 
      | r4 g''8 aes''16 c'''16 r2 
      | r2. r8 g''8 
      | f''4 c''8 a'16\glissando  gis'16 a'8 r8 r4 
      | r4 aes'8 aes'8 aes'8 g'8 f'8 f'8~ 
      | f'4 r2. 
      | r2. f'8 f'8~ 
      | f'8 f'4\glissando  e'8 r2 
      | r1 
      | r4 bes'8 b'8 r4 r8 b'8 
      | r4 aes'8 f'8 c'8 bes4.~ 
      | bes1~ 
      | bes1 
      | es'16 d'16 es'8~ es'2 r4 
      | r2. es'16 d'16 es'16 d'16 
      | es'8\glissando  d'8 r2. 
      | r1 
      | g''8\glissando  a''2..~ 
      | a''4. bes''8 a''4 \tuplet 3/2 {g''4 f''8~} 
      | f''8 c''8~ c''16 g'8\glissando  a'16~ a'16 ges'16\glissando  aes'4.~ 
      | aes'8.\glissando  g'16\glissando  aes'4 f'8 es'8 c'8 c'8 
      | c'4\glissando  es'16 f'8.~ f'8 e'8\glissando  r4 
      | r2 g'8 c''8 d''8 c''8 
      | g'4 g'8\glissando  a'8 r2 
      | r2 f''16 a''8. f''8 es''8 
      | r1 
      | r1 
      | r16 c'''16\glissando  es'''16\glissando  f'''16 e'''16 f'''8.^\markup{\left-align \small vib} ges'''4 f'''4 
      | es'''4.\glissando  d'''4. \tuplet 3/2 {bes''4 a''8\glissando } 
      | \tuplet 6/4 {gis''16\glissando  a''16 c'''8 g''16 f''16~} f''16 c''8 gis'16\glissando  a'8 bes'8 a'8 f'8 
      | c'4 bes8 aes8~ aes8. f16\glissando  a4~ 
      | a8 f8~ f4. r8 r4 
      | r2 r8 f'8 \tuplet 3/2 {aes'8\glissando  bes'4~^\markup{\left-align \small vib}} 
      | bes'4 c''8 c''8 aes'8 f'8 f'8 f'8~ 
      | f'8 r8 r2. 
      | f'2~ f'8 r8 r4 
      | r2. \tuplet 6/4 {f'8 g'16 a'16 aes'16 c''16} 
      | \tuplet 6/4 {es''8 ges''16 aes''16 c'''16 des'''16} c'''16 c'''16 r8 r4 r8. f'16 
      | \tuplet 5/4 {f'16 f'16 f'16 f'16 f'16} \tuplet 5/4 {ges'16 ges'16 ges'16 ges'16 ges'16} \tuplet 6/4 {ges'16 ges'16 ges'16 ges'16 ges'16 ges'16} \tuplet 6/4 {ges'16 ges'16 ges'16 ges'16 ges'16 ges'16} 
      | fis'16 g'32 g'16 g'32 g'32 g'32 \tuplet 6/4 {aes'8 aes'16 aes'16 aes'16 aes'16} \tuplet 9/8 {gis'16 a'32 gis'32 a'32 aes'32 b'32 bes'32 b'32} bes'16 c''32 b'32 des''32 b'32 des''32 c''32 
      | \tuplet 7/8 {des''32 c''32 des''32 c''32 des''32 b'32 c''32} \tuplet 10/8 {bes'32 a'16 gis'32 a'16 gis'32 a'32 gis'32 a'32} \tuplet 6/4 {aes'16 bes'16 a'16 bes'16 a'16 bes'16} g'32 a'32 g'32 a'32 g'32 a'32 g'32 f'32 
      | \tuplet 7/8 {ges'32 f'32 e'32 f'32 e'32 f'32 e'32} \tuplet 10/8 {f'32 e'16 f'32 e'32 f'16 e'32 f'32 e'32} r2 
      | r2 a''4 bes''8 a''8 
      | f''8 c''8 r2. 
      | r2 f''4 g''8 f''8~ 
      | f''8 f''8 f''4. r8 r4 
      | r1 
      | b''16\glissando  ges'''8. f'''8. e'''16~ e'''16 des'''16 b''16 bes''16 aes''16 f''16 f''16 e''16 
      | es''16 d''16 c''16 b'16 bes'16 a'16 aes'16 g'16 aes'16 f'16 e'16 f'16 ges'16 f'32 ges'16. f'32 ges'32~ 
      | ges'16 f'16 ges'16 f'16 ges'16 aes'16 bes'16 g'16 aes'16. ges'32 aes'16 ges'32 aes'32~ aes'16 bes'16 b'16 b'16 
      | b'16 b'16 c''16 b'16 c''16 b'16 c''16 b'16 \tuplet 6/4 {bes'16 a'8 aes'16 bes'16 b'16~} \tuplet 6/4 {b'16 bes'16 b'8 bes'16 b'16~} 
      | b'16 a'16 c''16 a'32 c''32~ c''16 a'16 d''16 dis''16 e''16 f''16 ges''8~ \tuplet 6/4 {ges''8 f''16 e''16 es''16 d''16} 
      | c''32 b'32 bes'16 b'32 aes'16 g'32 aes'16 g'16 aes'8 bes'8 b'8 b'8 gis'16\glissando  a'16 
      | f'8 f'8 f'8 r8 r4 f''8 g''8\glissando  
      | a''8 r8 r4 \tuplet 6/4 {r16 es''16 f''16 es''16 f''8} r4 
      | r8 bes'4 b'16\glissando  bes'16~ bes'4.\glissando  b'8\glissando  
      | bes'4..\glissando  b'16 f'4. f'8~ 
      | f'4 f'2.~ 
      | f'4. r8 r2 
      | r8 f'16 ges'16 aes'16 bes'16 b'16 des''16 b'8. aes'16~ aes'8 r8 
      | r2 c''16 es''8. \tuplet 3/2 {g''4 aes''8} 
      | g''8 es''8 r2. 
      | r4 g''2.~^\markup{\left-align \small vib} 
      | g''1~ 
      | g''2.. es''8~ 
      | es''1~ 
      | es''2 r2 
      | g''8.\glissando  c'''16 r2. 
      | r2. r8 g''8 
      | \tuplet 3/2 {ges''8\glissando  f''4~} f''8 f''4. f''4~ 
      | f''8\glissando  e''4.\glissando  f''8\glissando  e''8\glissando  f''4 
      | r2 r8 es''8 b'16 c''16 gis'16 a'16 
      | r2 bes'8 b'8 c''8 a'8 
      | f'8 f'8 f'8 es'8 r2 
      | r1 
      | b''8 f'''8 r4 r8 g''8\glissando  c'''4 
      | r2 f''8 d''8 c''8 aes'8 
      | f'8 f'8 f'4. r8 r4 
      | r1 
      | aes'16 g'16 aes'16 g'16 aes'16 g'16 aes'16 bes'16 b'16 c''16 b'16 c''16 b'16 c''16 des''16 b'16 
      | c''16 b'16 bes'16 a'16 \tuplet 6/4 {aes'16 g'16 aes'8 ges'16 f'16} ges'16 f'16 g'16 e'16 aes'16 f'16 a'16 bes'16 
      | b'16 c''16 cis''16 d''16 dis''16 e''16 f''16 ges''16 f''16 e''16 es''16 des''16 c''16 b'16 bes'16 a'16 
      | aes'16 g'16 f'16 e'16 es'16 des'16 c'16 a32 a32 \tuplet 6/4 {bes16 g16 g16 aes8.~} aes16 e'16 f'8~ 
      | f'4 r2 e''8 f''8~ 
      | f''4 r4 es''8 c''4. 
      | g'8 gis'8\glissando  a'4 r2 
      | a'8 bes'8\glissando  b'4~ \tuplet 6/4 {b'16 aes'8 gis'8\glissando  a'16~} a'4 
      | f'2~ f'8 r8 r4 
      | e''8 f''8 es''16\glissando  d''16 es''8 b'8 c''4. 
      | bes'8 b'8~ b'4. r8 r4 
      | c''8 cis''8 d''8 dis''16. e''32~ e''8 f''8 a''8 g''8 
      | r2. r8 f''8 
      | f''4 es''8 c''8 g'16\glissando  aes'8. f'8 gis'8\glissando  
      | \tuplet 3/2 {a'4 gis'8} a'4\glissando  gis'8 a'16 gis'16~ \tuplet 3/2 {gis'8\glissando  a'8 gis'8} 
      | a'8\glissando  aes'8 gis'8 a'16\glissando  gis'16\glissando  a'8 gis'8~ gis'32 a'8. gis'32~ 
      | gis'8 a'4 gis'8 \tuplet 3/2 {a'8\glissando  gis'8\glissando  a'8} gis'8 a'8 
      | a'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
