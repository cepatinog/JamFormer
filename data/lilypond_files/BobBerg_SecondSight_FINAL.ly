\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Second Sight"
  composer = "Bob Berg"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key bes \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | s2 r4 s4 
      | bes1 | s1 | s1 | s1 | des1 | es1 | bes1 | s1 
      | ges1:11+.9 | aes1 | bes1 | s1 | s1 | s1 | s1 | s1 
      | des1 | es1 | bes1 | s1 | ges1:11+.9 | aes1 | bes1 | s1 
      | bes1:maj | s1 | s1 | s1 | des1:maj | es1:maj | bes1:maj | s1 
      | bes2:min7 f2:maj | aes2:min7 es2 | bes2 aes2:min | bes1|
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

      \tempo 4 = 114
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2 r8. bes'16 aes'16 f'16 d'16 bes16 
      \bar "||" \mark \default es'16 f'16 cis'16\glissando  d'16 c'4 c'4 c'8 c'8 
      | c'8 aes16 f16~ f8 r8 r2 
      | r16 cis'16\glissando  d'8 d'8 d'8 d'8. es'16 \tuplet 3/2 {f'8 d''8 bes'8~} 
      | \tuplet 6/4 {bes'4 f'16 c''16} aes'4 bes'8 gis'16 a'16 f'8. bes'16~ 
      | \tuplet 6/4 {bes'16 aes'16 f'8 des'16 bes16} \tuplet 3/2 {es'8 des'8 aes8~} \tuplet 6/4 {aes16 bes16 f8 des16 f16} es16 f16 g8 
      | r2 r8 f'16 g'16 \tuplet 6/4 {es'16 f'8 es'16 bes16 g16} 
      | \tuplet 3/2 {es'8 d'8 bes8} \tuplet 6/4 {f16 aes16 f16 c8 es16} d16 f16 bes16 c'16 d'16 f'16 bes'16 c''16 
      | \tuplet 3/2 {d''8\bendAfter #-4  bes'16 r8.} r2 r8 aes'8 
      \bar "||" gis'8 cis''8 r4 \tuplet 6/4 {r4 r16 des''16~} des''8 c''8~ 
      | \tuplet 6/4 {c''8. aes'8 es'16~} es'8 r8 r4 \tuplet 3/2 {es''8 d''4~} 
      | d''8 bes'16 f'16~ f'4 aes'16 g'8 es'16 c'8 g'8 
      | f'8 d'16 bes16~ bes4~ \tuplet 6/4 {bes8 f16 aes16 bes16 c'16~} c'16 es'16 d'16 f'16 
      \bar "||" \mark \default bes'16 c''16 d''8 d''8 bes'8 c''8 c''8 aes'8 r8 
      | r4 bes'16 bes'16 c''16 bes'16 b'16 bes'16 a'16 bes'16 aes'16 g'16 fis'16 g'16 
      | \tuplet 6/4 {fis'16 g'16 ges'16 f'8 e'16} \tuplet 6/4 {es'8 f'16 ges'8 e'16} f'16 e'16 es'16 g'16 f'16 d'16 bes16 aes16 
      | es'16 f'16 d'16 f16 \tuplet 3/2 {c'8 aes8 f8} es16 c16 d16 bes16~ bes8. bes16 
      | des'4~ \tuplet 6/4 {des'8 a16 b16 des'16 es'16} f'16 es'16 des'16 bes16 es'16 des'16 bes16 aes16 
      | \tuplet 3/2 {es'8 f'8 bes'8} \tuplet 6/4 {es''8 bes'16 g'16 ges'16 es'16} aes'16 bes'16 fis'16 g'16 es'8 r8 
      | r2 r16 bes'16 aes'16 g'16 f'16 g'16 aes'16 bes'16 
      | g'16 bes'16 aes'8 g'16 ges'16 f'16 e'16 \tuplet 6/4 {es'16 d'8 aes16 f16 bes16~} \tuplet 6/4 {bes16 c'16 d'8 f'16 des'16~} 
      \bar "||" des'4~ \tuplet 5/4 {des'16 f'16 fis'16 gis'16 bes'16} cis''8 bes'16 gis'16~ gis'32 fis'16 gis'32 bes'16 b'32 cis''32~ 
      | cis''16 es''16 c''16 bes'16 aes'16 bes'16 c''16 aes'16 bes'16 aes'16 f'16 des'16 \tuplet 3/2 {aes'8 f'8 des'8} 
      | es'16 f'16 c'16 d'16 bes8 r8 r4 r8 bes'8 
      | f''16 g''8. f''8 d''8 es''8 d''16 bes'16 bes'8 aes'8 
      \bar "||" \mark \default bes'8 g'8\bendAfter #-4  r4 bes'16 aes'16 f'16 bes16 d'16 c''16 aes'16 g'16 
      | f'8 bes'16 c''16 \tuplet 6/4 {aes'16 g'16 g'16 f'8 bes16~} \tuplet 6/4 {bes16 bes'16 c''16 aes'16 g'16 g'16} f'16 bes16 bes'16 c''16 
      | g'32 aes'32 g'32 f'16. d'32 bes32~ \tuplet 5/4 {bes16 c''16 aes'16 g'16 f'16~} \tuplet 5/4 {f'16 bes16 bes'16 c''16 g'16~} \tuplet 6/4 {g'16 g'8 f'16 des'16 bes'16~^\markup{\left-align \small vib}} 
      | bes'8 r8 r4 r8 es'16 aes'16 \tuplet 3/2 {f'8 es'8 des'8} 
      | \tuplet 6/4 {aes16 es'16 f'16 ges'8 aes'16} f'16 aes'16 des''16 es''16 f''8 es''16 des''16~ des''16 des''16 aes'16 g'16 
      | r4 fis''16 g''8.~ \tuplet 6/4 {g''8 es''8 bes'16 aes'16~} \tuplet 6/4 {aes'16 g'16 es'8 bes16 g16} 
      | f'8^\markup{\left-align \small vib} r8 r4 r16 bes16 es'16 f'16 \tuplet 6/4 {d'16 c'8 bes16 f16 aes16~} 
      | aes16 bes16 c'16 es'16 d'4~ \tuplet 6/4 {d'16 bes8 d'8 f'16~} \tuplet 3/2 {f'8 bes'8 c''8} 
      \bar "||" \tuplet 3/2 {des''8 c''8 bes'8~} bes'8 c''16 des''32 c''32~ \tuplet 6/4 {c''4 bes'16 c''16~} c''8 aes'8 
      | b'16 bes'16 aes'8 aes'16 bes'16 b'16 des''16 bes'8 des''8 ges'4 
      | f'16 es'16 d'8 \tuplet 6/4 {d'8. es'16 f'16 es'16~} \tuplet 6/4 {es'16 d'16 c'8. g'16} a'8 bes'8~ 
      | \tuplet 12/8 {bes'4 c''32 bes'32 c''32 bes'32} \tuplet 9/8 {c''32 bes'32 c''32 bes'32 c''32 bes'32 c''32 bes'32 c''32} \tuplet 12/8 {bes'32 c''32 bes'32 c''16 bes'32 c''32 bes'32 c''32 bes'32 c''32 bes'32~} \tuplet 10/8 {bes'32 c''32 bes'32 c''32 bes'32 c''32 bes'32 c''32 bes'32 c''32} 
      | \tuplet 9/8 {bes'32 c''32 bes'32 c''32 bes'32 c''32 bes'32 c''32 bes'32} c''16 des''16 r8 r2\bar  ".."
    }
    >>
>>    
}
