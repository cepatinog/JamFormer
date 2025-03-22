\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Samba Cantina (Solo 2)"
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

      | g1:min5-7 | c1:9- | f1:min7 | s1 | bes1:min7 | es1:7 | aes1:maj | s1 
      | g1:min5-7 | c1:7 | f1:min7 | s1 | d1:min5-7 | g1:9- | c1:9- | s1 
      | g1:min5-7 | c1:9- | f1:min7 | s1 | bes1:min7 | es1:7 | c1:min5-7 | f1:9- 
      | bes1:min7 | g2:min5-7 c2:7 | f1:min7 | d2:min5-7 des2:7 | c1:7 | s1 | f1:min7|
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

      \tempo 4 = 153
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default aes'4 bes'4.^\markup{\left-align \small vib} f'4 g'8~^\markup{\left-align \small vib} 
      | g'4.. bes'16~ bes'8 des''4.^\markup{\left-align \small vib} 
      | c''4 aes'4.^\markup{\left-align \small vib} bes'4 g'8~^\markup{\left-align \small vib} 
      | g'4. aes'8 f'8 g'8 aes'4~ 
      | aes'8 des'4.^\markup{\left-align \small vib} r2 
      | r8 es'8 f'8 aes'8 g'8 f'8 es'8 des'8 
      | c'1^\markup{\left-align \small vib} 
      | r1 
      | es'4.^\markup{\left-align \small vib} e'8~ e'8. es''16~^\markup{\left-align \small vib} es''4~ 
      | es''4 des''8 a'8 bes'8 b'8 c''8 aes'8 
      | bes'8 c''8 aes'8 g'8 aes'8 bes'8 c''4 
      | r1 
      | g''8 e''8 c''8 a'8 f'8 c'8 a8 bes8 
      | b8 d'8 f'8 g'8 aes'8 a'8 bes'8 b'8 
      | c''8 aes'8 f'8 d'8 c'8 aes8 bes8 b8 
      | d'8 f'8 g'8 aes'8 bes'4 c''4 
      \bar "||" c''2^\markup{\left-align \small vib} r2 
      | r4 f'8 g'8 aes'4 bes'8\bendAfter #-4  a'8 
      | bes'1^\markup{\left-align \small vib} 
      | r4 r8 g'8 aes'8 bes'4 g'8 
      | aes'4.^\markup{\left-align \small vib} g'8 aes'8 bes'8 aes'16 bes'16 aes'16 f'16 
      | aes'4 g'16 f'8 g'16~ g'8. e''16 f''4 
      | es''2^\markup{\left-align \small vib} r2 
      | r4 r8 f'8 ges'8 a'8 bes'8 c''8 
      | \tuplet 3/2 {es''4 des''8~} des''4 c''4.^\markup{\left-align \small vib} bes'8~ 
      | bes'16 c''16 des''8 \tuplet 3/2 {c''4 bes'8~^\markup{\left-align \small vib}} bes'4 r4 
      | r4 c''8 bes'8 aes'8 g'8~ \tuplet 6/4 {g'4~ g'16\glissando  a'16} 
      | bes'2~^\markup{\left-align \small vib} bes'8 aes'8 g'8 aes'8 
      | c'2~^\markup{\left-align \small vib} c'8 r8 r4 
      | r8 f'8 e'8 f'8 g'8 aes'8 bes'8 g'8 
      | aes'4. bes'8~ bes'2\bar  ".."
    }
    >>
>>    
}
