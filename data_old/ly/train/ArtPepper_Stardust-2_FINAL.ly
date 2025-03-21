\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Stardust (Solo 2)"
  composer = "Art Pepper"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | s2 es2:7 
      | aes1:6 | aes1:6 | aes1:min6 | des1:7 | es1:maj | g2:min7 c2:7 | f1:min7 | s1 
      | aes1:min7 | des1:7 | es2 c2:min7 | g2:min7 c2:7 | f1:min7 | bes1:7 | es1:7 | aes1:7 
      | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 
      | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 
      | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 
      | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 
      | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 
      | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 
      | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 | es1:7 | aes1:7 
      | es1:7|
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


      \tempo 4 = 60
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 \tuplet 3/2 {r8 bes8 bes'8~} \tuplet 3/2 {bes'8 bes8 bes'8~} 
      \bar "||" \mark \default bes'16 aes'16 c''16 aes'16 aes'8^\markup{\left-align \small vib} r8 r4 \tuplet 6/4 {r16 bes'16 c''16 bes'16 aes'16 c''16} 
      | r4 \tuplet 6/4 {r8. es'16 aes'16 c''16} \tuplet 5/4 {aes'8. es'16 es'16} \tuplet 5/4 {aes'16 aes'16 aes'16 bes'16 c''16~} 
      | c''8 es'8~ es'16 es'32 aes'16 aes'32 aes'32 bes'32~ \tuplet 10/8 {bes'32 b'8.. bes'32 aes'32~} \tuplet 7/8 {aes'32 bes'16. c''32 bes'32 aes'32~} 
      | aes'4 \tuplet 6/4 {aes'16 bes'16 des''16 bes'8.~^\markup{\left-align \small vib}} \tuplet 10/8 {bes'32 aes'16 ges'16 es'16 bes16 aes32~} aes32 es'8. aes32 
      | \tuplet 3/2 {es'8 g4~^\markup{\left-align \small vib}} g8 r8 r4 \tuplet 11/8 {r8 r32 bes32 c'32 d'32 f'32 d'32 es'32} 
      | g'8. ges'32 aes'32 g'32 fis'32 g'32 d''32 g'8~ \tuplet 15/16 {g'16 aes'64 g'64 f'64 e'64 g'64 bes'64 des''64 c''64 b'64 c''64 ges''64} f''16 e''16 r8 
      | r8. f'16~ \tuplet 5/4 {f'8 f'16 aes'16 c''16~} c''16 g'16 bes'8~^\markup{\left-align \small vib} bes'8. g'16 
      | aes'16 f'16 f'8^\markup{\left-align \small vib} r4 r8 b32 c'32 d'32 c'32 \tuplet 6/4 {b16 c'8 b16 c'16 g'16} 
      | \tuplet 10/8 {f'16. e'16 f'16. a'32\glissando  bes'32~^\markup{\left-align \small vib}} bes'4 a'8 aes'4^\markup{\left-align \small vib} r8 
      | r4 r16 ges'16 f'8~ f'16 ges'16 f'16 es'16~ es'32 bes'32 c''32 bes'32 aes'8 
      | \tuplet 5/4 {bes'16 aes'16 bes'16 fis'16\glissando  g'16~^\markup{\left-align \small vib}} g'4 r4 \tuplet 5/4 {r8 bes'16 c''16 d''16~} 
      | d''16 bes'32 c''32 d''32 f''32 d''16~^\markup{\left-align \small vib} d''4. c'''8~ \tuplet 6/4 {c'''4 fis''16\glissando  g''16~} 
      | g''8.. ges''32~ ges''16 f''16 f''8^\markup{\left-align \small vib} es''16 c''8.~ c''16 ges'32 f'32 es'32 c'32 es'16~ 
      | \tuplet 14/16 {es'8~ es'32 bes64 c'64 d'64 bes64} \tuplet 6/4 {es'16 f'16 bes'16 f'8.~^\markup{\left-align \small vib}} \tuplet 6/4 {f'8. bes'16 aes'16 des''16~} \tuplet 6/4 {des''16 a'16\glissando  bes'8 ges'16 d'16} 
      | bes16 f'16 es'16 es'16~^\markup{\left-align \small vib} es'8 r8 \tuplet 10/8 {r8. c'32 es'32 g'32 c''32} bes'16 bes'16\glissando  des''8 
      | \tuplet 10/8 {bes'16 aes'16. ges'32 aes'16 ges'32 aes'32~^\markup{\left-align \small vib}} aes'4. a'8 \tuplet 6/4 {aes'16 ges'16 es'16 des'16 es'8} 
      \bar "||" des'32 es'8. des'32 es'8 g'8 r2 
      | \tuplet 3/2 {r8 bes8 es8~} es8 ges8 \tuplet 3/2 {aes8 ges8 aes8} \tuplet 6/4 {ges16 aes8. bes16 aes16~} 
      | \tuplet 12/8 {aes32 f32\glissando  g32~ g4 bes32} es'8 des'8 r2 
      | \tuplet 3/2 {r8 es'8 ges'8} es'8^\markup{\left-align \small vib} ges'8 r8. es'32 bes32 \tuplet 6/4 {des'16 es'8 es'16 ges'16 c'16} 
      | des'16 es'16 des'16 es'16^\markup{\left-align \small vib} des'16 es'16^\markup{\left-align \small vib} c''16 bes'16 r2 
      | r4 es'4 \tuplet 10/8 {es'32 e'32 es'32 c'32 es'32 ges'16 aes'32 bes'32 ges'32} es'32 c'32 aes'32 c''32 bes'32 ges'32 aes'32 bes'32 
      | \tuplet 6/4 {aes'16 fis'16 g'8 es'16 bes16} r4 \tuplet 11/8 {r32 es'32 e'32 es'32 bes32 c'32 d'32 c'32 bes32 es'32 e'32} \tuplet 10/8 {es'32 bes32 c'32 es'32 c'32 bes32 es'32 e'32 c'16} 
      | \tuplet 10/8 {es'32 e'16 es'32 c'32 es'32 f'32 es'32 e'32 es'32} \tuplet 12/8 {c'16 es'32 ges'16 es'16 e'32 es'32 c'32 es'32 f'32~} \tuplet 10/8 {f'32 es'16 e'32 es'32 c'32 es'32 ges'32 aes'16~} \tuplet 10/8 {aes'32 c''32 aes'32 ges'32 aes'32 c''32 aes'32 ges'32 aes'32 c''32} 
      | aes'32 ges'32 aes'32 c''32 aes'32 fis'32 g'32 es''32 r2. 
      | r4 f''8 r8 r4 es'''8 es'''8^\markup{\left-align \small vib} 
      | r4 r8. aes''16~ aes''4 \tuplet 13/16 {ges''32. f''32 es''32.\glissando  f''64 ges''64 f''32 es''64~^\markup{\left-align \small vib}} 
      | es''4 des''4 c''16 b'16 bes'4 aes'16 ges'16 
      | es'8^\markup{\left-align \small vib} r8 r4 r8 fis'32 g'32 bes'32 c''32 bes'16 es''16 es'8~ 
      | es'16 es'16 ges'8 \tuplet 3/2 {aes'8 ges'8 aes'8~^\markup{\left-align \small vib}} aes'8 ges'32 f'32 e'32 es'32~ es'8 bes'32 aes'32 bes'32 aes'32 
      | fis'32 g'32 aes'32 fis'32 g'32 es'32 bes32 a32 \tuplet 6/4 {aes16 c'16 b16 bes16 es8} r4 r8. aes16 
      | \tuplet 6/4 {bes16 c'16 es'16 es'8.} es'8 f'8 r4 ges'32 aes'32 g'32 a'32 bes'32 fis'32 g'32 bes'32 
      | des''32 bes'32 c''32 des''32 bes'32 aes'32 bes'16 \tuplet 6/4 {aes'16 ges'16 aes'16 ges'16 es'16 des'16} \tuplet 3/2 {es'8 des'8 es'8} bes32 aes32 bes32 aes32 ges32 es16.~ 
      | es4 \tuplet 3/2 {ges8 aes16 r8.} r4 r8 es'8 
      | \tuplet 3/2 {des'8 es'4~} es'16 bes16 des'16 es'16 \tuplet 6/4 {bes16 des'16 es'8 des'16 es'16~} es'16 des'16 es'8~^\markup{\left-align \small vib} 
      | es'8~ es'32 aes32 c'32 es'32~ es'16 c'16 es'8^\markup{\left-align \small vib} r4 r8. c'16~ 
      | \tuplet 10/8 {c'32 es'32 e'32 es'32 c'32 es'32 g'32 bes'16 g'32~} g'16 c'16 es'8^\markup{\left-align \small vib} r4 \tuplet 9/8 {r16 es'32 e'32 es'32 c'32 es'32 ges'32 es'32} 
      | \tuplet 14/16 {aes'32 ges'64 aes'32. ges'64 aes'64~ aes'16 ges'64 aes'64~} aes'16 bes'16 ges'8~ \tuplet 6/4 {ges'8. ges'16\bendAfter #+4  f'16 ges'16} \tuplet 6/4 {es'8 d'16 des'16 bes16 aes16~} 
      | aes8.. bes32 \tuplet 10/8 {aes32 g32 bes32 es'16 bes32 des'32 f'32 e'32 d'32} es'4 \tuplet 10/8 {r16. bes32 c'32 es'32 fis'32 g'16 des''32~} 
      | des''32 c''32 des''32 c''32 bes'32 a'16 aes'32~ aes'16 bes'32 aes'32 ges'32 es'32 bes32 a32 aes8 des'32 b32 des'32 b32 \tuplet 6/4 {bes16 aes16 g16 g8 c'16} 
      | bes16 es'16 des'16 es'16 \tuplet 6/4 {b16 des'16 es'16 bes16 des'16 es'16~^\markup{\left-align \small vib}} es'8. es'16 \tuplet 6/4 {ges'16 aes'16 es'16 ges'16 aes'8} 
      | \tuplet 10/8 {bes'32 aes'32 ges'32 aes'16. bes'32 aes'32 ges'32 aes'32~} \tuplet 7/8 {aes'16. bes'32 aes'32 ges'32 es'32~} \tuplet 12/8 {es'16 es'32 ges'32 aes'32 bes'32 aes'32 ges'32 es'16 ges'32 aes'32} \tuplet 10/8 {bes'32 aes'32 ges'32 es'32 ges'32 aes'32 bes'32 aes'32 ges'16} 
      | r4 \tuplet 10/8 {es'32 g'8. es'32 des'32 es'32} g'16 aes'8 es'16 \tuplet 10/8 {des'32 es'32 g'32 aes'32 g'32 es'32 des'8~} 
      | \tuplet 11/8 {des'32 es'32 des'32 es'32 g'32 aes'32 g'32 es'32 des'32 c'32 g32} \tuplet 6/4 {f16 es16 des16 es8.~} \tuplet 14/16 {es16.. bes16. es'64~} \tuplet 5/4 {es'16 fis'16 g'8 bes'16} 
      | es''8 r8 r2 g''4 
      | es''16 des''16 es''8^\markup{\left-align \small vib} \tuplet 3/2 {ges''8 es''16 r8.} r4 \tuplet 6/4 {r4 r16 b'16} 
      | \tuplet 14/16 {des''32 c''64 des''64 c''32. bes'32. c''64 bes'32 aes'64~} aes'16 g'16 es'16 c'32 es'32~^\markup{\left-align \small vib} es'8 des'32 es'32 des'32 bes32 aes8^\markup{\left-align \small vib} ges16 es16 
      | \tuplet 6/4 {r4 r16 bes16~} bes8. bes16 \tuplet 6/4 {c'16 es'16 ges'16 aes'16 bes'16 aes'16} \tuplet 6/4 {ges'8. es'16 c'16 es'16~} 
      | \tuplet 6/4 {es'8 es'8 e'16 g'16} aes'16 bes'16 bes'16 aes'16 bes'8^\markup{\left-align \small vib} r8 r4 
      | r4 aes'16 es'16 r8 \tuplet 9/8 {r8 es'16. c'32 es'32} \tuplet 6/4 {ges'16 aes'8 bes'16 es'16 c'16~} 
      | \tuplet 5/4 {c'8 es'16 g'16 f'16} \tuplet 12/8 {es'16 des'16. bes32~ bes8 bes32 des'32} \tuplet 7/8 {es'16. des'32 es'16 bes32} \tuplet 6/4 {des'16 es'16 bes16 des'16 es'8~^\markup{\left-align \small vib}} 
      | es'4 ges'16 aes'16 r8 r2 
      | \tuplet 10/8 {r8 fis'32 g'16 bes'32 c''32 bes'32} des''16 c''16 bes'8 r4 \tuplet 6/4 {es''16 es''16 des''16 es''16 ges''16 es''16~^\markup{\left-align \small vib}} 
      | es''16 des''16 es''16 des''16 r4 aes''8 ges''8 es''8^\markup{\left-align \small vib} des''16 bes'16 
      | \tuplet 6/4 {a'16 bes'16 a'16 es'16 aes'16 bes'16} fis'32\glissando  g'16. es'16. des'32~^\markup{\left-align \small vib} des'8 es'16 bes32 des'32~ des'16 es'16 ges'16 aes'16~^\markup{\left-align \small vib} 
      | \tuplet 14/16 {aes'8~ aes'64 ges'64 es'32 bes64 des'64} es'4 \tuplet 9/8 {r16 bes32 a32 g32 aes32 c'32 es'32 ges'32} f'4 
      | r16 es'32 c'32 es'32 fis'32\glissando  g'16 es'4 r2 
      | \tuplet 13/16 {aes'16 es'64 aes'64 c''32 des''64 c''64 aes'64 bes'64 c''64} \tuplet 6/4 {bes'16 g'16 aes'16 ges'16 es'8} r4 \tuplet 6/4 {r16 bes'16 c''16 es''8.} 
      | r8.. bes'32 c''32 bes'32 a'32 c''32 bes'32 g'32 es'16~ \tuplet 12/8 {es'8. bes'32 c''32 bes'32 a'32 c''32 des''32} \tuplet 6/4 {c''16 a'16 bes'4~} 
      | \tuplet 10/8 {bes'32 bes'32 c''32 bes'32 aes'32 c''32 bes'32 aes'32 ges'16~} \tuplet 12/8 {ges'8. bes'32 c''32 bes'32 aes'32 c''32 des''32} \tuplet 6/4 {c''16 bes'16 des''4} bes'32 c''32 bes'32 aes'32 c''32 bes'32 aes'32 ges'32~ 
      | \tuplet 9/8 {ges'8 bes'32 c''32 bes'32 a'32 bes'32} c''32 a'32 bes'32 c''32 bes'16 c''32 bes'32 \tuplet 6/4 {c''16 bes'16 a'16 bes'16 es''16 bes'16} a'32 bes'32 c''32 bes'16 c''32 bes'32 ges'32 
      | \tuplet 6/4 {aes'8. ges'16 aes'16 ges'16} \tuplet 6/4 {aes'8 ges'16 bes'16 es'8} r4 \tuplet 6/4 {r8 es'16\glissando  f'16 g'16 es'16~} 
      | es'16 es'32.~^\markup{\left-align \small vib} es'8 es'64 r2 r16 d'16 es'16 es'16~^\markup{\left-align \small vib} 
      | es'8 es'8 \tuplet 3/2 {es'8 es'8 es'8~} es'8. es'16 es'16 es'16 es'16 ges'16 
      | \tuplet 5/4 {es'8^\markup{\left-align \small vib} des'16 es'16 bes16} r2 bes32 b32 des'32 es'32 ges'16 es'32 des'32~ 
      | \tuplet 6/4 {des'8. des'16 es'16 ges'16} \tuplet 6/4 {aes'16 ges'16 es'16 bes16 des'16 es'16~} es'32 des'32 es'32 des'32 es'32 ges'32 aes'16 \tuplet 6/4 {bes'16 aes'16 bes'16 aes'16 ges'16 es'16~} 
      | es'32 des'32 es'32 des'16 es'32 ges'32 aes'32 \tuplet 6/4 {bes'16 aes'16 bes'16 aes'16 ges'16 es'16} \tuplet 14/16 {des'32 es'32. des'64 es'16 des'64 es'32 ges'64~} \tuplet 6/4 {ges'16 es'16 ges'16 aes'16 ges'16 es'16} 
      | \tuplet 6/4 {des'16 es'16 des'16 es'16 des'16 es'16} \tuplet 6/4 {ges'16 es'16 ges'16 aes'8.~} \tuplet 6/4 {aes'8 es'16 ges'16 es'16 ges'16} \tuplet 12/8 {aes'16. ges'32 aes'16 a'16 ges'32 a'16\glissando  aes'32} 
      | bes'4.^\markup{\left-align \small vib} r8 \tuplet 6/4 {r4 r16 aes'16} bes'4 
      | aes'4\glissando  bes'4 r4 a'16 aes'16 ges'16 es'16~ 
      | \tuplet 6/4 {es'16 des'16 bes16 aes16 ges16 es16~^\markup{\left-align \small vib}} es4 f4 \tuplet 5/4 {g8 bes16 es'16 bes16} 
      | \tuplet 3/2 {des'8 es'4~^\markup{\left-align \small vib}} es'4. bes16 aes16 \tuplet 6/4 {ges8. es16 es16 des16} 
      | es4 r2.\bar  ".."
    }
    >>
>>    
}
