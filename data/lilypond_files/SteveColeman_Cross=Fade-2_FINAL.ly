\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cross-Fade (Solo 2)"
  composer = "Steve Coleman"
  tagline = ##f
}
global =
{

    \time 9/4
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

      | r1 s1 s4
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
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r4 \tuplet 3/2 {r8 g'8 a'8} \tuplet 3/2 {b'8 des''8 a'8} g'16 b'16 e''16 ges''16~ \tuplet 6/4 {ges''8 e''8. des''16~} des''4. c''8 r2 
      | r16 c'16 d'16 f'16~ f'16 g'16 bes'16 c''16 d''16 f''8 ges''16~ \tuplet 6/4 {ges''8 e''8. des''16~} des''8 b'8 c''4~^\markup{\left-align \small vib} \tuplet 3/2 {c''8 bes'8 g'8} es'8 a'8 b'4 
      | r4 \tuplet 3/2 {r8 ges'8 a'8} \tuplet 3/2 {e'8 b8 des'8} ges'8 es'4 aes'8 es'16 des'16 ges'16 aes'16 g'8 f'8 bes'16 c''8 g'16~ g'16. ais'16 b'16 bes'32~ 
      | bes'16 a'16 ges'16 e'16 \tuplet 3/2 {b8 ges'8 a'8} \tuplet 3/2 {g'8 es'16 r8.} \tuplet 6/4 {r4 r16 g'16~} \tuplet 6/4 {g'16 f'8 d'16 bes16 c'16~} c'16 es'16 bes8 a16 g8. \tuplet 3/2 {a8 g8 a8} des'16 es'16 fis'16 g'16 
      | b'16 des''16 f''16 g''16~ g''8 r8 r2. r1\bar  ".."
    }
    >>
>>    
}
