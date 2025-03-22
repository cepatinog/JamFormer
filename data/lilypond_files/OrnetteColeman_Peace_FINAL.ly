\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Peace"
  composer = "Ornette Coleman"
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

       r4
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

      \tempo 4 = 126
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r4 
       des'8 bes8 
      \bar "!" aes8 ges8~^\markup{\left-align \small vib} 
       ges4~ 
       ges4 
       \tuplet 3/2 {aes4 bes8} 
      \bar "!" des'8 e'8~ 
       e'4~ 
       e'8. es'16~ 
       \tuplet 3/2 {es'8 es'8 bes8} 
      \bar "!" des'4^\markup{\left-align \small vib} 
       r4 
       r8. b16~ 
       \tuplet 6/4 {b4 es'16 bes16~} 
      \bar "!" bes8 aes8~^\markup{\left-align \small vib} 
       aes8 r8 
       r8. ges'16~ 
       ges'8 es'8 
      \bar "!" \tuplet 3/2 {bes8 cis'4} 
       d'4~^\markup{\left-align \small vib} 
       \tuplet 6/4 {d'4~ d'16 ges'16~} 
       ges'8 d'8~ 
      \bar "!" d'16 bes16 es'8 
       bes8 e'8 
       fis'4 
       g'8 g'8 
      \bar "!" es'8 a'8 
       \tuplet 6/4 {a'8. d''8 b'16} 
       g'4^\markup{\left-align \small vib} 
       r4 
      \bar "!" \tuplet 6/4 {d'8 ges'8. ges'16~} 
       \tuplet 3/2 {ges'8 ges'8 a'8} 
       \tuplet 3/2 {e'8 d'4^\markup{\left-align \small vib}} 
       r4 
      \bar "!" r8. c''16~ 
       c''8 d''16 e''16 
       \tuplet 3/2 {f''8 f''8 e''8} 
       d''8 c''8 
      \bar "!" g'8 b'8 
       a'8 g'8 
       e'8 f'8 
       r4 
      \bar "!" \tuplet 3/2 {des''8 es''8 c''8~^\markup{\left-align \small vib}} 
       c''8 aes'8 
       \tuplet 6/4 {c'8 g'8. f'16~} 
       \tuplet 3/2 {f'8 es'8 c'8} 
      \bar "!" g8\glissando  b8~ 
       b16 ges'16. c'32 b32 bes32 
       gis8 a8\glissando  
       f'4 
      \bar "!" bes8 cis'16 d'16 
       r4 
       f'16 aes'16 c''8\bendAfter #+4  
       aes''4~^\markup{\left-align \small vib} 
      \bar "!" aes''8 r8 
       r4 
       r4 
       c''8. es''16 
      \bar "!" f''8 g''8~^\markup{\left-align \small vib} 
       g''4~ 
       g''8 r8 
       r4 
      \bar "!" r8. bes'16~ 
       bes'16 es''8 f''16~ 
       f''8 es''8~ 
       es''8 r8 
      \bar "!" r8 g'8~ 
       \tuplet 6/4 {g'4~ g'16 d''16~} 
       \tuplet 6/4 {d''4~ d''16 c''16~} 
       c''8 g'8 
      \bar "!" c'8 bes'8 
       es'8\glissando  c''8~ 
       c''4~ 
       \tuplet 3/2 {c''8 g'8 aes'8} 
      \bar "!" f'4~^\markup{\left-align \small vib} 
       f'8. g'16 
       \tuplet 7/8 {f'16. es'16. bes32~^\markup{\left-align \small vib}} 
       bes8 r8 
      \bar "!" r4 
       r4 
       r8. g16~ 
       g8 aes8 
      \bar "!" bes8 ges8 
       f8 r8 
       r8. f16~ 
       f8 f8 
      \bar "!" g8 e8 
       es8 r8 
       \tuplet 6/4 {r4 r16 g16~} 
       g8 bes8 
      \bar "!" d'8 g'8~ 
       \tuplet 6/4 {g'4~ g'16 f'16~} 
       f'16 g'8 c'16~^\markup{\left-align \small vib} 
       c'8 r8 
      \bar "!" r4 
       r4 
       r8.. es'32~ 
       es'8 c'8 
      \bar "!" d'8 es'8 
       \tuplet 3/2 {f'4 g'8} 
       aes'8 c''8~ 
       c''4~ 
      \bar "!" c''4 
       r4 
       r8 e'8 
       ges'16 aes'8 c''16~ 
      \bar "!" c''8\bendAfter #+4  d''8~ 
       d''4~ 
       d''4~ 
       d''8 es''8 
      \bar "!" c''4~ 
       c''16 g'8 aes'16~ 
       aes'16 bes'8 b16~ 
       b4 
      \bar "!" bes4~^\markup{\left-align \small vib} 
       bes8. g'16 
       \tuplet 3/2 {f'8 a4~} 
       a8. aes16~^\markup{\left-align \small vib} 
      \bar "!" aes4~ 
       aes8 g'8 
       \tuplet 3/2 {f'8 e'4\bendAfter #+4 } 
       c''4~^\markup{\left-align \small vib} 
      \bar "!" c''8 g'8 
       c'8 bes'8 
       aes'8 f'8^\markup{\left-align \small vib} 
       r4 
      \bar "!" r8 d''8 
       es''8 c''8 
       aes'8 bes'8~ 
       bes'16 aes'16\bendAfter #+4  g''8~ 
      \bar "!" g''4~ 
       g''4 
       f''4 
       es''8.. bes'32~^\markup{\left-align \small vib} 
      \bar "!" bes'4~ 
       bes'8. es'16~ 
       es'8 aes'8 
       aes'4~ 
      \bar "!" aes'8\bendAfter #+4  g'8 
       f'4 
       es'4^\markup{\left-align \small vib} 
       r4 
      \bar "!" r4 
       r16 es'8 g'16~ 
       \tuplet 6/4 {g'8 aes'8. ais'16~} 
       ais'8 b'8 
      \bar "!" bes'4 
       g'8 es'8 
       c'8 c''8~ 
       c''8 es''8~ 
      \bar "!" es''8 f'8~ 
       f'8 aes'8 
       f'8 c''8~ 
       c''4~ 
      \bar "!" c''8 r8 
       r8 d''8~ 
       \tuplet 6/4 {d''8 c''8. g'16~} 
       g'8 bes'8^\markup{\left-align \small vib} 
      \bar "!" r4 
       r4 
       r16 g'8 bes'16~ 
       bes'16 d''8 c''16~ 
      \bar "!" c''16 bes'8 aes'16~ 
       aes'16 g'8 f'16~ 
       f'8 e'8~ 
       \tuplet 6/4 {e'4~ e'16\bendAfter #+4  e''16~} 
      \bar "!" e''8 r8 
       r8. c''16 
       a'8 aes'8\bendAfter #+4  
       es''4 
      \bar "!" r4 
       r4 
       r4 
       r8. bes16~ 
      \bar "!" bes4~ 
       \tuplet 6/4 {bes4 d'16 f'16~} 
       f'8 es'8~ 
       es'4 
      \bar "!" bes4~ 
       bes16 d'8 f'16~ 
       \tuplet 6/4 {f'16 es'4 g16} 
       aes4 
      \bar "!" bes4~ 
       bes16 g'8 e'16~ 
       e'8 f'8~^\markup{\left-align \small vib} 
       \tuplet 6/4 {f'8 c'8. g16~} 
      \bar "!" \tuplet 6/4 {g8 bes8. aes16} 
       r4 
       \tuplet 3/2 {r8 g'8 aes'8~} 
       aes'4~ 
      \bar "!" aes'4 
       g'8.\glissando  f'16 
       es'8 a8~ 
       a4~ 
      \bar "!" a4~ 
       a16 bes32~ bes8 des''32~ 
       des''8 r8 
       r4 
      \bar "!" r8 g'8 
       fis'16 g'8 bes'16~ 
       bes'8 aes8~ 
       aes4~ 
      \bar "!" aes4~ 
       aes4~ 
       aes16 f'8 e'16~ 
       e'16 f'8 g'16~ 
      \bar "!" g'8 es'8 
       r4 
       r8 bes'8~ 
       bes'8 c''8 
      \bar "!" \tuplet 3/2 {g'8 bes'4} 
       r4 
       r8 f'8 
       g'4 
      \bar "!" e'16 f'8 d'16~ 
       d'8 c'8 
       \tuplet 3/2 {bes8 es'4} 
       es''4~ 
      \bar "!" es''4~ 
       es''4 
       r4 
       r4 
      \bar "!" r4 
       r16 d''8 f''16~ 
       f''4~ 
       f''8. es''16~ 
      \bar "!" es''8 c''8 
       bes'4^\markup{\left-align \small vib} 
       r4 
       r8. fis'16 
      \bar "!" g'8 es'8 
       bes8 r8 
       r4 
       r4 
      \bar "!" r8. bes16~ 
       bes8 d'8 
       e'8 ges'8 
       d'8 g'8 
      \bar "!" d'8\bendAfter #+4  c''8 
       es''8 d''8 
       \tuplet 3/2 {g'8 bes'4} 
       aes'8 d'8 
      \bar "!" \tuplet 6/4 {c'4 f'16 fis'16~} 
       fis'16 g'16 aes'16 ais'16 
       b'8 a'8~ 
       a'8. aes'16~ 
      \bar "!" aes'8 es'8~ 
       es'8 r8 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r8 c''8~ 
       c''16 d''32 c''32 d''32 es''32 d''32 des''32 
      \bar "!" \tuplet 6/4 {b'16 bes'8 a'16 aes'16 g'16~} 
       \tuplet 9/8 {g'32 ges'32 f'32 dis'16 e'32 ges'32 f'32 g'32} 
       gis'16 a'16 b'16 d'16 
       \tuplet 6/4 {f'16 e'16 es'16 b16 es'8} 
      \bar "!" \tuplet 5/4 {c'16 d'16 es'16 g'8~} 
       g'16. g'32 fis'16 g'32 a'32~ 
       a'32 b'32 c''32 des''32 es''32 g''32 ges''32 f''32 
       d''4 
      \bar "!" r8 g''8~ 
       g''8 e''8 
       r4 
       r8 g''8~ 
      \bar "!" \tuplet 6/4 {g''16 ges''8 f''16 e''16 es''16} 
       \tuplet 5/4 {des''16 c''16 b'16 bes'16 a'16~} 
       a'32 aes'16 g'32 ges'16 e'32 es'32 
       \tuplet 6/4 {c'8 cis'16 d'8 aes'16~} 
      \bar "!" \tuplet 6/4 {aes'16 c''16 d''16 e''16 c''8} 
       r4 
       r8.. g'32~ 
       g'8. g'16 
      \bar "!" aes'8 ais'8~ 
       ais'8 b'8 
       \tuplet 6/4 {b'8 bes'8. g'16~} 
       g'8 g'8~ 
      \bar "!" g'16 g'16 aes'8 
       b'8. b'16~ 
       \tuplet 3/2 {b'8 b'8 bes'8} 
       g'4^\markup{\left-align \small vib} 
      \bar "!" r4 
       r8 c''8 
       \tuplet 6/4 {c''8.\bendAfter #+4  c''8 bes'16~} 
       bes'8 f'8~^\markup{\left-align \small vib} 
      \bar "!" f'4 
       d''4~ 
       d''4~ 
       d''4 
      \bar "!" r4 
       r8. g'16~ 
       g'8. aes'16~ 
       aes'8 bes'8~ 
      \bar "!" bes'16 bes'8 g'16~ 
       g'8. aes'16~ 
       aes'8. bes'16~ 
       bes'8 d''8~ 
      \bar "!" d''16 d''8 c''16~ 
       \tuplet 6/4 {c''4~ c''16 f'16~} 
       f'8. aes'16~ 
       aes'8 c''8~ 
      \bar "!" c''16 c''8 bes'16~ 
       bes'8. d'16~ 
       d'8. es'16~ 
       es'8 g'8~ 
      \bar "!" g'8 e'8 
       f'8^\markup{\left-align \small vib} r8 
       r8. g'16~ 
       g'8 f'8 
      \bar "!" aes'8 r8 
       r8. bes'16~ 
       bes'8 aes'8\bendAfter #+4  
       d''8 es''8~^\markup{\left-align \small vib} 
      \bar "!" es''4~ 
       es''4~ 
       es''4~ 
       es''4~ 
      \bar "!" es''4~ 
       es''4~ 
       es''4~ 
       es''8 r8 
      \bar "!" r4 
       \tuplet 3/2 {d''4 ges''8} 
       e''8 r8 
       r8. d''16~ 
      \bar "!" d''8 r8 
       r4 
       r8. c''16~ 
       c''16 b'8 c''16~ 
      \bar "!" c''8 g''8~ 
       g''8 d''8^\markup{\left-align \small vib} 
       c''4~ 
       c''8 f''8 
      \bar "!" es''4~ 
       es''32 c''8. bes'32 
       r4 
       r8. g'16~ 
      \bar "!" g'4~ 
       g'16 es'8 bes16~^\markup{\left-align \small vib} 
       bes8 r8 
       r8. es'16~ 
      \bar "!" es'16 bes'32~ bes'8 es'32\bendAfter #+4  
       c''4~ 
       c''16 es''8 bes'16~ 
       bes'4 
      \bar "!" g'4~ 
       g'8. f'16~ 
       f'8 d'8\bar  ".."
    }
    >>
>>    
}
