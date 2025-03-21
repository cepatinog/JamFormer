\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Sweet Sorrow"
  composer = "Joshua Redman"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key g \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | s4 r4 s4 s4 
      | g1:min7+maj | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es2:7 aes2:min6/es | es2:7 aes2:min6/es | es2:7 aes2:min6/es | es2:7 aes2:min6/es | es2:7 aes2:min6/es | es2:7 aes2:min6/es | es2:7 aes2:min6/es | es2:7 aes2:min6/es 
      | g1:min7+maj | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | es2:7 aes2:min6/es | es2:7 aes2:min6/es | es2:7 aes2:min6/es | es2:7 aes2:min6/es | des2:11+.9 c2:min7 | b2:775+ es2:/bes | a2:min5-7 d2:9+ | g1:min7+maj 
      | s1 | s1 | s1 | s2 r4 s4|
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

      \bar "||" \mark \default r4 r8. b16\bendAfter #+4  des'8 c'8 bes8\glissando  b8 
      \bar "||" \mark \default \tuplet 6/4 {g16 f16 es16 d16 des16 c16} r4 r8 cis8\bendAfter #+4  d8 des16 c16 
      | bes,8 r8 r2. 
      | \tuplet 3/2 {cis8\bendAfter #+4  d4} des8 bes,8 c8^\markup{\left-align \small vib} bes,8 \tuplet 3/2 {c4^\markup{\left-align \small vib} bes,8} 
      | c16\glissando  des8 c16 bes,4^\markup{\left-align \small vib} r2 
      | \tuplet 6/4 {r8. a,8 bes,16~} bes,16 d16 ges16 a16 e8^\markup{\left-align \small vib} r8 r4 
      | r4 \tuplet 3/2 {d4 ges8} c8 r8 r4 
      | \tuplet 6/4 {r4 c16 e16} bes,16 d16 ges16 bes16 \tuplet 10/8 {ges4~ ges32 a32~} a16 fis16 g16 a16 
      | a16\glissando  bes16 e16 e16 r4 \tuplet 6/4 {r4 c'16\glissando  d'16} es'32 c'32\glissando  d'32 bes32 aes32 g32 es32 ges32 
      | es16 ges16 bes8^\markup{\left-align \small vib} des'4\glissando  aes4 r4 
      | r8 des''16 a'16\glissando  g'8 ges'8 es'16\glissando  des'8. \tuplet 6/4 {des'16 bes16 aes16 es16 f16 es16} 
      | f16\glissando  g16 es16 es'16~ es'8 f'8~ f'16 ges'16 aes'16 f'16~ \tuplet 6/4 {f'8 es'16 f'16 des'16\glissando  c'16~} 
      | c'16 b16 des'8~ \tuplet 12/8 {des'8.. gis32\glissando  a32 g32 a32 f32~} \tuplet 6/4 {f16 es16 f16 des8.} r4 
      | \tuplet 10/8 {r16. bes'32 bes'32 bes'32 bes'32 bes'32 bes'32 bes'32} \tuplet 3/2 {bes'8 e''4~} \tuplet 20/16 {e''32. es''32 b'32. a'32 aes'64 g'32 ges'64 f'64 e'64 d'64 des'64 c'64 b64~} b32 des'32 e'32 aes'32 g'8~^\markup{\left-align \small vib} 
      | g'8. es''16~ \tuplet 10/8 {es''32 e''32\glissando  ges''32 es''32 des''32 bes'32 a'32\glissando  aes'16 ges'32} \tuplet 6/4 {es'16 aes'16\glissando  ges'8. ges'16~} \tuplet 12/8 {ges'32 bes'32 aes'32 ges'32 es'32 des'32 bes32 a32 aes32 ges32 es32 aes32} 
      | \tuplet 6/4 {es16 fis16 g4~} g16 es'16 es'16 c''16\bendAfter #+4  des''4. b'8 
      | \tuplet 6/4 {bes'16 aes'16 g'16 f'16 es'16 d'16} \tuplet 7/8 {des'32 es'32 f'32 aes'32 c''32 es''32 des''32} \tuplet 10/8 {f'16 aes'32 c''32 bes'16 aes'32 g'32 f'32 ges'32~} \tuplet 11/8 {ges'32 es'32 bes32 g32 c'32 d'32 c'32 bes32 g32 f32 a32} 
      \bar "||" bes4~^\markup{\left-align \small vib} bes16 c'16\glissando  d'16 d''16~ d''8\glissando  des''8~ \tuplet 10/8 {des''8 bes'32 g'32 f'16 d'32\glissando  c'32~} 
      | c'32\glissando  bes32 g32 f32 c'32 g32 bes16^\markup{\left-align \small vib} r2 r16 e''16 ges''16 d''16 
      | \tuplet 12/8 {des''8..^\markup{\left-align \small vib} a'32 c''32 bes'32 ges'32 f'32~} \tuplet 14/16 {f'64 e'64 es'64 aes'32 es'64 ges'64 aes'64 bes'32 b'64 ges'64 e'64 es'64~} \tuplet 10/8 {es'32 g'32 ges'32 es'32 b32 a32 d'32 des'32 f32 a32} \tuplet 12/8 {c'32 bes32 ges32 es32 d32 g32 f32 d32 c32 d32 c32 d32} 
      | c16 bes,8.^\markup{\left-align \small vib} r4 \tuplet 10/8 {r16 g32 bes32 des'32 f'32 a'32 bes'16.~} \tuplet 10/8 {bes'16 d''32 bes'32 a'32 g'32 es'32 d'16.~} 
      | \tuplet 10/8 {d'16. g'16 bes'32 c''16 bes'32 c''32\glissando } d''4 \tuplet 6/4 {r8 g'16 bes'16 c''16 bes'16} e'16\glissando  es'8.~ 
      | \tuplet 6/4 {es'8 g'16 bes'16 c''16 bes'16} b'16\glissando  d''16 ges''8~ \tuplet 6/4 {ges''8 es''16 d''16 des''16 c''16} a'16 d'8.~ 
      | \tuplet 6/4 {d'16 d'16 g'16 bes'16 d''8~} \tuplet 6/4 {d''8 ges'16 a'16 c''16 e''16} r4 \tuplet 6/4 {ges''16 d''16 c''16 bes'16 c''16 bes'16} 
      | \tuplet 11/8 {c''16 bes'32 c''16. bes'32 c''16 bes'32 c''32~} \tuplet 6/4 {c''16 bes'16 c''16 bes'16 c''16 bes'16} \tuplet 6/4 {c''16\glissando  d''16 des''16\glissando  es''16 es''16\glissando  e''16} \tuplet 3/2 {f''8 fis''8 g''8} 
      | g''16\bendAfter #+4  bes''8.~ \tuplet 10/8 {bes''16 f''32 ges''16 es''32 des''32 bes'32 a'32 aes'32} ges'32 es'32 aes'32 es'32\glissando  ges'8 r4 
      | \tuplet 3/2 {r8 c'''8\glissando  des'''8~} \tuplet 7/8 {des'''32 a''16 gis''32 a''32 d'32 aes''32} \tuplet 14/16 {aes''32. ges''32 ges''32 es''32 es''32 des''32 bes'64~} \tuplet 10/8 {bes'16 a'16 aes'16 ges'16 es'32 aes'32} 
      | \tuplet 5/4 {ges'16 es'16 des'16 es'8^\markup{\left-align \small vib}} \tuplet 11/8 {e'32\glissando  g'32 es'32 des'32 bes32 a32 aes32 es32 aes32 es32 ges32} r4 \tuplet 7/8 {r16 c''32 des''32 bes'32 aes'32 es'32} 
      | \tuplet 6/4 {f'16\glissando  ges'16 es'8 c'16\glissando  des'16} \tuplet 3/2 {bes8 aes8 es8} f16\glissando  g16 bes16 c'16 es'16 f'16 f'16\glissando  g'16 
      | \tuplet 6/4 {f'16\bendAfter #+4  g'16 f'4~} \tuplet 10/8 {f'16. g'32 g'16 c''32 des''32 b'32 bes'32} aes'16 g'16\glissando  f'8~ \tuplet 14/16 {f'16 g'16~ g'64 g'16 des''64~} 
      | \tuplet 7/8 {des''16\glissando  es''32 c''32 g'32 ges'32\glissando  f'32} \tuplet 7/8 {es'32 f'32 c'32 es'32 f'32 es'32 f'32\glissando } g'32 es'32 c'32 f'32 c'32 es'16.~^\markup{\left-align \small vib} es'16. g'16 bes'32 c''32 cis''32~ 
      | cis''32\glissando  d''32~^\markup{\left-align \small vib} d''8 c''32 bes'32~ \tuplet 6/4 {bes'16 a'16 g'16 f'16 e'8} \tuplet 6/4 {es'8\glissando  d'8 d'16 c'16} bes16 aes16 g16 f16 
      | ges32 d'32 a32~^\markup{\left-align \small vib} a8 bes32 ges'16 c'8.^\markup{\left-align \small vib} \tuplet 6/4 {d'16 c''16 a'4^\markup{\left-align \small vib}} \tuplet 6/4 {bes'16 des''16 aes'16\glissando  fis'8.} 
      | \tuplet 6/4 {g'16 ges'16 d''4^\markup{\left-align \small vib}} \tuplet 6/4 {c''16 bes'16 es''4^\markup{\left-align \small vib}} \tuplet 6/4 {d''16 des''16 ges''4} d''16 des''16 ges''8 
      | fis''16 g''16 a''8 a''16 g''16 bes''8 bes''16 a''16 c'''8~ c'''16 b''16\glissando  d'''16 b'16~ 
      | \tuplet 6/4 {b'8 c'''8 d'''16 b'16~} \tuplet 3/2 {b'8 c'''8\bendAfter #+4  d'''8~} \tuplet 10/8 {d'''16 bes''16 g''32 f''16 d''32 d''32 c''32} \tuplet 6/4 {g'16 bes'16 g'16 f'16 d'16 des'16} 
      | bes16 bes16 g8~^\markup{\left-align \small vib} \tuplet 6/4 {g4 ges16 d16} des16 b,16 r8 r4\bar  ".."
    }
    >>
>>    
}
