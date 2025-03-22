\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "My Little Suede Shoes"
  composer = "Charlie Parker"
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
      | s4 r2. 
      | f2:min7 bes2:7 | es1:maj | f2:min7 bes2:7 | es1:maj | f2:min7 bes2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es1:maj 
      | f2:min7 bes2:7 | es1:maj | f2:min7 bes2:7 | es1:maj | f2:min7 bes2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es1:maj 
      | aes1:maj | g2:min7 c2:7 | f2:min7 bes2:7 | es1:maj | aes1:maj | g2:min7 c2:7 | f2:min7 bes2:7 | es1:maj 
      | f2:min7 bes2:7 | es1:maj | f2:min7 bes2:7 | es1:maj | f2:min7 bes2:7 | g2:min7 c2:7 | f2:min7 bes2:7 | es1:maj 
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

      \tempo 4 = 146
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2 r8 c'4 es'16 g'16 
      \bar "||" \mark \default \tuplet 3/2 {bes'4 g'8} aes'8. b16~ b8 g'4 f'8 
      | cis'8\glissando  d'4 f'8 r4 r8 es'8~ 
      | es'16 c'16 g'16 bes'16~ \tuplet 6/4 {bes'8. g'8 aes'16~} aes'8 des''8 b'16 des''16 b'16 a'16 
      | bes'8 g'4.^\markup{\left-align \small vib} r2 
      | r8. e'16 \tuplet 3/2 {f'8 aes'8 c''8} es''8 d''8 c''8 b'8~ 
      | b'16 c''16 bes'16 aes'16 g'8 f'8 e'8 g8 bes8 des'8 
      | \tuplet 3/2 {c'4 bes8~} bes16 c'16 es'16 g'16 \tuplet 3/2 {f'4 bes8} \tuplet 3/2 {d'4 es'8~^\markup{\left-align \small vib}} 
      | es'4. bes'8 c''4\glissando  es''8 c''8 
      \bar "||" bes'8 aes'4.^\markup{\left-align \small vib} r2 
      | r8. es'16 fis'16 g'16 aes'16 a'16 bes'16 aes'16 g'16 f'16 e'16 g16 bes16 des'16 
      | c'16 b16 bes16 a16 \tuplet 5/4 {aes8 g'8 ges'16} f'4 es'16 cis'16 d'16 b'16 
      | \tuplet 3/2 {aes'8 a'8 bes'8~} \tuplet 6/4 {bes'4 c''16 b'16} bes'16 aes'16 g'16 f'16 e'8 bes16 des'16 
      | \tuplet 6/4 {c'8 bes16 c'16 es'16 g'16} f'4 r2 
      | a'8 c''8 des''16 c''16 des''16 c''16 bes'16 aes'16 g'16 f'16 e'16 g16 bes16 des'16 
      | c'16 bes16 c'16 es'16 \tuplet 6/4 {g'8 f'16 c'16 bes16 aes16} f'4 \tuplet 6/4 {ges'8 des'16 c'16 bes16 aes16} 
      | r4 r8 bes'16 aes'16 g'16 f'16 es'16 bes16 \tuplet 5/4 {des'8 c'16 es'16 g'16} 
      \bar "||" \tuplet 6/4 {bes'8 g'16 aes'16\glissando  c''16 f''16} g''16 f''16 r8 r2 
      | r8 bes'8 c''16\glissando  d''8 c''16~ c''8 b'8 \tuplet 3/2 {bes'4 a'8} 
      | g'16\glissando  aes'8 c'16 \tuplet 3/2 {g'4 f'8} b8 bes'8 aes'8 bes'16 aes'16 
      | \tuplet 3/2 {g'4 f'8~} f'16 es'16 bes16 des'16~^\markup{\left-align \small vib} des'4~ \tuplet 6/4 {des'16 c'16 es'8 g'16 bes'16} 
      | aes'4^\markup{\left-align \small vib} r2 r8 bes'8 
      | \tuplet 3/2 {d''4 c''8} d''8 c''8 bes'16 c''16 bes'16 a'16 aes'8 g'8 
      | f'8 r8 r8. b16\glissando  c'8 es'8 fis'16 g'8 f'16~^\markup{\left-align \small vib} 
      | f'4 es'8 cis'8 d'8 bes'8 \tuplet 6/4 {g'8. c'8 f'16~} 
      \bar "||" f'4 \tuplet 3/2 {c'4 aes8} b8 fis'16\glissando  g'16~ g'4 
      | d'4^\markup{\left-align \small vib} r2. 
      | r8 bes'8 es''16 f''16 es''16 c''16~ \tuplet 5/4 {c''16 d''16 es''16 d''16 bes'16} c''16 d''16 c''16 aes'16 
      | \tuplet 5/4 {bes'16 c''16 bes'16 g'16 aes'16~} aes'16 bes'16 aes'16 f'16 g'16 aes'16 g'16 f'16 e'8 g8 
      | bes8 des'8 c'8 bes8 c'16 es'16 aes'16 g'16 \tuplet 3/2 {f'4 c'8} 
      | bes'4 bes'4.^\markup{\left-align \small vib} r8 r8 g'8 
      | aes'8 bes'8 fis'16 g'8.~ g'4~ \tuplet 6/4 {g'16\glissando  es'8. bes16 es'16~^\markup{\left-align \small vib}} 
      | es'4 r2 bes'16 a'16 aes'16 g'16 
      \bar "||" \mark \default f'4 r2.\bar  ".."
    }
    >>
>>    
}
