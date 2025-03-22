\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Pass It On"
  composer = "Steve Coleman"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key c \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | es1 
      | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 
      | f1:min | des1 | f1:min | ges1:7 | c1:min7 | es1 | c1:min7 | es1 
      | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 
      | f1:min | des1 | f1:min | ges1:7 | c1:min7 | es1 | c1:min7 | es1 
      | c1:min7|
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

      \tempo 4 = 105
      \set Score.currentBarNumber = #0

      | r4 r8. c''16~ \tuplet 5/4 {c''16 bes'16 g'16 es'16 d'16} \tuplet 3/2 {f'8 c''8 bes'8} 
      \bar "||" \mark \default r2 \tuplet 3/2 {f'8 c''8 bes'8~} bes'8 f'16 g'16 
      | r4 \tuplet 3/2 {r8 f'8 bes'8~} bes'16 bes'16 g'16. c''32~ c''16 des''8 des''16 
      | \tuplet 6/4 {c''8. des''8 bes'16~} bes'16 bes'16 c''4 g'16 c''16 \tuplet 3/2 {bes'8 f'8 es'8} 
      | g'16 bes'16 a'8 ges'16 b'16 bes'16 aes'16~ \tuplet 3/2 {aes'8 bes'8 ges'8} \tuplet 6/4 {bes'16 g'8 b'8 g'16} 
      \bar "||" r2 r16 bes16 c'16 es'16 f'16 bes'16 g'16 bes'16 
      | c''16. es''16 f''16 g''32~ \tuplet 3/2 {g''8 g''8 es''8~^\markup{\left-align \small vib}} es''8 r8 r8. f''16 
      | e''16 es''16 d''4. es''16 des''16 c''16 b'16 r4 
      | r8 a'8\glissando  bes'4. g'16 d'16 es'16 c'8 des'16 
      \bar "||" \tuplet 3/2 {c'8 aes16 r8.} r4 r8 g'16 bes'16 c''16 es''16 f''16 ges''16 
      | \tuplet 3/2 {es''8 c''8 des''8} bes'8 c''8 \tuplet 3/2 {aes'8 bes'8 ges'8} f'16 aes'8 aes'16 
      | g'16 bes'16 aes'8 \tuplet 3/2 {bes'8 c''4~^\markup{\left-align \small vib}} c''8.. bes'32~ bes'16 aes'16 es'16 bes16 
      | ges'16 gis'16\glissando  ais'8^\markup{\left-align \small vib} \tuplet 3/2 {gis'8 e'8 cis'8} r2 
      \bar "||" r2. c''8 des''8~ 
      | des''8 c''16 des''16 dis''16 e''16 f''16 e''16 \tuplet 6/4 {es''8 c''16 b'16 bes'16 es''16} des''8 c''16 es''16 
      | bes'16 g'16 es'8 f'16 bes'16 g'16 bes16~ bes8 c'16 f'16~ f'4 
      | g'16 bes'16 c''8 \tuplet 3/2 {c'8 f'8 g'8~} \tuplet 5/4 {g'16 bes16 c'16 es'16 f'16} g'16 bes'16 c''8~ 
      \bar "||" \mark \default c''8. cis''16\glissando  d''2~ \tuplet 5/4 {d''16 cis''16 d''16 f''16 d''16} 
      | bes'16 g'8 c'16 f'16 bes'16 d''8 c''16 es''16 d''16 g'16~ g'16 d''8\bendAfter #-4  g'16~ 
      | g'8 f'16 g'16 \tuplet 10/8 {bes'16. g'16 a'32 bes'16 a'32 g'32} g'8 r8 r4 
      | \tuplet 6/4 {r8 bes16 es'16 f'16 ges'16~} ges'16 a'8 ges'16 f'16 e'16 es'16 b16 ais16 b16 des'8 
      \bar "||" f16 ais16 b16 d'16 es'16 f'16 ges'16 a'16 b'16 d''16 dis''16 e''16 f''16 ges''16 es''8~^\markup{\left-align \small vib} 
      | es''16 b'16 bes'16 a'16 aes'4 g'16 bes'16 aes'16 f'16 g'16 f'16 es'16 c'16~ 
      | c'16 c'16 d'16 d'16 r4 r8. bes16 c'16 f'16 bes'16 c''16 
      | cis''16\bendAfter #+4  d''16 des''16 ges''16 e''16 des''16 b'16 es''16 des''16 ges'16 b'16 des''16 b'16 a'16 es'16 c'16 
      \bar "||" aes'8 bes'16 c''16 aes'16 c''16 bes'16 g'16~ g'8 es'16 c'16 r4 
      | r8. bes16 aes16 bes16 es'16 aes'16 bes'16 dis''16 e''16 aes''16 bes''8 aes''8 
      | r4 r8 g''8\glissando  f''8 c''16 bes'16~ bes'16 e''16 ges''16 e''16 
      | \tuplet 3/2 {des''8 b'8 gis'8} e'16 fis'16 gis'16 ais'16\glissando  e''16 f''16 dis''16 b'16 f'16 ais'16 f'8~ 
      \bar "||" f'8 e''16 d''16 es''16 c''16 bes'8 r4 c''8 d''16 g'16~ 
      | g'8 c''8 bes'16 f'16 es'16 c'16 \tuplet 6/4 {f'16 g'16 b'16 f'8 f'16} r4 
      | r8 f'4^\markup{\left-align \small vib} f'8 bes'16 g'16 f'16 e'16 f'16 ges'8 e'16~ 
      | \tuplet 6/4 {e'16 ges'8 f'8 f'16} g'8 bes'8 bes'16 d''16 dis''16 e''16 c''16 bes'16 g'16 es'16 
      \bar "||" \mark \default f'16 bes'16 g'16 es'16 f'8 bes'16 g'16~ g'16 g'8 a16~ a8 f'8\bar  ".."
    }
    >>
>>    
}
