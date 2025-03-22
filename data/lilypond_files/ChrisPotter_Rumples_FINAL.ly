\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Rumples"
  composer = "Chris Potter"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key f \minor

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
      | f1:min7|
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

      \tempo 4 = 135
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2. r8 a'8~ 
      \bar "||" \mark \default a'16 aes'8 f'16 g'16 f'16 ges'16 a'16 f'16 e'16 b16 ges16 \tuplet 3/2 {es'8 d'8 des'8~} 
      | des'16 a'8 es'16 a'16 g'16 es'8 r4 r8. des''16\glissando  
      | \tuplet 6/4 {c''8 aes'16 f'16\glissando  ges'16 bes'16} f'16 ges'16 bes'16 aes'16 ges'16 es'16 d'16 c'16 b16 es'16 f'16 a'16~ 
      | a'16 a'8\glissando  es'16 a'16 aes'16 es'8~ \tuplet 5/4 {es'8 bes'16\glissando  a'16 ges'16} e'16 c'16 bes8 
      | r4 a16 aes8 des'16 c'16 bes16 f16 ges16 a16 aes16 b8~ 
      | b8 e16 es16 r4 \tuplet 3/2 {d8 des4~} des8 b,16 bes,16~ 
      | \tuplet 6/4 {bes,16 b,16 b,16 es16 ges16 aes16} f16 c16 des16 aes16 a16 f16 es32 d32 e32 aes32 \tuplet 5/4 {bes16 f16 ges16 a16 g16} 
      | aes16 b16 des'16 es'16 ges'16 aes'16 f'16 es'16 e'16 des'16 a16 es16 aes16 c'16 es'16 aes'16 
      | \tuplet 6/4 {bes'16\glissando  b'4 g'16} \tuplet 6/4 {bes'16 b'16 aes'16 r8.} r4 \tuplet 6/4 {ges'8 d'8 a16 ges16} 
      | aes16 b16 des'16 es'16 ges'16 aes'16 bes'16 d''16 des''16 b'16 aes'16 des''16 ges'16 ges'16 a'16 f'16 
      | e'16 a'16 c''16 g'''32 es'32 ges'16 b'16 f'16 ges'16 a'16 aes'16 aes'16 ges'16 \tuplet 6/4 {des'8 e'16 g'16 aes'16 f'16} 
      | fis'16 g'16 f'16 d'16 e'16 c'16 a8 r2 
      | r16 aes'16 f'16 a'16 aes'16 f'16 des'16 e'16 g16 g'16 ges'8 b16 es'16 f'16\glissando  aes'16~ 
      | \tuplet 7/8 {aes'32 f'32 des'16 e'32 a'32 b'32~} \tuplet 6/4 {b'16 bes'8 fis'16 g'16 es'16} aes'16 f'16 ges'16 bes'16 g'16 aes'16 b'16 des''16 
      | es''16 d''16 des''16 des'16 es'16 des''16 c''16 b'16 c'16 des'16 b'16 aes'16 \tuplet 7/8 {a'16. f'32 ges'32 bes'32 a'32~} 
      | \tuplet 6/4 {a'16 g'16 aes'16 bes'8 aes'16} g'16 ges'16 f'16 e'16 \tuplet 3/2 {es'8 bes16 r8.} r4 
      | r16 aes'16 aes'16 aes'16 aes'16 aes'16 aes'8~ aes'16 aes'16 aes'16 aes'16 aes'16 aes'16 aes'16 aes'16 
      | r4 r8 aes'16 aes'16 aes'16 aes'16 aes'16 aes'16 aes'16 a'16 aes'16 aes'16~ 
      | aes'16 d'8 d'16~ d'16 aes'8 d'16~ \tuplet 6/4 {d'8 des'8. d'16~} d'16 es'8 des'16 
      | \tuplet 6/4 {d'8 des'16 aes8 d16} a4 r2 
      | r2 r16 des32 bes,32 a,32 des32 f32 aes32 \tuplet 6/4 {aes16 f16 c16 d16 aes16 es16~} 
      | es16 ges16 bes16 aes16 b8 d'8 des'8 aes8 c'8 f'8 
      | ges'8 b8 \tuplet 3/2 {es'8 fis'8 g'8~} g'16 b16 e'8 g'8 aes'8 
      | \tuplet 3/2 {des'8 f'8 aes'8} a'8 d'16 ges'16~ \tuplet 3/2 {ges'8 a'8 bes'8} r4 
      | b'16 aes'16 bes'16 b'16 bes'16 g'16 a'16 bes'16 a'16 ges'16 aes'16 a'16 aes'16 f'8.~ 
      | f'16 g'16 aes'16 a'16 \tuplet 6/4 {bes'8 fis'16 g'16 aes'16 bes'16} b'16 aes'16 a'16 b'16 \tuplet 3/2 {c''8 aes'8 des''8~} 
      | des''16 a'32 aes'32 g'32 f'16 b'32\glissando  \tuplet 6/4 {c''8 aes'16 g'16 f'16 b'16} aes'32 g'32 ges'32 e'16 bes'32 ges'32 f'32 \tuplet 6/4 {es'8 a'16 e'16 f'16 b'16~} 
      | \tuplet 6/4 {b'16 f'16 ges'16 bes'8 g'16} \tuplet 5/4 {aes'16 g'16 bes'16 b'16 es''16} \tuplet 3/2 {ges''4 es''8} des''16 a'16 ges'8\bendAfter #-4  
      | r4 \tuplet 5/4 {r8 fis''16 g''16 aes''16} g''16 f''16 ges''16 f''16 e''16 es''8 b'16~ 
      | b'16 g'16 b'16 g'16 ges'8 bes16 ges'16 f'16 a'16 f'16 es'16 e'16 des'16 bes16 e16 
      | a16 es'16 bes16 ges16 b16 g'16 d'16 b16 des'16 a'16 ges'16 des'16 e'16 b'16 aes'16 e'16 
      | ges'16 d''16 bes'16 ges'16 aes'8 r8 r4 aes'4 
      | aes'8 f'8 \tuplet 6/4 {a'16 aes'16 g'16 es'8 aes'16} \tuplet 3/2 {ges'8 d'8 bes8} es'8 a'8 
      | aes'8 d'16 aes'16 ges'16 es'16 bes8 d'8 a'8 es'8 aes'8~ 
      | \tuplet 6/4 {aes'8 d'8 a16 a'16} aes'16 es'16 aes'8 d'8 aes'8 es'8 a'16 aes'16~ 
      | aes'16 es'16 aes16 a16 d'4 aes'8 es'16 a'16 g'16 es'16 bes16 g16 
      | d'8 des''8 d'4 \tuplet 5/4 {b'16 aes'16 ges'16 es'16 a'16~} a'16 d'8 aes16~ 
      | aes16 es'16 a16 f16 d'16 b16 es'8 aes'4 d'16 a'16 es'16 des'16 
      | r4 b16 f16 ges'16 a'16 g'16 aes'16 a'16 aes'16 g'16 ges'16 f'16 e'16 
      | es'16 f'16 g'16 bes'16 e'16 ges'16 aes'16 bes'16 ges'16 aes'16 bes'16 des''16 c''16 aes'16 e'16 c'16 
      | f'4^\markup{\left-align \small vib} \tuplet 3/2 {aes'8 es'16 r8.} r4 \tuplet 6/4 {r8 es16 b,16 es16 bes16} 
      | f8.^\markup{\left-align \small vib} c16 aes8 es8 r2 
      | \tuplet 6/4 {r8 a,16 es16 aes16 bes16} d16 ges16 bes16 d'16 \tuplet 6/4 {e'16 des'16 b16 a16 ges16 b16} \tuplet 5/4 {es8 e16 ges16 b16~} 
      | \tuplet 6/4 {b16 f8 ges16 bes16 g16} aes16 b16 d'16 es'16 fis'8 r8 r8 g'16 aes'16 
      | bes'16 aes'16 g'16 f'16 ges'16 aes'16 a'16 c'16 des''16 d''16 b'16 a'16 aes'16 bes'16 g'16 aes'16 
      | b'16 g'16 aes'16 a'16 bes'16 b'16 c''16 des''16 d''16 es''16 es''16 e''16 f''16 e''16 fis''8\bendAfter #-4  
      | r4 r16 g''16 aes''16 g''16 ges''16 f''16 e''16 es''16~ \tuplet 6/4 {es''16 d''16 bes'16 g'8.} 
      | bes'8\bendAfter #-4  ges'8 a'8 f'8 aes'8 e'8 g'8 es'8~ 
      | es'8 des''16 b'16~ b'16 ges'16 d'8 g8 es'8 b8 c''8~ 
      | c''8 c'16 b'16~ b'16 ges'16 des'8 e8 b8 es8 des'8~ 
      | des'8 d'16 b16~ b16 ges16 des8 c8 aes8 b,8 a8 
      | c16 des16 b16 f16 ges16 bes16 g16 aes16 a16 ges16 d16 a,16 aes,4 
      | b16 ges16 c16 bes16 f16 des16 c'16 g16 d16 b16 f16 des16 bes16 f16 ges16 b16 
      | g16 aes16 b16 des'16 es'16 ges'16 f'16 es'16 \tuplet 6/4 {d'16 e'16 es'16 c'16 a16 e16} \tuplet 6/4 {aes4~ aes16 g16~} 
      | g16 b16 d'16 bes16 d'16 f'16 b16 d'16 \tuplet 6/4 {f'16 g'8 e'16 ges'16 bes'16~} bes'16 g'16 aes'16 bes'16 
      | \tuplet 6/4 {b'8 es''16 d''16 d''16 b'16} bes'16 des''16 c''16 a'16 aes'16 b'16 bes'16. bes32 a'16 ges'16 e'8 
      | f'4 aes'4 aes'4~ \tuplet 6/4 {aes'16 aes'4 aes'16} 
      | aes'8 aes''8 aes''16 a''16 bes''8 r2 
      | r8 aes'16 aes'16 aes'16 aes'16 aes'16 aes'16 aes'16 aes'8 aes'16~ aes'16 aes'8 aes'16~ 
      | aes'8 aes''8 bes''8 r8 r2 
      | r16 b''16 b''16 b''16 b''16 a''16 g''8~ g''16 bes''16 b''16 b''16 \tuplet 3/2 {b''8 aes''4~} 
      | aes''16 b''16 b''16 b''16 b''16 b''16 b''16 b''16 b''16 aes''8.~ aes''16 bes''16 b''16 b''16 
      | b''32 bes''32 b''32 d'''32 des'''32 b''32 b''16\glissando  b''16 des'''16 b''16 b''16 b''16\glissando  d'''16 b''16 b''16 b''16\glissando  c'''16\glissando  e'''8~ 
      | e'''8 b''8\bendAfter #-4  bes''8\bendAfter #-4  a''8 \tuplet 3/2 {ges''8\bendAfter #-4  e''16 r8.} r8 f''8 
      | aes''4 r8 bes''8 b''4\bendAfter #-4  bes''4\bendAfter #-4  
      | aes''4~ aes''16\bendAfter #-4  des''16 f''16 des''16 e''4\bendAfter #-4  r8 f''8 
      | fis''16 g''8. \tuplet 3/2 {g''8 aes''4} \tuplet 3/2 {aes''8 g''4} g''16 f''16 ges''8~ 
      | \tuplet 3/2 {ges''8 bes'8 f''8} \tuplet 3/2 {e''8 des''8 c''8~} \tuplet 3/2 {c''8 bes'8 a'8} \tuplet 3/2 {aes'8 ges'8 f'8} 
      | es'4 es'4\bendAfter #-4  d'4\bendAfter #-4  des'4 
      | a'16\glissando  aes'16 aes'16 b'16 a'8\bendAfter #-4  ges'8 a'4\bendAfter #-4  aes'16\glissando  g'16 ges'16 a'16 
      | \tuplet 5/4 {f'8 aes'16 a'16 b'16~} \tuplet 6/4 {b'16 e'8 aes'16 a'16 bes'16~} \tuplet 5/4 {bes'16 es'16 ges'16 a'16 f'16} aes'16 aes'16 g'16 f'16 
      | \tuplet 6/4 {f'8 aes'8 f'16 d'16} e'16 des'16 a16 g16 \tuplet 5/4 {aes8 a16 b16 es'16} d'16 bes16 ges8\bar  ".."
    }
    >>
>>    
}
