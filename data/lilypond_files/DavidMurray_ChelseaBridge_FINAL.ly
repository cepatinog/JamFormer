\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Chelsea Bridge"
  composer = "David Murray"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key des \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | r1 
      | es1:7 | des1:7 | es2:7 des2:7 | bes1:7 | es1:min7 | aes1:7 | des1:6 | s4 c4:7 b4:7 bes4:7 
      | es1:7 | des1:7 | es2:7 des2:7 | bes1:7 | es1:min7 | aes1:7 | des1:6 | des2. b4:7 
      | fis2:min7 b2:7 | e2:maj g2:7 | fis2:min7 f2:7 | b2:min7 e2:7 | a2:maj a4:min7 d4:7 | g1:maj | g1:min7 | des4:7 c4:7 b4:7 bes4:7 
      | es1:7 | des1:7 | es2:7 des2:7 | bes1:7 | es1:min7 | aes1:7 | des1:6|
      }
      }

    \new Staff
    <<
    \transpose c' c'

    {
      \global
  		%\override Score.MetronomeMark #'transparent = ##t
  		%\override Score.MetronomeMark #'stencil = ##f

          \set Score.markFormatter = #format-mark-box-numbers

      \tempo 4 = 53
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default \tuplet 6/4 {r4 r16 g16} \tuplet 3/2 {aes8 bes8 b8} \tuplet 7/8 {c'16 b16 bes16 a32~} \tuplet 6/4 {a8 ges8 f16 es16} 
      \bar "||" \mark \default f8 f8~^\markup{\left-align \small vib} f4. \tuplet 6/4 {c16 des16 f16} \tuplet 3/2 {bes,8 aes,4~^\markup{\left-align \small vib}} 
      | \tuplet 5/4 {aes,8 bes16 b16 aes16} e16 des16 ges16 es16 b,8^\markup{\left-align \small vib} r8 r4 
      | \tuplet 6/4 {r8. bes16 b16 aes16} g16 aes16 bes16 b16~ \tuplet 6/4 {b8. bes16 b16 aes16} ges16 f16 es16 e16 
      | \tuplet 6/4 {f8 c8 c'16 bes16} c'4. r8 r4 
      | r16 es'16 des'16 es'16~^\markup{\left-align \small vib} es'8~ es'32 des'32 es'32 es'32 \tuplet 6/4 {f'16 e'16 des'16 es'16 des'16 bes16~} bes32 g32 aes32 a32 aes32 ges32 aes16~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {aes4 ges16 f16} es16 f8.^\markup{\left-align \small vib} r8.. d64 es64 \tuplet 12/8 {e32 f32 ges32 bes16 g32 aes16 bes32 g'32 aes'32 es'32~} 
      | es'32 f'32 des'32 c'32 bes32 es'32 d'32 des'32 \tuplet 5/4 {c'16 b16 bes16 aes16 ges16} f16 es16 f32 c16 b,32~ b,16 bes,16 a,16 g,16 
      | \tuplet 6/4 {aes,8 es16 f16 c16 bes,16~} \tuplet 6/4 {bes,16 c'16 aes16 bes16 es'16 e'16~} e'64 des'32 c'16 bes'32. aes'32. b'32 ges'64~ \tuplet 6/4 {ges'16 f'16 es'16 e'16 f'16 c'16} 
      \bar "||" bes8^\markup{\left-align \small vib} r8 r4 c''16 des''16 es''8~ \tuplet 6/4 {es''16 des''8 c''8 bes'16~} 
      | \tuplet 6/4 {bes'8 b'8. e'16~} e'16. es''8 d''32~ \tuplet 6/4 {d''8 bes'16 b'16 e'16 d'16\glissando } \tuplet 6/4 {es'16 c'16 des'16 b16 b16\bendAfter #-4  bes16~} 
      | bes16 es16 bes16 c16 r4 \tuplet 10/8 {r16. a16 b,32 c32 es32 f32 d32} \tuplet 10/8 {f32 c32 f32 c32 f32 c32 f32 c32 f32 aes,32~} 
      | \tuplet 10/8 {aes,8 es32 bes32 g32 aes32 bes32 c'32} \tuplet 10/8 {des'32 es'32 f'32 g'32 aes'32 bes'32 c''32 des''32 es''32 d''32~^\markup{\left-align \small vib}} d''2~ 
      | \tuplet 6/4 {d''8 f''16 g''16 ges''16\glissando  aes''16~^\markup{\left-align \small vib}} aes''4~ \tuplet 5/4 {aes''8 es''16\glissando  e''16 aes''16~} aes''16 des''16 bes'16 des''16 
      | \tuplet 6/4 {des''8.^\markup{\left-align \small vib} bes'16 ges'16 f'16} \tuplet 5/4 {es'16 c''16 aes'16 b'8~^\markup{\left-align \small vib}} \tuplet 5/4 {b'16 a'16 ges'16 aes'16\glissando  a'16~} \tuplet 10/8 {a'32 ges'32 a'32 ges'32 d'32 aes'32\glissando  a'32 ges'32 d'32 b32} 
      | \tuplet 6/4 {es'16 bes'16 aes'16 f'16 c'8} \tuplet 6/4 {es'16 c'16 bes16 es16 c16 bes,16} es16 f8.~^\markup{\left-align \small vib} f8~ f32 c32 des32 es32 
      | des32 c32 bes,32 a,32 c32 des32 es32 f32 \tuplet 10/8 {d32 es32 f32 ges32 g32 aes32 bes32 g32 aes32 bes32~} bes32 c'32 des'32 es'32 e'32 ges'32 aes'32 bes'32 \tuplet 10/8 {b'32 des''16 b'8^\markup{\left-align \small vib} b'32 a'32 ges'32} 
      \bar "||" e'8. aes,16 \tuplet 6/4 {a,16 bes16 b16 es8.} \tuplet 3/2 {e8 aes8 b8} es'16 e'16. des'16\glissando  g'32 
      | aes'16 ges'16\glissando  aes'8~^\markup{\left-align \small vib} aes'16 ges'16 e'16 es'16 des'4 \tuplet 6/4 {r16 es'16\glissando  d'16 e'16 d'16\glissando  e'16~^\markup{\left-align \small vib}} 
      | \tuplet 7/8 {e'8 des'32 aes32 e32} \tuplet 10/8 {ges4~^\markup{\left-align \small vib} ges32 a'32\glissando } \tuplet 6/4 {b'16 g'16 ges'16 e'16 d'16 des'16~} des'32 b32 g32 b32 g32 ges32 e32 d32 
      | \tuplet 5/4 {es16 b,16 d16 e16 ges16~} \tuplet 12/8 {ges16 aes16. a16. b16. e'32~} e'16 des'16 d'16 e'16 \tuplet 6/4 {ges'16 a'8 des''16 b'16\glissando  des''16~^\markup{\left-align \small vib}} 
      | \tuplet 6/4 {des''8. b'16 a'16 aes'16} ges'16 e'16 d'16 des'16~ des'16 d''32 b'32 g'32 e'32 b16~ \tuplet 10/8 {b32 a16 a32\glissando  b8~^\markup{\left-align \small vib} b32 a32} 
      | g16 ges16 g32 a32 ges32 g32 d4~^\markup{\left-align \small vib} \tuplet 10/8 {d16 a,32 c32 d32 d32 c32 d32 ges16~} \tuplet 10/8 {ges16 b32 bes32 aes16 d'32 des'32 c'32 bes32} 
      | \tuplet 10/8 {g'32 ges'32 f'32 e'32 b'32 d''32 b'32 bes'32 a'16} \tuplet 6/4 {aes'16 g'16 ges'16 f'16 e'16 es'16~} \tuplet 7/8 {es'32 d''32 bes'32 g'32 ges'32 f'32 es'32} d'8.^\markup{\left-align \small vib} es''32 f''32~ 
      | f''32 e''32 es''16 f''32 aes''16 f''32~ \tuplet 9/8 {f''32 bes'32 bes'32 d''32\glissando  es''32 e''32 b'32 g'32 c'32} \tuplet 7/8 {c''32\bendAfter #+4  des''32 bes'32 bes32 c'32 b'32 c''32} bes32 bes32 bes'32 bes'32\bendAfter #-4  a'32 bes16 g'32\glissando  
      \bar "||" \tuplet 18/16 {a'16. g'64 f'32 c'32 bes32. es64 des64 c64 bes,64} aes,8 r8 r4 r16. aes'32 bes'32 b'32 a''32 g''32 
      | \tuplet 11/8 {d''32 b'32 aes'32 f'32 es'32 b32 a32 f32 es32 bes32 b32~} b64 d''64 es''64 d''32 c''64 b'64 bes'64 a'64 g'64 ges'64 e'64 es'64 d'64 des'64 b64 \tuplet 10/8 {bes32 g32 f32 ges32 bes32 d''32 es''32 e16.~^\markup{\left-align \small vib}} \tuplet 11/8 {e8~ e32 es32 f32 e32 d32 des32 es32} 
      | f16 ges16 e16 c16~ \tuplet 5/4 {c16 c'16 aes16 bes16 b16} \tuplet 5/4 {e'16 aes'16 bes'16 c''16 c'16} bes'8.^\markup{\left-align \small vib} g'16 
      | \tuplet 9/8 {aes'32 bes'32 b'32 d''32 b'32 bes'32 aes'32 g'32 aes'32} \tuplet 10/8 {bes'32 b'32 bes'32 aes'32 g'32 es'32 d'32 es'32 g'32 aes'32~} \tuplet 10/8 {aes'32 es'32 d'32 b32 bes32 g32 d32 g32 aes32 bes32} \tuplet 9/8 {b32 es'32 f'32 es'32 des'32 c'32 bes32 es'32 des'32~} 
      | \tuplet 12/8 {des'32 c'16 bes16. f16 es16 g32 aes32} es16 c16 bes,16 bes16~^\markup{\left-align \small vib} bes8.. aes,32~ \tuplet 18/16 {aes,32 bes64 bes64 bes64 bes64 bes64 bes32 bes32 bes64 bes64 bes32 bes64 bes64 bes64} 
      | \tuplet 6/4 {bes16 aes16 bes16 aes8.~^\markup{\left-align \small vib}} aes4 r4 r8 r32 aes32 bes32. c'64~ 
      | \tuplet 10/8 {c'16 es'16 des'32 c'32 bes16 aes32 bes32} \tuplet 3/2 {c'8 f8 aes8~^\markup{\left-align \small vib}} aes32 des16 c32 b32 e32 f32 des32 \tuplet 10/8 {c32 bes,32 a,32 aes,32 c16 des32 es32 f32 d32} 
      | \tuplet 6/4 {es16 f16 ges16 aes8 bes16} \tuplet 6/4 {aes16 bes8 b16 des'16 es'16~} \tuplet 5/4 {es'16 e'16 f'16 ges'16 aes'16} \tuplet 10/8 {bes'16 c''16 des''16 c''16 des''32 c''32~} 
      \bar "||" \tuplet 6/4 {c''16 a'16 f'16 des'16 c'16 bes16} r2.\bar  ".."
    }
    >>
>>    
}
