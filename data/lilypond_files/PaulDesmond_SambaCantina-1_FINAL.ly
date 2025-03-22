\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Samba Cantina"
  composer = "Paul Desmond"
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
      | f1:min7 
      | g1:min5-7 | c1:9- | f1:min7 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | g1:min5-7 | c1:7 | f1:min7 | s1 | d1:min5-7 | g1:9- | c1:9- | s1 
      | g1:min5-7 | c1:9- | f1:min7 | s1 | bes1:min7 | es1:7 | c1:min5-7 | f1:9- 
      | bes1:min7 | g2:min5-7 c2:7 | f1:min7 | d2:min5-7 des2:7 | c1:7 | s1 | f1:min7 | s1 
      | g1:min5-7 | c1:9- | f1:min7 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | g1:min5-7 | c1:9- | f1:min7 | s1 | d1:min5-7 | g1:9- | c1:7 | s1 
      | g1:min5-7 | c1:9- | f1:min7 | s1 | bes1:min7 | es1:7 | c1:min5-7 | f1:7 
      | bes1:min7 | g2:min5-7 c2:7 | f1:min7 | d2:min5-7 des2:7 | c1:7 | s1 | f1:min7 | s1 
      | g1:min5-7|
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

      \tempo 4 = 151
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r4 r8 g'8 aes'8 f'8 g'8 aes'8 
      \bar "||" \mark \default bes'8 aes'8 g'2.^\markup{\left-align \small vib} 
      | r2 r8 c''8~ c''16 g'8 a'16\glissando  
      | bes'2~^\markup{\left-align \small vib} bes'8 aes'16 g'16 f'8 g'8~^\markup{\left-align \small vib} 
      | g'4 r2 f'8 g'8 
      | aes'2~^\markup{\left-align \small vib} aes'8 f''4 f'8 
      | aes'4 \tuplet 3/2 {bes'4 g'8~^\markup{\left-align \small vib}} g'4 f''4 
      | es''4^\markup{\left-align \small vib} r2. 
      | r2 g''8 f''8 es''8 c''8 
      | des''8 es''8 c''8 bes'8 des''4 \tuplet 3/2 {c''4 bes'8~^\markup{\left-align \small vib}} 
      | bes'4 fis'8 g'8 aes'8 bes'8 g'8 f'8 
      | aes'4 g'8 f'4.^\markup{\left-align \small vib} r4 
      | r4 r8 g'8 aes'8 f'8 g'8 aes'8 
      | bes'8 c''8 aes'8 g'8 aes'8 bes'8 g'8 f'8 
      | g'4.^\markup{\left-align \small vib} f'8 \tuplet 3/2 {g'8\glissando  aes'4} g'16\glissando  aes'8. 
      | g'16\glissando  aes'8. \tuplet 3/2 {g'4 g'8~^\markup{\left-align \small vib}} g'2 
      | r1 
      \bar "||" es''4 c''8. e'16~^\markup{\left-align \small vib} e'4. r8 
      | r8 g'8 bes'8 g'8 aes'8 a'8 bes'8 b'8 
      | \tuplet 3/2 {c''4 aes'8} bes'4 g'4 d'4~^\markup{\left-align \small vib} 
      | d'8 r8 r4 r8 f'8 g'8 aes'8 
      | aes'8 des''8 aes'8 f'8 aes'8 des''8 aes'8 f'8 
      | aes'8 des''8 aes'8 f'8 g'16 aes'16 g'16 f'16 es'8 des'8 
      | es'2^\markup{\left-align \small vib} r4 r8 d''8 
      | f''8 e''8 es''8 d''8 a'8 ges'8 f'8 es'8 
      | des'8 f'8 aes'8 c''8 es''8. des''16~^\markup{\left-align \small vib} des''4 
      | c''4 bes'4 \tuplet 3/2 {fis'4 g'8~} g'8 r8 
      | r8. aes'16 bes'4 aes'2^\markup{\left-align \small vib} 
      | aes'2^\markup{\left-align \small vib} g'8\glissando  aes'4. 
      | g'8. c'16~^\markup{\left-align \small vib} c'4. r8 r4 
      | r4 r8 g'8 bes'8 c''8 aes'8 g'8 
      | f'4 g'4 aes'4^\markup{\left-align \small vib} c''8 r8 
      | r2. g''8 f''8 
      \bar "||" \mark \default es''8 es''8 es''8 es''8 \tuplet 3/2 {es''4 es''8~} es''8 es''8~ 
      | es''8 e'8~^\markup{\left-align \small vib} e'4. r8 r4 
      | \tuplet 6/4 {c''4~ c''16 g'16~} g'8 bes'4 f'8 aes'4~^\markup{\left-align \small vib} 
      | aes'4 r4 r16 f'16 g'8 aes'8 bes'8 
      | c''8 c''8 c''8 c''8 c''4 c''8. c''16~ 
      | c''8 des'2..^\markup{\left-align \small vib} 
      | bes'4 \tuplet 3/2 {c'4 g'8~} g'8 c'8 bes'4~^\markup{\left-align \small vib} 
      | bes'4 r4 r8 aes'8 bes'8 c''8 
      | \tuplet 3/2 {des''4 f'8~} f'8 g'4.^\markup{\left-align \small vib} r4 
      | r8. aes'16 bes'8 c''8 des''8 a'8 bes'8 b'8 
      | \tuplet 3/2 {c''4 f''8} r2. 
      | r8 bes'8 c''8 aes'8 bes'8 g'8 aes'8 f'8 
      | g'2..^\markup{\left-align \small vib} f'8~ 
      | f'16 d'8 a16 c'8 bes8 b8 d'8 f'8 aes'8 
      | g'8 aes'8 bes'8 c''8 des''8 f'8 ges'8 bes'8 
      | \tuplet 3/2 {des''4 ges''8} \tuplet 3/2 {f''4 e''8} c''8 g'8 aes'8 bes'8 
      \bar "||" c''4 c''2~^\markup{\left-align \small vib} c''8 r8 
      | r2 bes'8 bes'8 bes'8 bes'8 
      | aes'8\glissando  bes'8 bes'8 bes'8 aes'8 bes'8 bes'8 bes'8 
      | \tuplet 3/2 {aes'8\glissando  bes'4~^\markup{\left-align \small vib}} bes'4 aes'4.^\markup{\left-align \small vib} g'16 f'16 
      | aes'8. bes16~ bes8 des'4.^\markup{\left-align \small vib} r4 
      | r4 r8 f'8 g'8 aes'8 bes'4^\markup{\left-align \small vib} 
      | des''8\glissando  d''8 f''4 es''4 es'8. b'16~^\markup{\left-align \small vib} 
      | b'2 r2 
      | c''8 aes'4. des'8 f'8 aes'8 c''8 
      | es''8 c''8~^\markup{\left-align \small vib} c''4~ \tuplet 3/2 {c''8 e'8 g'8} c''8 es''8 
      | g''8 f''4.^\markup{\left-align \small vib} es''8 c''8 \tuplet 3/2 {b'8 bes'8 a'8} 
      | aes'2^\markup{\left-align \small vib} \tuplet 6/4 {aes'4~ aes'16 aes'16~} \tuplet 6/4 {aes'4~ aes'16 g'16~^\markup{\left-align \small vib}} 
      | g'4 r2. 
      | r4 \tuplet 6/4 {r4 g'16 aes'16~} \tuplet 6/4 {aes'16\glissando  bes'4 aes'16~} \tuplet 6/4 {aes'16\glissando  bes'4 aes'16\glissando } 
      | bes'2.. g'8 
      | aes'8 bes'8 g'8 f'8 g'8. f'16~ f'4 
      \bar "||" c'4.^\markup{\left-align \small vib} r8 r2\bar  ".."
    }
    >>
>>    
}
