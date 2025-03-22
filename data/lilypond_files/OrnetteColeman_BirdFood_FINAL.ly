\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bird Food"
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

      \tempo 4 = 256
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r8 ges'8~ 
       ges'8 a'8 
       \tuplet 3/2 {ais'8 b'8 c''8~} 
       c''8 a'8 
      \bar "!" bes'8 gis'8 
       a'8 aes'8 
       g'8 ges'8 
       \tuplet 3/2 {f'8 e'8 es'8} 
      \bar "!" f'8 d'8~ 
       \tuplet 3/2 {d'8 ges'8 ges'8} 
       f'4 
       r4 
      \bar "!" \tuplet 3/2 {ges'8 fis'8 g'8} 
       bes'8 gis'8 
       a'16 g'16 aes'16 f'16 
       d'8 bes8 
      \bar "!" \tuplet 3/2 {d'4 f'8} 
       d'8 bes8 
       es'8. aes'16 
       \tuplet 3/2 {bes'4 d''8} 
      \bar "!" r4 
       r4 
       c''8 d''16 c''16 
       bes'8 aes'8 
      \bar "!" bes'8 f'8~ 
       f'16 d'8 bes16~ 
       bes16 g'8 d'16 
       f'8. d'16~ 
      \bar "!" d'8. d'16 
       bes8 g8 
       c'8. bes16 
       r4 
      \bar "!" r4 
       \tuplet 3/2 {d'4 es'8} 
       f'8 g'8 
       a'8 ais'8 
      \bar "!" b'8 c''8~ 
       c''8 a'8 
       g'8 bes'8 
       f'4~^\markup{\left-align \small vib} 
      \bar "!" f'4~ 
       f'4~ 
       f'8 r8 
       r4 
      \bar "!" f'8 dis'8 
       e'16 f'8 dis'16~ 
       dis'8. e'16~ 
       e'8 e'8~ 
      \bar "!" e'16 f'8 d'16~ 
       \tuplet 3/2 {d'8 es'8 d''8~} 
       d''8 r8 
       r4 
      \bar "!" c''4 
       bes'8 a'8~ 
       a'8 bes'8 
       gis'8 a'8 
      \bar "!" bes'8. d''16~ 
       d''8 c''8 
       \tuplet 3/2 {bes'4 c''8~} 
       c''8 bes'8 
      \bar "!" a'8 r8 
       r4 
       r4 
       r4 
      \bar "!" \tuplet 3/2 {r8 ais'8 b'8} 
       bes'8 e'16 es'16 
       c'16 ais'16 b'16 bes'16 
       a'8 g'8 
      \bar "!" bes'4 
       d''8 g'8 
       r4 
       r4 
      \bar "!" r8 b'8 
       c''8 es''8\bendAfter #+4  
       ges''4~^\markup{\left-align \small vib} 
       ges''4~ 
      \bar "!" ges''4~ 
       ges''8 es''8~^\markup{\left-align \small vib} 
       es''8 b'8 
       g'8 r8 
      \bar "!" r4 
       c''8 des''8 
       \tuplet 3/2 {a'8 ais'8 b'8} 
       \tuplet 3/2 {c''8 d''8 c''8~} 
      \bar "!" c''16 bes'16 bes'16 a'16~ 
       a'8 g'8 
       bes'8 f'8 
       d'8 f'8 
      \bar "!" f''4 
       f'8 es'8 
       fis'8 g'8~ 
       g'8 d''8~ 
      \bar "!" d''8 es''8~ 
       es''8 d''8~ 
       \tuplet 3/2 {d''8 c''8 a'8~} 
       a'8 g'8 
      \bar "!" g''4 
       g'8 fis'8 
       g'8 bes'8~ 
       bes'8 a'8~ 
      \bar "!" a'8 c''16 g''16 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r8 f''8~ 
       f''4~ 
      \bar "!" f''4~ 
       f''4~ 
       f''8. d''16~ 
       d''16 bes'8 es''16~ 
      \bar "!" es''8 f''8~ 
       f''8 d''8~ 
       d''8 bes'8~ 
       bes'8 c''8~ 
      \bar "!" c''4 
       r4 
       r4 
       r4 
      \bar "!" r8 ges''8~ 
       ges''4~ 
       \tuplet 3/2 {ges''8 d''8 d''8} 
       \tuplet 3/2 {bes'8 g'8 bes'8} 
      \bar "!" c''8 r8 
       r4 
       r8. es''16~ 
       es''8 d''8~ 
      \bar "!" d''8 bes'8 
       \tuplet 3/2 {f'4 c'8} 
       bes'8 es'8 
       a'8 bes'8 
      \bar "!" \tuplet 3/2 {aes'4 g'8~} 
       g'8 ges'8 
       f'4~ 
       f'8 e'8 
      \bar "!" es'8 d'8 
       bes8 a8 
       c'8 bes8~ 
       bes16 fis8 g16 
      \bar "!" b'8 c''8 
       a'8 g'8 
       \tuplet 3/2 {bes'4 es'8} 
       des'8 bes8~ 
      \bar "!" bes16 aes'8 es'16 
       g'8 a'8 
       f'8 c'8 
       b8 g8 
      \bar "!" c'4^\markup{\left-align \small vib} 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       des'8 bes8 
       des'8 a16 bes16~ 
      \bar "!" bes8 cis'8 
       d'8 dis'8 
       e'8 f'8~ 
       f'16 d'16 bes16 ges'16~ 
      \bar "!" ges'8 des'16 g'16~ 
       g'8 a'8 
       ais'8 b'8 
       c''8 bes'8~ 
      \bar "!" bes'8 a'8 
       f'8 c'16 bes'16~ 
       bes'8 es'8 
       aes'8 bes'8 
      \bar "!" g'8 f'8 
       \tuplet 3/2 {es'8 des'8 bes8} 
       d'8 dis'8 
       e'8 f'8~ 
      \bar "!" f'8 ges'8 
       d'8 bes8 
       f'8 d'16 c'16~ 
       c'16 bes16 des'16 es'16 
      \bar "!" r4 
       r8 bes8 
       r4 
       \tuplet 3/2 {d'4 bes8} 
      \bar "!" c'8 d'8 
       es'8 f'8 
       \tuplet 3/2 {es'8 ais4} 
       r4 
      \bar "!" r4 
       r4 
       r8. b16~ 
       b8 e'8~ 
      \bar "!" e'8 b8 
       e'8 b8 
       e'8 b8~ 
       b16 e'8 b16~ 
      \bar "!" b16 e'8 b16~ 
       b16 e'8 fis'16 
       g'4 
       ges'4 
      \bar "!" e'8 b8 
       d'4~ 
       d'8 r8 
       r4 
      \bar "!" r4 
       r4 
       r8 b8 
       e'8 fis'8 
      \bar "!" g'8 ges'16 f'16~ 
       \tuplet 3/2 {f'8 e'8 d'8} 
       \tuplet 3/2 {c'8 b8 bes8~} 
       bes8 r8 
      \bar "!" r4 
       r8. a'16~ 
       a'8 c''8 
       bes'8 a'8 
      \bar "!" g'8 ges'8 
       f'8 e'8 
       d'8 bes8 
       es'8 f'8~ 
      \bar "!" f'8 c'8 
       f'8 d'8 
       a'8 c''8 
       bes'8 a'8 
      \bar "!" g'8 es'16 c'16 
       aes'8 r8 
       r4 
       r4 
      \bar "!" r8 fis'8~ 
       fis'16 g'16 a'16 ais'16~ 
       ais'8 b'8 
       bes'8 a'16 g'16~ 
      \bar "!" \tuplet 3/2 {g'8 es'8 c'8} 
       a'8 f'8 
       \tuplet 3/2 {es'8 c'4} 
       g'8 es'16 gis'16~ 
      \bar "!" gis'8 a'8 
       c''8 e'16 es'16~ 
       es'8 c'8 
       \tuplet 3/2 {d'4 es'8} 
      \bar "!" aes'8 bes'8 
       d''8 c''8 
       bes'8 gis'8 
       a'4 
      \bar "!" e''8 aes''8~ 
       aes''4 
       g'8 r8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       f''4~ 
       f''4~ 
       f''4~ 
      \bar "!" f''8 f'8~ 
       f'16 f'8 d''16~ 
       d''8 f'16 c''16~ 
       c''8 es''8~ 
      \bar "!" es''8 a'8~ 
       a'8 d''8~ 
       d''8 c''8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r8 g''8~ 
      \bar "!" g''8 ges''8 
       f''8 e''16 es''16~ 
       es''16 d''8 des''16~ 
       des''8 c''8 
      \bar "!" c''8 bes'8~ 
       bes'8 a'8 
       c'8 des'16 bes'16~ 
       bes'8 d'8 
      \bar "!" a'16 bes'8 a'16~ 
       a'8 f'8 
       e'8 r8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" d''8. c''16~ 
       c''8. bes'16~ 
       bes'8. a'16~ 
       a'8. g'16~ 
      \bar "!" g'8 bes'8~ 
       bes'8 c''8~ 
       c''8 bes'8~ 
       bes'8 a'8 
      \bar "!" es'8 c'16 bes'16~ 
       bes'4 
       \tuplet 3/2 {a'4 f'8} 
       \tuplet 3/2 {g'4 es'8~} 
      \bar "!" es'8 d'8~ 
       d'8 g'8~ 
       g'16 d'16 bes8 
       f'4 
      \bar "!" d''8 r8 
       r4 
       c''8 gis'8 
       a'8. d''16~ 
      \bar "!" d''8 c''8 
       g'8 es'8 
       c'8 r8 
       r4 
      \bar "!" r4 
       r16 g'8 es''16~ 
       es''8 ges''8~^\markup{\left-align \small vib} 
       ges''8 c''8 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r8 cis''8~ 
       cis''16 d''8 cis''16~ 
       cis''8 d''8 
      \bar "!" cis''8 d''8~ 
       d''16 cis''8 d''16~ 
       d''8 cis''8 
       d''8 cis''8 
      \bar "!" d''8 cis''8 
       d''8 b'8 
       g'8 r8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       cis''8 d''8 
      \bar "!" cis''8 d''8 
       cis''8 d''8 
       cis''8 d''8 
       cis''8 d''8 
      \bar "!" cis''8 d''8 
       b'8. g'16 
       r4 
       r4 
      \bar "!" r4 
       \tuplet 3/2 {r8 b'8 c''8~} 
       c''8 a'8~^\markup{\left-align \small vib} 
       a'4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" bes'4~ 
       bes'4~ 
       bes'4 
       d'4 
      \bar "!" f'4 
       \tuplet 3/2 {bes'4 c''8~} 
       c''8 d''8~ 
       d''8 es''8~ 
      \bar "!" es''8 d''8~ 
       d''8 bes'8~ 
       bes'8 c'8 
       bes'4 
      \bar "!" f'4 
       g'8. bes'16~ 
       bes'8. a'16~ 
       a'8 g'8~ 
      \bar "!" g'8 f'8 
       r4 
       r4 
       r4 
      \bar "!" r8. aes''16~ 
       aes''4~ 
       aes''4~ 
       aes''4~ 
      \bar "!" aes''4 
       \tuplet 3/2 {g''4 f''8~} 
       f''8 d''8~^\markup{\left-align \small vib} 
       d''8. c''16~ 
      \bar "!" c''8 bes'8~ 
       bes'4 
       \tuplet 3/2 {aes'4 e'8~} 
       e'4 
      \bar "!" \tuplet 3/2 {es'4 es'8~} 
       es'8 d'8 
       r4 
       r4 
      \bar "!" e'8 des'8~^\markup{\left-align \small vib} 
       des'4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       bes8 des'8 
       \tuplet 3/2 {dis'8 e'8 f'8~} 
      \bar "!" \tuplet 3/2 {f'8 e'8 ges'8~} 
       ges'16 aes'8 ges'16 
       f'4~ 
       f'16 e'8 d'16~ 
      \bar "!" d'8 r8 
       r4 
       r4 
       c''8 d''8 
      \bar "!" c''8 bes'8 
       a'8 g'8 
       \tuplet 3/2 {f'4 d'8} 
       es'8 des'8 
      \bar "!" r4 
       r8. bes'16~ 
       bes'16 c''8 bes'16~ 
       bes'8 bes'16 a'16~ 
      \bar "!" a'8 g'8~ 
       g'8 f'8 
       \tuplet 3/2 {es'4 d'8~} 
       d'8 ais8 
      \bar "!" r4 
       r4 
       b8 bes8~ 
       bes4 
      \bar "!" g'4 
       a'8 g'8~ 
       g'8 a'8~ 
       a'8 bes'8~ 
      \bar "!" bes'8 bes'8 
       g'4 
       \tuplet 3/2 {es'4 c'8} 
       d'8 f'8 
      \bar "!" d'8 bes8 
       es'8 r8 
       r4 
       r8. d''16~ 
      \bar "!" d''4 
       \tuplet 3/2 {b'8 bes'8 gis'8} 
       a'16 aes'16 ges'16 es'16 
       des'16 b8 aes16 
      \bar "!" ges8 r8 
       r4 
       r4 
       ges''4~ 
      \bar "!" \tuplet 6/4 {ges''4 f''16 es''16} 
       d''16 des''16 c''16 b'16 
       \tuplet 5/4 {bes'8 a'16 g'16 ges'16} 
       es'16 b8 f'16 
      \bar "!" \tuplet 3/2 {g'8 a'8 g''8} 
       b'8 r8 
       r4 
       r4 
      \bar "!" r4 
       r4 
       a'8 b'8~ 
       b'8 b'8 
      \bar "!" d''16 ges'16 ais'8 
       b'8 b'8~ 
       b'8 b'8~ 
       b'8 e''8~^\markup{\left-align \small vib} 
      \bar "!" e''8. d''16~ 
       d''8 r8 
       r4 
       r8 ges'16 b'16~ 
      \bar "!" b'8 d''8 
       e''8 b'8 
       c''4 
       a'8. g'16~^\markup{\left-align \small vib} 
      \bar "!" g'8 r8 
       r4 
       r4 
       r4 
      \bar "!" r8 g'8 
       bes'8 c''8 
       \tuplet 3/2 {des''8 cis''8 d''8} 
       es''8 ges''8~ 
      \bar "!" ges''8 des''8 
       r4 
       r8. aes''16~ 
       aes''8 d''8 
      \bar "!" r4 
       r4 
       r8 aes''8~ 
       aes''4~ 
      \bar "!" aes''4~ 
       aes''4~ 
       \tuplet 3/2 {aes''8 aes'8 g'8} 
       aes'8\glissando  aes''8~ 
      \bar "!" aes''8 r8 
       r4 
       r8 d''8~ 
       d''8 b'8 
      \bar "!" \tuplet 3/2 {c''8 g''4~} 
       g''16 c''8\glissando  aes''16~ 
       aes''4 
       r4 
      \bar "!" r8 ges''8 
       f''8 r8 
       r4 
       r4 
      \bar "!" r8 ges''8~ 
       ges''4~ 
       ges''4~ 
       ges''4~ 
      \bar "!" ges''8 es''8~ 
       \tuplet 3/2 {es''8 d''8 es''8} 
       ges''4~ 
       ges''4 
      \bar "!" es''8 d''16 es''16~ 
       es''8 g''8~ 
       g''8\bendAfter #+4  ges''8 
       f''8 d''16 des''16~ 
      \bar "!" \tuplet 3/2 {des''8 c''8 b'8~} 
       b'8 bes'8 
       aes'8 r8\bar  ".."
    }
    >>
>>    
}
