\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Sidewinder"
  composer = "Joe Henderson"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key es \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

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

          \set Score.markFormatter = #format-mark-box-numbers

      \tempo 4 = 154
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r1 
      | r2. r16 es'8 es'16~ 
      | es'16\glissando  f'16 g'8 es'2.~ 
      | es'2~ es'8 des'16 bes16 \tuplet 3/2 {des'8 es'8 f'8~} 
      | f'8 bes8~ \tuplet 3/2 {bes8 es'8 f'8~} \tuplet 3/2 {f'8 fis'8\glissando  g'8} es'4~ 
      | es'2~ \tuplet 3/2 {es'8 des'8 bes8} des'8 bes16 aes16~ 
      | \tuplet 5/4 {aes16 bes8 fis16\glissando  g16~} g8 es8~ es2 
      | r2. \tuplet 3/2 {r8 aes'8 aes'8~} 
      | aes'16 b'16\glissando  c''16 aes'16~ aes'2~ \tuplet 3/2 {aes'8 ges'8 es'8} 
      | \tuplet 3/2 {ges'8 aes'8 bes'8} \tuplet 6/4 {aes'8. ges'8 es'16~^\markup{\left-align \small vib}} es'4. r8 
      | r4 r8 aes'8 \tuplet 3/2 {b'8\glissando  c''8 aes'8~} aes'8 b'16\glissando  c''16 
      | aes'8 b'16 c''16~ \tuplet 6/4 {c''8 aes'8. es'16~} es'8 ges'8~ ges'8. es'16~ 
      | \tuplet 6/4 {es'8 ges'8. es'16~} es'8. fis'16 \tuplet 3/2 {g'8 es'4~} es'8 des'16 es'16~ 
      | es'4 fis'16 g'16 es'4 des'16 es'16 fis'16 g'16 es'8 
      | \tuplet 3/2 {des'8 es'4} fis'16 g'16 es'4. \tuplet 5/4 {des'16 es'16 fis'16 g'16 es'16~} 
      | \tuplet 6/4 {es'4~ es'16 des'16~} des'8 es'4.^\markup{\left-align \small vib} r4 
      | r1 
      | \tuplet 6/4 {r8. aes'16 g'16 ges'16} f'8. es'16 d'8. des'32 c'32 \tuplet 6/4 {b16 bes4 a16} 
      | \tuplet 6/4 {aes4 g16 ges16} \tuplet 6/4 {f4 e16 es16} d8. f16 aes8 r8 
      | r4 \tuplet 6/4 {r4 r16 aes16~} aes16 c'16 es'16 f'16 \tuplet 6/4 {d'8 f'8 aes'16 des''16} 
      | bes'8 r8 r8 es'8 r2 
      | r2 \tuplet 5/4 {r8 bes16 es'16 g'16} aes'16 g'16 aes'16 g'16 
      | aes'16 g'16 aes'16 g'16 \tuplet 6/4 {aes'16 g'16 aes'8 g'16 aes'16~} \tuplet 6/4 {aes'16 g'16 aes'8 g'16 aes'16} g'16 aes'16 g'16 aes'16~ 
      | \tuplet 6/4 {aes'16 g'16 aes'8 g'16 aes'16~} aes'16 g'16 aes'16 g'16 aes'16 bes'16 f'16\glissando  g'16 es'16 f'8 es'16~ 
      \bar "||" \mark \default es'8 des'8 \tuplet 3/2 {bes8 es8 es8~} es16 aes16 ges16 es16 des16 es16 r8 
      | r4 r8. es16 fis16 g16 aes16 a16 \tuplet 3/2 {bes8 es8 fis8~} 
      | fis16 g16 aes16 a16 \tuplet 3/2 {bes8 es16 r8.} r2 
      | r8 es'8 \tuplet 5/4 {fis'8 g'16 aes'16 a'16} \tuplet 6/4 {bes'8 es'16 fis'8 g'16} aes'16 a'16 bes'16 es'16 
      | \tuplet 5/4 {fis'8 g'16 aes'16 a'16} \tuplet 3/2 {bes'8 a'4~} a'8 es8 fis16 g16 aes16 a16 
      | \tuplet 6/4 {bes8 es16 fis8 g16} aes16 a16 bes16 es'16 \tuplet 6/4 {fis'8 g'16 aes'16 a'16 bes'16~} bes'16 es'16 fis'16 g'16 
      | aes'16 a'16 bes'16 es'16 fis'16 g'16 aes'16 a'16 bes'8 es'8 r4 
      | r4 \tuplet 3/2 {r8 d'8 es'8~^\markup{\left-align \small vib}} es'4. des'8 
      | \tuplet 6/4 {c'8 bes8 aes16 g16} ges8 r8 r2 
      | r8 aes,8~ aes,4. r8 r4 
      | r2 r8 aes16 b16 \tuplet 3/2 {es'8 f'8 f'8~} 
      | f'8\glissando  ges'4. \tuplet 3/2 {es'8 ges'8 es'8} ges'8 es'8 
      | des'8 bes16 aes16 es8\glissando  ges8 aes4. ges8 
      | \tuplet 3/2 {es8\glissando  f8 g8} \tuplet 3/2 {bes4 es'8~} es'4~ es'16\glissando  fis'16 g'16 bes'16~ 
      | bes'8. es''16~ es''2 r4 
      | r4 r8 des''8 bes'8. es'16~ es'8 es'8~ 
      | \tuplet 3/2 {es'8 des''8 c''8~} c''8 aes'8 f'8 es'4^\markup{\left-align \small vib} r8 
      | r2 r8 des''16 c''16~ c''8 aes'16 f'16 
      | \tuplet 3/2 {c'8 es'8 g'8} \tuplet 3/2 {f'8 d'16 r8.} r2 
      | r8 c'8 b16 c'16 es'16 f'32 g'32 bes'16 a'16 aes'8 \tuplet 5/4 {c'16 g'16 f'16 c'16 e'16} 
      | \tuplet 6/4 {ges'8 d'8 des'16 b16} \tuplet 3/2 {bes8 aes8 g8} f16 es16 f8 g16 bes16 r8 
      | r4 r8. bes16 es'16 d'16 es'16 f'16 g'8 es'8 
      | r1 
      | r8. es'16 aes'16 g'16 ges'16 es'16 \tuplet 6/4 {aes'8 g'16 ges'16 ges'16 es'16~} \tuplet 7/8 {es'32 aes'16 g'32 ges'32 ges'32 es'32~} 
      \bar "||" \mark \default \tuplet 6/4 {es'16 aes'16 g'16 ges'16 ges'16 es'16} \tuplet 6/4 {aes'8 g'16 ges'16 ges'16 es'16} \tuplet 6/4 {aes'8 g'16 ges'16 ges'16 es'16} \tuplet 6/4 {aes'8 g'16 ges'16 ges'16 es'16} 
      | \tuplet 6/4 {aes'16 g'16 ges'16 es'16 aes'8} \tuplet 6/4 {g'16 ges'16 es'16 aes'16 g'16 ges'16~} \tuplet 6/4 {ges'16 es'16 aes'16 g'16 ges'16 es'16} \tuplet 5/4 {aes'16 g'16 ges'16 es'16 aes'16} 
      | g'16 ges'16 es'16 aes'16 ges'16 es'16 aes'16 ges'16 es'16 aes'16 ges'16 es'16 \tuplet 5/4 {aes'16 ges'16 es'16 aes'16 ges'16} 
      | \tuplet 5/4 {es'16 aes'16 ges'16 es'16 aes'16} \tuplet 5/4 {ges'16 es'16 aes'16 ges'16 es'16} \tuplet 6/4 {aes'16 ges'16 es'16 aes'16 ges'16 es'16} aes'16 ges'32 es'32 aes'32 ges'32 es'32 aes'32 
      | \tuplet 6/4 {ges'16 es'16 aes'16 ges'16 es'16 aes'16} \tuplet 3/2 {ges'8 es'4~^\markup{\left-align \small vib}} es'8 r8 r4 
      | r8 des'16 bes16 des'16 es'16 f'16 es'16 des'8 bes16 des'16~ \tuplet 3/2 {des'8 bes8 des'8} 
      | \tuplet 5/4 {bes16 des'8. bes16} des'8 bes8 es8 ges8 aes8 bes8~ 
      | bes8 r8 r2. 
      | r2 r8 aes'16 aes'16 \tuplet 3/2 {c''8 es''8 g''8~} 
      | g''8 ges''8 r2. 
      | r1 
      | r8 des''16 es''16~ es''4. des''8 \tuplet 6/4 {des''8 aes'8 bes'16 ges'16~} 
      | \tuplet 6/4 {ges'16 f'16 e'16 es'8 des'16~} \tuplet 6/4 {des'16 aes8 c'16 es'16 des'16~} des'32 b16 aes32 g16 aes32 a32 \tuplet 6/4 {bes16 f16 ges8 aes16 ges16} 
      | f4.. es16\glissando  g8 bes8 r4 
      | r2. \tuplet 6/4 {r4 es'16 fis'16~} 
      | fis'16 g'16 aes'16 a'16 \tuplet 3/2 {bes'8 es'8 es'8~} \tuplet 6/4 {es'16 fis'16 g'16 es'8 des'16} ges'8 e'8 
      | des'16 c'16 r8 r2 \tuplet 6/4 {r4 c'16 f'16~} 
      | \tuplet 6/4 {f'16 g'16 c''16 aes'16 f'16 c'16} e'16 c'16. e'32 d'32 c'32 es'16 es'16 d'16 c'16 \tuplet 3/2 {bes8 a8 aes8} 
      | \tuplet 6/4 {c'16 g8. f16 bes16~} bes8 aes8~^\markup{\left-align \small vib} aes4. es'8 
      | fis'8 g'8 fis'8 g'8 \tuplet 3/2 {es'4 f'8~} f'8 es'8~ 
      | es'8. des'16~ des'4 bes8 es4. 
      | es16 aes8 ges16 \tuplet 6/4 {aes4~ aes16 ges16} aes4. bes8 
      | \tuplet 3/2 {fis8\glissando  g8 es8~^\markup{\left-align \small vib}} es4 r4 \tuplet 3/2 {r8 g8 bes8} 
      | \tuplet 3/2 {aes4 b8} c'8 es'4 es'8 \tuplet 3/2 {es'4 es'8} 
      \bar "||" \mark \default \tuplet 3/2 {des'8 es'4~} es'2~ es'8 r8\bar  ".."
    }
    >>
>>    
}
