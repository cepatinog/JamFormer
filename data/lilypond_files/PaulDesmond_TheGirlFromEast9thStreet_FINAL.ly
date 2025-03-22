\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Girl from East 9th Street"
  composer = "Paul Desmond"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key aes \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | aes1 | des1:7 | c1:min7 | s2 f2:7 | bes1:7 | es1:7 | es1:min7 | aes1:7 
      | des1 | s1 | des1:min7 | s2 ges2:7 | b1:min7 | e1:7 | a1:7 | bes2:min7 es2:7 
      | aes1:7 | des1:7 | c1:min7 | s2 f2:7 | bes1:min7 | es1:7 | es1:min7 | aes1:7 
      | des1:7 | des2:min7 ges2:7 | b1 | f1:7 | bes1:min7 | es1:7 | aes1 | es1:7 
      | aes1:7 | des1:7 | c1:min7 | s2 f2:7 | bes1:min7 | es1:7 | es1:min7 | s1 
      | des1:7 | s1 | des1:min7 | s2 ges2:7 | b1:min7 | e1:7 | a1 | bes2:min7 es2:7 
      | aes1 | des1:7 | c1:min7 | s2 f2:7 | bes1:min7 | es1:7 | es1:min7 | aes1:7 
      | des1 | des2:min7 ges2:7 | b1 | f1:7 | bes1:min7 | es1:7 | aes1 | es1:7 
      | f1|
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

      \tempo 4 = 142
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default es'4. f'8 g'8 aes'4. 
      | bes'2..^\markup{\left-align \small vib} aes'8 
      | fis'16\glissando  g'8 g'16 g'8 g'8 fis'16\glissando  g'8. \tuplet 6/4 {g'4~ g'16 fis'16\glissando } 
      | g'4~ \tuplet 6/4 {g'16 g'4 fis'16\glissando } g'4 es'4 
      | es'2..^\markup{\left-align \small vib} r8 
      | r4 r8 c''8 \tuplet 3/2 {b'8 c''8 bes'8} g'8 es'8 
      | c'16 des'8.~^\markup{\left-align \small vib} des'2~ des'8 r8 
      | r4 r8 bes'8~ bes'16 aes'16 bes'8 aes'4 
      \bar "||" f'2.^\markup{\left-align \small vib} r4 
      | r4 r8. aes'16 c''8 es''8 c''8 aes'8 
      | d'16\glissando  e'8. e'2~^\markup{\left-align \small vib} e'8 r8 
      | r4 r8 es''8 fis''8 es''8 des''8 bes'8 
      | \tuplet 3/2 {a'4 a'8~^\markup{\left-align \small vib}} a'4 b'8 aes'8 a'8 b'8 
      | aes'8 a'4.^\markup{\left-align \small vib} g'8\glissando  aes'8 b'4 
      | e'2 r2 
      | r8 f'8 g'4^\markup{\left-align \small vib} b'4 g'4 
      \bar "||" bes'4.^\markup{\left-align \small vib} es'8 es'4. bes'8 
      | r4 r8 es'8~ es'16 bes'8 bes'16~ bes'16 es'8 es'16 
      | bes'4 bes'4 bes'4. es'8 
      | es'4^\markup{\left-align \small vib} r4 r8 c''8 r4 
      | c''4 r4 r8. f'16~ f'8. es'16 
      | g'4 aes'4 a'8 bes'4.~ 
      | bes'8 bes'8~^\markup{\left-align \small vib} bes'4. f'8 ges'8 aes'8 
      | a'8 c''8 f''8 f'8 a'8 c''8 a'8 f'8 
      \bar "||" c'2~^\markup{\left-align \small vib} c'8. des'16 f'8 aes'8 
      | b'8 bes'8~ \tuplet 6/4 {bes'4~ bes'16 aes'16} r2 
      | r2. r8 bes'8 
      | a'4. f'8 c'8 a8 c'8 f'8~ 
      | \tuplet 6/4 {f'8 a'8. bes'16~^\markup{\left-align \small vib}} bes'2.~ 
      | bes'4. aes'8~ \tuplet 7/8 {aes'32 g'32 aes'32 g'16 f'32 es'32~} es'8 des'8 
      | es'4 es'4 bes'4 es''8 r8 
      | r4 r8 es'8 bes'8 bes'8 \tuplet 3/2 {es''4 es''8} 
      \bar "||" \mark \default bes'4 bes'4 es'4.^\markup{\left-align \small vib} r8 
      | r4 bes'16 es''16 r8 \tuplet 6/4 {r4 r16 es''16~} es''8 g''8 
      | r4 r8 g''8 es''8 es''8 bes'8 bes'8 
      | g'4 g'4 a'4^\markup{\left-align \small vib} f'4 
      | c''4.^\markup{\left-align \small vib} f'8 aes'8 r8 r4 
      | r8 bes8 c'8 des'8 es'8 f'8 ges'8 aes'8 
      | a'16\glissando  bes'8 a'16\glissando  bes'4 bes'4.^\markup{\left-align \small vib} es'8~^\markup{\left-align \small vib} 
      | es'4 r4 r8 aes'4\bendAfter #-4  es'8~^\markup{\left-align \small vib} 
      \bar "||" es'4. des'8 f'8 aes'8~ aes'16 c''8 es''16~ 
      | es''16 c''8 aes'16~ aes'16 f'8 aes'16~ aes'16 c''8 f'16~ \tuplet 3/2 {f'8 aes'8 b'8~} 
      | b'16 aes'8 e'16~ \tuplet 3/2 {e'8 des'8 b8} es'4 fis'4 
      | es'2^\markup{\left-align \small vib} r4 r8 fis'8 
      | des''4 b'8. fis'16~ fis'4 aes'4^\markup{\left-align \small vib} 
      | r4 r8 a'8 b'8 aes'8 a'8 b'8 
      | fis'16\glissando  aes'8. g'16\glissando  aes'8. e'2^\markup{\left-align \small vib} 
      | r2 r8 f'8~ f'16 b'16 c''8 
      \bar "||" es''4 g'4 es''4.^\markup{\left-align \small vib} f'8 
      | r4 r8 es''4.^\markup{\left-align \small vib} g'8 r8 
      | r8. es''16~ es''8 g'8 es''4 f'4 
      | g'4~^\markup{\left-align \small vib} g'16 es''8 a'16 r2 
      | r8. f''16 aes'4 f'4.^\markup{\left-align \small vib} aes'8~ 
      | aes'8 a'8 bes'8. c''16~^\markup{\left-align \small vib} c''4 des''4 
      | f''8 ges''8 es''8 des''8~ des''16 bes'8 ges'16~ ges'16 f'8 es'16 
      | aes'4^\markup{\left-align \small vib} r2 r8 c''8~ 
      \bar "||" c''16 es''8 c''16~ c''16 aes'8 f'16 aes'4.^\markup{\left-align \small vib} bes'8 
      | b'8 aes'8~ \tuplet 3/2 {aes'8 e'8 des'8} es'4 e'4 
      | fis'2^\markup{\left-align \small vib} r4 r8 des'8 
      | c'8 f'8 a'8 c''8 f''8 c''8 a'4 
      | bes'2^\markup{\left-align \small vib} r2 
      | \tuplet 3/2 {bes'8 b'8 c''8} es''2.~^\markup{\left-align \small vib} 
      | es''8 bes'8~ bes'16 bes'8 aes'16~ aes'16 bes'8 bes'16~ bes'8 bes'8~^\markup{\left-align \small vib} 
      | bes'4. \tuplet 6/4 {bes'16 a'16 aes'16} g'8 ges'8 f'8 e'8 
      \bar "||" es'4.^\markup{\left-align \small vib} r8 r2\bar  ".."
    }
    >>
>>    
}
