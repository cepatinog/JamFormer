\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Infant Eyes"
  composer = "Wayne Shorter"
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

      | g1:min7 | f1:min7 | es1:maj | a1:13.9- | ges1:maj | f1:9sus4 | es1:min7 | bes1:9sus4 
      | bes1:7 | es1:maj | e1:maj/dis | es1:maj11+.9 | e1:maj11+.9 | b1:maj | bes1:9sus4 | aes1:min7 
      | es1:9sus4 | d1:9+5+ | g1:min7 | f1:min7 | es1:maj | a1:13.9- | ges1:maj | f1:9sus4 
      | es1:min7 | bes1:9sus4 | s1 | g1:min7|
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

      \tempo 4 = 51
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r4 \tuplet 12/8 {r8. ges'32\glissando  g'8 a'32\glissando } \tuplet 6/4 {c''8 g'8 b'16\glissando  c''16\glissando } bes'8 g'8^\markup{\left-align \small vib} 
      | r4 \tuplet 12/8 {r8.. g'16. bes'32\glissando  c''32~} c''16 bes'16 g'16 f'16~ f'8 c'8 
      | bes8 d'4.^\markup{\left-align \small vib} r2 
      | r4 r16 a16 aes16 g16 \tuplet 3/2 {des'4 c'8} \tuplet 6/4 {b4 bes'16 g'16} 
      | ges'16 f'2...^\markup{\left-align \small vib} 
      | c'4 \tuplet 6/4 {r16 b'16 c''16 b'16 bes'8~} bes'4~ \tuplet 6/4 {bes'4 f'16 e'16} 
      | es'4.^\markup{\left-align \small vib} des'16 bes16 \tuplet 6/4 {d'16 es'8. d'16 es'16~} es'8 des'16 bes16 
      | \tuplet 6/4 {es'16 des'16 bes4~^\markup{\left-align \small vib}} bes4 r4 r16 bes8 aes,16~ 
      | aes,16 b,16 e8 ges8 aes8~ \tuplet 14/16 {aes16~ aes64 b8 e'64~} \tuplet 12/8 {e'8. ges'16 aes'16. bes'32~^\markup{\left-align \small vib}} 
      \bar "||" bes'2 r4 \tuplet 6/4 {r8. bes'16\glissando  d''16 es''16} 
      | des''2.. bes'8 
      | \tuplet 5/4 {a'8. e''16 f''16~} f''2~ f''8 a'8 
      | aes'4.^\markup{\left-align \small vib} r8 r4 r8. bes'16 
      | \tuplet 3/2 {b'8 des''4~^\markup{\left-align \small vib}} des''8 bes'8 \tuplet 3/2 {des''4\glissando  bes'8~} \tuplet 15/16 {bes'32 b'32\glissando  des''16. bes'32. c''64\glissando  des''64~} 
      | \tuplet 11/8 {des''32 bes'16. a'32\glissando  bes'8 a'32 bes'32~} bes'2~ bes'16 aes'16\glissando  bes'16 a'16 
      | aes'16\glissando  g'16 ges'16 es'16~ es'4. des'8~ \tuplet 3/2 {des'8 bes8 aes8} 
      | \tuplet 3/2 {ges8\glissando  g8 aes8~} aes8 bes8~ bes4. bes8 
      | \tuplet 3/2 {c'4 d'8~} d'8 es'4 f'4. 
      \bar "||" e'16\glissando  f'2..^\markup{\left-align \small vib} d'16 
      | \tuplet 3/2 {aes8 aes'4~^\markup{\left-align \small vib}} aes'4 r2 
      | \tuplet 14/16 {g'16~ g'64 f'16 f32. es'64\glissando  f'64~} f'4. d'4 c'16 bes16 
      | \tuplet 3/2 {aes'8 bes'4~^\markup{\left-align \small vib}} bes'2~ bes'8. f'16~ 
      | f'16 aes,16 aes16 bes16~ bes8 b8 c'8 des'8~ \tuplet 10/8 {des'16. c'16. des'16. d'32~} 
      | \tuplet 12/8 {d'8 es'8.. es'32} f'4~ \tuplet 14/16 {f'16~ f'64 g'8 a'64~} \tuplet 3/2 {a'8 bes'8 c''8} 
      | c''16\glissando  des''8.~ des''16 c''16 b'16 bes'16~ bes'8 es'8 \tuplet 6/4 {bes'8\glissando  c''16 des''16 bes'16 bes'16} 
      | aes'16 aes'16\glissando  bes'16 es''16~ es''2.~ 
      | es''4. es''8 \tuplet 6/4 {c''4 f'16 g'16~} g'8 f'16 es'16 
      \bar "||" d'2^\markup{\left-align \small vib} r2\bar  ".."
    }
    >>
>>    
}
