\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
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
      | s2 r2 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 e4:min7 a4:7 
      | d2:maj e2:min7 | fis2:min7 g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 f2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des4:6 ges4:7 f4:min5-7 bes4:7 
      | es2:min7 bes2:7|
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

      \tempo 4 = 66
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2. \tuplet 10/8 {r8 bes,32 c16 des16 es32~} 
      \bar "||" \mark \default es16 f16 ges16 aes16 \tuplet 5/4 {bes16 c'16 des'16 es'16 f'16~} \tuplet 6/4 {f'16 aes'16 c'8 bes'16 aes'16~} aes'32 des'32 ges'16 f'16 des'32 es'32~ 
      | \tuplet 3/2 {es'8 aes8 bes8~^\markup{\left-align \small vib}} bes4 bes'32 b'32 bes'32 ges'32 es'32 b16\glissando  a32 aes16 bes16 ges16 aes16~ 
      | aes32 ges32 f16 des16 es32 bes,32~ bes,16 es16 bes16 es'16 bes'8 aes'8^\markup{\left-align \small vib} r4 
      | \tuplet 5/4 {r16 c''16 des''16 c''16 bes'16} aes'16 c''16 aes'16 bes'16 \tuplet 6/4 {ges'16 aes'8 f'16 b'16 e'16~} e'32 aes'32 des'16 ges'32 b32 e'32 bes32 
      | \tuplet 6/4 {es'16 f'16 des'16 bes16 es'16 c'16} aes16. bes32 g32\bendAfter #+4  aes32 f32 c32 es16 f8.~^\markup{\left-align \small vib} \tuplet 12/8 {f8.. des'16 bes16 ges32~} 
      | \tuplet 6/4 {ges16 b'16 des''16 b'16\glissando  des''8} \tuplet 6/4 {bes'16 ges'16 es''16\glissando  f''8 des''16~} \tuplet 6/4 {des''16 des'8 f'16 es'16 aes16~} aes16 c'16 f16 aes16~ 
      | \tuplet 5/4 {aes16 bes16 f16 bes,16 es16~} \tuplet 6/4 {es16 bes16 aes16 es'16 des'16 ges'16} \tuplet 5/4 {es'16 aes'16 ges'16 bes'16 g'16} f'32 ges'32 f'32 es'32 f'16 des'32 bes32 
      | \tuplet 7/8 {es'32 c'32 aes16 es32 bes32 g32} c4 e32 es32 d16 b16 a32 aes32 \tuplet 6/4 {ges16 f16 c'8^\markup{\left-align \small vib} bes16 aes16} 
      \bar "||" \tuplet 6/4 {es'8^\markup{\left-align \small vib} d'16 des'16 b16 f'16} \tuplet 6/4 {bes'16 aes'16 ges'16 f'16 c'16 bes16} es16 c8.~^\markup{\left-align \small vib} \tuplet 10/8 {c8. des''32\glissando  es''32 des''32\glissando  es''32} 
      | \tuplet 6/4 {des''16 es''16 des''8 des''16 bes'16~} \tuplet 13/16 {bes'64 des'32. f'16 bes'64\glissando  c''32 bes'64\glissando  c''64~} \tuplet 6/4 {c''16 aes'16 aes'16 bes16 b16 b16} a'32 bes'32 a'32\glissando  bes'32 des'16 des'32 aes32~ 
      | \tuplet 7/8 {aes32 aes32 des'32\glissando  d'32 des'32\glissando  d'32 aes32} aes16 b16\glissando  c'16 es16 bes4^\markup{\left-align \small vib} aes4~ 
      | \tuplet 6/4 {aes16\glissando  des'16 d'16 des'8 c'16~} \tuplet 7/8 {c'32 b32 bes16 aes32 bes32 b32~} \tuplet 12/8 {b32 es'16. ges'32 g'16 a'32 bes'16 d''32 e''32~} \tuplet 10/8 {e''32 f''8. e''32 f''32 e''32} 
      | d''16 e''16 f''8~ f''16 es''16 ges''8~ ges''16 es''16 e''16\glissando  f''16~ \tuplet 6/4 {f''8. e''16 b'16 es''16~} 
      | \tuplet 6/4 {es''8. des''16 c''16 b'16} r4 r16 c''32 des''32 b'32 bes'32 aes'32 ges'32 \tuplet 7/8 {aes'32 f'32 des'32 b32 f'32 c'32 aes32} 
      | \tuplet 7/8 {es32 bes32 aes32 ges32 f32 des32 es32} bes,16 es16 bes16 aes32 es'32~ \tuplet 6/4 {es'16 des'16 aes'16 ges'16 f'8~} \tuplet 12/8 {f'32 es'16 c'16 aes16. es16 a32\glissando  bes32~^\markup{\left-align \small vib}} 
      | \tuplet 9/8 {bes8.. c'32 aes32~} \tuplet 6/4 {aes16 bes8 c'16 es'16 es'16} \tuplet 6/4 {des'16 es'16 ges'8 aes'16 f'16} aes'16 bes'16 b'8~^\markup{\left-align \small vib} 
      \bar "||" \tuplet 7/8 {b'16. d'32 d'32 des'32 d'32} e'16 ges'16 a'16 ges'16 \tuplet 10/8 {b'16\glissando  des''8.. b'32~} \tuplet 6/4 {b'16 a'16 ges'16 b'16 a'16 ges'16} 
      | \tuplet 10/8 {e'32 des'32 b32 ges'32 e'32 des'32 b32 ges16 a32} b16 ges16 a16 d16~ \tuplet 12/8 {d8.. d16 des32 d32 e32} \tuplet 7/8 {b16 a16^\markup{\left-align \small vib} f32 ges32 a32} 
      | \tuplet 5/4 {f16\glissando  ges16 a16 d'16 e'16} des'16 aes8.~^\markup{\left-align \small vib} \tuplet 10/8 {aes16. des''32 b'32\bendAfter #-4  ges'32 e'32 aes'32 a'32 ges'32} \tuplet 10/8 {g'32 ges'32 e'32 ges'32 f'8~^\markup{\left-align \small vib} f'32 ges'32\glissando } 
      | \tuplet 12/8 {g'16 aes'16 b'32 c''16 d''16 b'32 bes'32 a'32} \tuplet 9/8 {aes'16 aes'32 f'32 des'32 b32 es'32 c'32 aes32} bes16 f16 aes8~^\markup{\left-align \small vib} \tuplet 3/2 {aes8 f8 d8} 
      | \tuplet 5/4 {d16 f16 a16 d'16 a'16~} \tuplet 5/4 {a'16 f'16 d'16 des''16\glissando  d''16} \tuplet 3/2 {c''8 b'16 r8.} r4 
      | \tuplet 6/4 {r16 d''8 f''16 e''16 d''16~} d''16 c''16 b'16 d'16 d''16 c''16 c'16 bes'16 a'16 aes'16 aes'16 bes'32 b'32~ 
      | b'16 g'16 aes'16 a'16 ges'16 g'16 d'16 f'16 \tuplet 13/16 {es'16 e'32. e'32. f'32 des'64~} des'16 es'16 d'16 bes16 
      | c'16 b16 es16 e16~ \tuplet 6/4 {e8. bes16 b16 e16~} \tuplet 6/4 {e16 es16 bes16\glissando  c'16 b16 es16~} \tuplet 6/4 {es16 e8 bes16 aes16 a16} 
      \bar "||" \tuplet 5/4 {bes16 b16 des'16 es'16 f'16} \tuplet 5/4 {c'16 aes16 es16 c16 bes,16} \tuplet 6/4 {es8 b16 c'16 bes16 aes16~} aes16 es'16 b'16 aes'16~ 
      | \tuplet 6/4 {aes'16 bes'16 ges'8 f'16 c'16~} c'32 bes16. es32 bes,16 a,32~ \tuplet 6/4 {a,16 aes,8 bes16 b16 bes16} \tuplet 12/8 {b16. e'16. g'32\glissando  aes'16 a'32 bes'32 a'32} 
      | \tuplet 6/4 {bes'16\glissando  b'16 c''16 des''16 d''16 es''16~^\markup{\left-align \small vib}} es''4 r4 \tuplet 6/4 {r16 c'16 f'16 f'16 aes'8} 
      | c''16 c''16 c''16 aes'16 \tuplet 5/4 {es'16 b'16 aes'16 es'16 des'16} \tuplet 6/4 {c''8 aes'16 es'16 b'16 bes'16} \tuplet 3/2 {des'8 aes'4~^\markup{\left-align \small vib}} 
      | \tuplet 10/8 {aes'8.. aes'32 bes'32 c''32~} c''32 aes'32 bes'32 aes'32 f'32 des'32 aes'32 f'32 des'32 bes32 es'32 c'32 aes32 f32 bes32 e'32~ \tuplet 10/8 {e'32 es''32\glissando  e''32 aes'32 d''32 des''32 b'32 es''32 f''32 e''32} 
      | f''32 des'32 ges''32 g''32 ges''32\glissando  g''16.~ \tuplet 11/8 {g''32 ges''32 e''32 c''32 f'32 des'32 a16 es'32 aes''32 bes''32~} \tuplet 6/4 {bes''16 bes''16\glissando  b''16 b''8.~} \tuplet 6/4 {b''16\glissando  es''16 b''16\glissando  des'''16 es'''16 e'''16} 
      | des'''16 es'''16 c'''16 ges''16 \tuplet 5/4 {es''16 f''16 es''16 des''16 c''16~} \tuplet 6/4 {c''16 es'16 bes'16 aes'16 aes'16 g'16} \tuplet 5/4 {f'16 c'16 es'16 des'16 aes16} 
      | \tuplet 5/4 {c'16 bes16 f16 bes16 es16} \tuplet 6/4 {bes16 aes16 f16 des16 es16\glissando  c'16} \tuplet 6/4 {bes8 b16 c'16 c'16 bes16} \tuplet 5/4 {aes16 ges16 f16 es16 f16} 
      \bar "||" des16 c16 bes,16 es16~^\markup{\left-align \small vib} es4 r2\bar  ".."
    }
    >>
>>    
}
