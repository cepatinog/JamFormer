\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Pass It On"
  composer = "Kenny Wheeler"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key c \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

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

      \tempo 4 = 106
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r1 
      | r4 r16 bes'16 c''16 bes'16 d''8 es''4.~ 
      | es''8. d''16 c''8 bes'8 g'2 
      | f'16 g'16 f'16 es'16~ es'16 d'16 b16 c'16~ c'4. r8 
      \bar "||" r4 f''8 f''16 ges''16~ ges''32 f''16 e''16 es''16 d''32~ d''16 des''16 c''16 bes'16 
      | \tuplet 6/4 {a'8 bes'8 d''16 a'16~} \tuplet 6/4 {a'16 bes'16 a'8 g'16 f'16} e'16 d'16 es'16 f'16~ f'16 a'16 bes'16 d''16 
      | c''16 bes'16 g'16 f'16 bes'8 g'8 r2 
      | d''16 c''16 a'16 g'16 a'8. bes'16~ bes'8 c''4 g'8 
      \bar "||" aes'4 r4 r8 g''16 f''16 g''4~ 
      | g''8 aes''16 g''16 ges''32 f''16. e''16 es''32 d''32~ d''16 des''16 c''16 bes'16 \tuplet 3/2 {aes'8 ges'8 e'8} 
      | f'8.\bendAfter #-4  aes16~ aes4 r4 des''''8 c''''16 bes'''16~ 
      | bes'''4.\bendAfter #-4  bes8~ bes8. f''16 \tuplet 3/2 {e''8 es''4~^\markup{\left-align \small vib}} 
      \bar "||" es''4. d''8 c''4 r8 d''8 
      | d''8 f''16 g''16 a''16 bes''16 a''16 g''16 f''16 e''16 f''16 d''16 \tuplet 3/2 {des''8 c''8 bes'8~} 
      | \tuplet 5/4 {bes'16 a'16 bes'16 f''16 a'16} bes'8 c''8 bes'8 c''16 bes'16~ bes'8 r8 
      | r8. bes'16 c''16 bes'16 c''8 c''8 bes'16 c''16~ c''16 bes'16 c''16 bes'16~ 
      \bar "||" \mark \default bes'32 c''8 bes'16 c''32~ c''16 bes'16 g'16 f'16 es'16 f'16 es'16 f'16 es'8 c'8 
      | r2 f''8 a''16 bes''16 \tuplet 6/4 {c'''8 b''8 bes''16 a''16} 
      | \tuplet 3/2 {g''8 f''8 e''8} d''16 es''4. d'''32\glissando  e'''32~ e'''8 es'''8~ 
      | es'''2~ es'''8 bes''8 r4 
      \bar "||" \tuplet 3/2 {f'''8 ges'''8 f'''8~^\markup{\left-align \small vib}} f'''4 fis'''16 g'''16 aes'''8\bendAfter #-4  r4 
      | \tuplet 3/2 {r8 a'''8 g'''8} \tuplet 5/4 {f'''16 e'''16 f'''16 es'''16 d'''16} \tuplet 6/4 {c'''8 b''8 a''16 g''16~} g''32 f''32 e''32 es''16 d''16 des''32~ 
      | \tuplet 6/4 {des''16 c''16 bes'8 a'16 g'16~} \tuplet 7/8 {g'32 bes'16 a'16 g'32 f'32~} \tuplet 6/4 {f'16 e'8 d'16 es'16 f'16~} f'16 a'16 bes'16 d''16 
      | \tuplet 3/2 {c''8 bes'8 g'8} \tuplet 3/2 {f'8 c''8 d''8~^\markup{\left-align \small vib}} d''8 r8 r4 
      \bar "||" \tuplet 3/2 {f''8 g''8 f''8} g''8. f''16 es''4 c''8 r8 
      | r8.. es''32~ es''16 f''16 es''16 f''16 es''16 f''16 es''16 des''16 a'8\glissando  bes'8~ 
      | bes'4 \tuplet 5/4 {c''8 bes'16 g'16 f'16} e'16 d'16 es'16 f'16 ges'16 aes'16 bes'16 d''16 
      | cis''8 r8 r4 b'16 aes'16 b'16 aes'16 b'8 aes'8 
      \bar "||" r8. c''16~ \tuplet 3/2 {c''8 a'8 c''8~} c''4 c''8 a'8 
      | \tuplet 6/4 {r4 r16 f''16~} \tuplet 6/4 {f''8 d''8 c''16 bes'16~} \tuplet 6/4 {bes'16 a'8. a'16 bes'16~} \tuplet 5/4 {bes'16 aes'16 b'16 d''16 f''16~} 
      | f''16 g''16 a''16 b''16 e'''32 g''16 f''16 es''16 des''32~ des''16 c''16 bes'16 a'16 aes'32 bes'16 g'32 es'16. cis'32 
      | d'8 es'16 e'16 r4 \tuplet 6/4 {r8 bes8.\bendAfter #+4  c'16} bes8 a8 
      \bar "||" \mark \default g8 r8 r2.\bar  ".."
    }
    >>
>>    
}
