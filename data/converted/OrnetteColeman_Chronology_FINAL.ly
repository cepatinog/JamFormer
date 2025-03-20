\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Chronology"
  composer = "Ornette Coleman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
    \override Rest #'direction = #'0
    \override MultiMeasureRest #'staff-position = #0
}
\score
{
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
  		
  		\override HorizontalBracket #'direction = #UP
  		\override HorizontalBracket #'bracket-flare = #'(0 . 0)
  		
  		\override TextSpanner #'dash-fraction = #1.0
  		\override TextSpanner #'bound-details #'left #'text = \markup{ \concat{\draw-line #'(0 . -1.0) \draw-line #'(1.0 . 0) }}
  		\override TextSpanner #'bound-details #'right #'text = \markup{ \concat{ \draw-line #'(1.0 . 0) \draw-line #'(0 . -1.0) }}
          \set Score.markFormatter = #format-mark-box-numbers


      \tempo 4 = 236
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       \tuplet 3/2 {ais'8\glissando  b'4} 
       a'8 bes'8~ 
      \bar "!" bes'8 dis''16\glissando  e''16~ 
       e''8 cis''8\glissando  
       d''8 des''8 
       \tuplet 3/2 {b'8 bes'8 ges'8} 
      \bar "!" aes'8 f'8 
       f'8 f'8 
       \tuplet 3/2 {f'4 g'8~^\markup{\left-align \small vib}} 
       g'4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" d'8 f'8 
       \tuplet 3/2 {d'4 des'8} 
       g'8 d'8 
       c'8 aes'8 
      \bar "!" d'8 c'8 
       gis'8 a'8 
       f'8 c'8 
       a8 g8 
      \bar "!" bes8 ges'8 
       e'8 c'8 
       cis'8 d'8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" \tuplet 3/2 {r8 d'8 e'8} 
       \tuplet 3/2 {f'8 a'8 e''8} 
       ais'8 b'8 
       a'8 g'8 
      \bar "!" bes'8 c'8~ 
       c'8. cis'16~ 
       cis'8. d'16~ 
       d'8. bes16 
      \bar "!" c'4 
       r4 
       \tuplet 3/2 {bes'8 a'8 gis'8} 
       a'8 g'8 
      \bar "!" f'8 des'8 
       r4 
       r8 bes'16 c''16~ 
       c''4~ 
      \bar "!" c''4~ 
       c''4~ 
       c''8 d''8~ 
       d''16 bes'8 c''16~ 
      \bar "!" c''8 a'8~ 
       a'8 bes'8~ 
       bes'8 bes'8\glissando  
       c''4~ 
      \bar "!" c''4~ 
       c''8 a'8 
       g'8 f'8 
       \tuplet 3/2 {g'4 a'8~^\markup{\left-align \small vib}} 
      \bar "!" a'4 
       r4 
       r4 
       r4 
      \bar "!" r8 bes'8\glissando  
       c''8 cis''8 
       d''8 c''8 
       bes'8 aes'8 
      \bar "!" g'8 des'8\glissando  
       fis'16 g'16 aes'16 f'16~ 
       f'8 es'8~ 
       es'4~ 
      \bar "!" es'8 d''8~ 
       d''16 des''8 b'16 
       c''8 r8 
       r4 
      \bar "!" ais'8 b'8 
       c''8 g'8 
       r4 
       r8 g'8~ 
      \bar "!" g'8 e'8~ 
       e'8 g'8 
       ges'4 
       d'8 bes8 
      \bar "!" e'16\glissando  f'8 g'16~ 
       g'8 e'8~ 
       e'4 
       f'8 g'8 
      \bar "!" a'8 bes'8 
       c''8 g'8 
       aes'8 ges'8 
       d'8 bes8 
      \bar "!" cis'4 
       d'8 b8~ 
       b8. b'16\glissando  
       c''8 ges''8~^\markup{\left-align \small vib} 
      \bar "!" ges''4~ 
       ges''8 r8 
       r4 
       r16 c''8 a'16~ 
      \bar "!" a'16. g'16. bes'32 d''32~ 
       \tuplet 3/2 {d''8 c'8 a'8~} 
       a'8 g'8 
       r4 
      \bar "!" r16 e''16\glissando  g''8~^\markup{\left-align \small vib} 
       g''4~ 
       g''8 r8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       \tuplet 3/2 {r8 ges''8\glissando  aes''8~} 
      \bar "!" aes''4~ 
       aes''8. e''16 
       d''8 c''8 
       r4 
      \bar "!" r8. a'16\glissando  
       bes'8 a'8~ 
       a'4 
       f'4~ 
      \bar "!" f'8 e''8\glissando  
       g''4 
       e''16 d''8 c''16 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r8 e''16 f''16~^\markup{\left-align \small vib} 
      \bar "!" f''8. c''16~ 
       c''8 a'8 
       bes'8 g'8 
       f'8 d'16 a'16~ 
      \bar "!" a'8 r8 
       r4 
       r16 c''8 bes'16~ 
       bes'8 bes'8~^\markup{\left-align \small vib} 
      \bar "!" bes'8. a'16~ 
       a'16 f'8 g'16~ 
       g'8 r8 
       r8. a'16\glissando  
      \bar "!" bes'4 
       c''8 b'8 
       c''8 bes'8 
       bes'8. g'16~ 
      \bar "!" g'16 aes'8 es''16 
       r4 
       r16 c''16\glissando  des''8 
       c''8 b'8~ 
      \bar "!" b'8 aes'8~ 
       aes'16 es'16 c'16 aes'16~ 
       aes'4 
       gis'16\glissando  a'8 c'16~ 
      \bar "!" c'8. d'16~ 
       \tuplet 3/2 {d'8 c'8 e'8~} 
       e'8 f'8~^\markup{\left-align \small vib} 
       f'8 r8 
      \bar "!" r4 
       r4 
       r4 
       r8 d'16\glissando  e'16~ 
      \bar "!" e'8. f'16~ 
       f'8 d'16 fis'16~ 
       fis'8 g'8 
       gis'8 a'8 
      \bar "!" ais'8 b'16 c''16~ 
       c''8 a'8 
       bes'8 gis'16 a'16~ 
       a'8 f'8~^\markup{\left-align \small vib} 
      \bar "!" f'8. d'16~ 
       d'16 c'8 fis'16~ 
       fis'8 g'16 es'16~ 
       \tuplet 3/2 {es'8 c'8 cis'8~} 
      \bar "!" cis'8 d'8 
       r4 
       r4 
       \tuplet 3/2 {r8 c''8\glissando  d''8~} 
      \bar "!" d''8. des''16~ 
       des''8 c''8 
       b'8 r8 
       r4 
      \bar "!" r4 
       r8 c''8~ 
       c''8 a'8~ 
       a'16 c'8 c''16\glissando  
      \bar "!" d''4 
       \tuplet 6/4 {f''16 ges''16 f''16 e''8 c''16~} 
       c''8 f''8 
       b'8 bes'8~^\markup{\left-align \small vib} 
      \bar "!" bes'8 r8 
       r4 
       r4 
       r8 gis'8\glissando  
      \bar "!" a'8 d''8 
       b'16 a'16 g'8 
       d''4 
       d''8. g'16 
      \bar "!" \tuplet 3/2 {a'4 d''8} 
       r4 
       r4 
       r8 g'16 d''16~ 
      \bar "!" d''16 dis''16\glissando  e''8 
       dis''8\glissando  e''16 d''16~ 
       \tuplet 6/4 {d''8 es''8. g'16~} 
       g'8 fis'8~^\markup{\left-align \small vib} 
      \bar "!" fis'8 r8 
       r4 
       r4 
       r8 g'8 
      \bar "!" fis'8 g'8 
       f''16 g''8 ges''16 
       e''4 
       r4 
      \bar "!" r4 
       cis''8 d''8~ 
       d''8 b'8~ 
       b'8 d'8 
      \bar "!" b'8 c''16 a'16~ 
       a'8 g'8 
       aes'8 g''8\glissando  
       aes''4^\markup{\left-align \small vib} 
      \bar "!" r4 
       r4 
       r4 
       r8 b'16\glissando  c''16~ 
      \bar "!" c''4 
       a'4 
       \tuplet 3/2 {bes'4 c''8} 
       r4 
      \bar "!" r8 c'16 d'16~ 
       d'8\glissando  e'8~ 
       \tuplet 3/2 {e'8 f'8 g'8~} 
       g'8 d'8 
      \bar "!" gis'8 a'8~^\markup{\left-align \small vib} 
       a'4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       \tuplet 3/2 {d'8 cis'8 d'8} 
       e'8 b'8 
      \bar "!" des''8 gis'8 
       a'8 ais'8 
       b'8 b'8 
       a'8 g'8 
      \bar "!" aes'8 c'16 des'16 
       \tuplet 3/2 {c'4 b8} 
       bes4^\markup{\left-align \small vib} 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r8 a8 
       \tuplet 3/2 {bes8 c'8 d'8~} 
       d'8 d'8 
       e'8 g'8 
      \bar "!" f'8 d'8 
       bes8 g8 
       \tuplet 3/2 {a4 f8~} 
       f4 
      \bar "!" d'4~ 
       d'8 es'8~ 
       es'16\glissando  d'16 bes16 des'16 
       r4 
      \bar "!" r8 b'8 
       \tuplet 3/2 {es'8 c'8 bes'8~} 
       bes'8. a'16~ 
       a'8 g'8 
      \bar "!" aes'4~ 
       aes'8 g'8~ 
       \tuplet 3/2 {g'8 c'8 ges'8~} 
       \tuplet 3/2 {ges'8 d'8 ges'8~} 
      \bar "!" ges'8 f'8~ 
       f'16 des'16 c'8~ 
       c'8 bes'8 
       d'8 c'8 
      \bar "!" r4 
       bes'8 gis'8 
       a'8 bes8 
       r4 
      \bar "!" r8 g'16 f'16 
       e'8 f'8 
       r4 
       r4 
      \bar "!" r8 f'8 
       ges'8 gis'8 
       a'8 ais'16 b'16~ 
       b'8 b'16 a'16~ 
      \bar "!" a'8 bes'8~ 
       bes'8 g'8~ 
       g'8 aes'8~ 
       aes'8 c'8 
      \bar "!" g'4 
       f'8 d'8 
       \tuplet 3/2 {es'4 g'8} 
       bes'8 d''8 
      \bar "!" \tuplet 3/2 {c''8 des''8 b'8} 
       bes'8 gis'8 
       a'8 r8 
       r4 
      \bar "!" r4 
       r8 d''8 
       e''8 f''8 
       f''4~^\markup{\left-align \small vib} 
      \bar "!" f''4 
       d''8. c''16~ 
       c''8 g'8~ 
       \tuplet 3/2 {g'8 d'8 c'8} 
      \bar "!" gis'8 a'8 
       f'8 c'8 
       b8 g'8~ 
       g'8 e'8~ 
      \bar "!" e'8 f'8~^\markup{\left-align \small vib} 
       f'8 r8 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r8 des'8 
       \tuplet 3/2 {bes4 c'8~} 
      \bar "!" c'8 des'8 
       es'8 ges'8~ 
       ges'8 aes'8 
       ges'8 des'8 
      \bar "!" bes'4 
       c''8 ges'8 
       \tuplet 3/2 {aes'4 ges'8} 
       es'8 bes8 
      \bar "!" \tuplet 3/2 {des'8 des'8 ges'8} 
       des'8 b8 
       r4 
       r4 
      \bar "!" \tuplet 3/2 {r8 des''8 b'8~} 
       b'8 des''8~ 
       des''8 aes'8~ 
       \tuplet 6/4 {aes'16 es'16 es'16 c'8.} 
      \bar "!" aes'4 
       ges'8 r8 
       r4 
       r4 
      \bar "!" r8 aes'8 
       ges'8 e'8 
       cis''16 d''8 bes'16~ 
       \tuplet 3/2 {bes'8 ges'8 a'8~} 
      \bar "!" a'8 f'8 
       r4 
       r4 
       r8 es'16\glissando  f'16~ 
      \bar "!" f'8 bes'16 c''16 
       es''8 c''8 
       d''8 a'8 
       f'8 d'8 
      \bar "!" g'8 bes'8~ 
       bes'8 es'8~ 
       es'8 aes'8 
       es'16 c'8 g'16~ 
      \bar "!" g'8 des'8 
       \tuplet 3/2 {gis'8 a'8 g'8} 
       f'8 es'8 
       c'8 cis'8 
      \bar "!" d'8 g'8 
       bes'8 gis'8 
       a'4^\markup{\left-align \small vib} 
       r4 
      \bar "!" r8 a'16 b'16 
       c''8 cis''8 
       \tuplet 3/2 {d''4 g'8} 
       ges'8 es'8 
      \bar "!" f'8 des''16 f''16 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r8 e''16\glissando  g''16~ 
      \bar "!" g''4~ 
       g''4~ 
       g''4~ 
       g''4~ 
      \bar "!" g''4 
       f''8. e''16~ 
       e''4 
       d''8. e''16\glissando  
      \bar "!" f''4~^\markup{\left-align \small vib} 
       f''4 
       r4 
       r4 
      \bar "!" r8. c''16\glissando  
       \tuplet 3/2 {d''4 c''8~} 
       c''8. a'16~ 
       a'8 ais'8~ 
      \bar "!" ais'8 r8 
       r4 
       r4 
       r4 
      \bar "!" \tuplet 3/2 {r8 b'8\glissando  c''8~} 
       c''8. d''16~ 
       d''8 des''16 c''16~ 
       \tuplet 3/2 {c''8 b'8 ais'8~} 
      \bar "!" ais'8 b'8 
       bes'8 r8 
       r4 
       g'8 aes'8~ 
      \bar "!" aes'8. d''16~ 
       d''8 c'8 
       g'4~^\markup{\left-align \small vib} 
       g'8 r8 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r8 d''8 
       \tuplet 5/4 {es''8 des''16 b'16 a'16~} 
       a'16 c''16 b'16 a'16 
       a'16 bes'8 g'16~ 
      \bar "!" g'16 aes'8 d''16~ 
       d''16 b'8 c''16 
       r4 
       r8 c''8 
      \bar "!" b'8 c''8 
       r4 
       r8 e'8 
       e'8 e'8~ 
      \bar "!" e'8 a'8 
       g'8 r8 
       r4 
       r8. d'16~ 
      \bar "!" d'8\glissando  e'8~ 
       e'4~ 
       e'4~ 
       e'4~ 
      \bar "!" e'8 c'8~ 
       c'8 d'8 
       e'16 f'8 e'16~ 
       e'16 c'8 e'16~ 
      \bar "!" e'8 e'8~ 
       e'4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       \tuplet 3/2 {r8 cis'8\glissando  d'8~} 
       d'4~ 
       d'4~ 
      \bar "!" d'8. c'16~ 
       c'8 es'8~ 
       es'4~ 
       es'4 
      \bar "!" r4 
       \tuplet 6/4 {r4 cis'16\glissando  d'16~} 
       d'8 d'8 
       c'8 es'8~^\markup{\left-align \small vib} 
      \bar "!" es'4~ 
       es'8 r8 
       r4 
       r4 
      \bar "!" r4 
       r8 d'8 
       b8 d'8 
       b8 d'8 
      \bar "!" g'4 
       bes'4 
       \tuplet 3/2 {ais'4\glissando  b'8~} 
       b'8 r8 
      \bar "!" r8. d'16~ 
       d'8 b8 
       c'8 g'8~ 
       g'8 a'8~^\markup{\left-align \small vib} 
      \bar "!" a'4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r8 c''8 
       b'8 es'16 c'16 
      \bar "!" bes'8. g'16~ 
       g'8 a'8~ 
       a'8 r8 
       r4 
      \bar "!" r8 c''16 des''16~ 
       des''16 c''16 b'16 g'16 
       bes'8. f'16~ 
       f'8 aes'8~^\markup{\left-align \small vib} 
      \bar "!" aes'4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r8 f'8 
       \tuplet 3/2 {aes'4 ais'8~} 
       ais'8 b'16\glissando  c''16~ 
      \bar "!" c''4~ 
       c''4~ 
       c''4~ 
       c''16 c''8 aes'16~ 
      \bar "!" aes'8 f'8~^\markup{\left-align \small vib} 
       f'4~ 
       f'8 r8 
       r4 
      \bar "!" r4 
       r8 f'8 
       aes'8 ais'8~ 
       ais'8 b'16\glissando  c''16~ 
      \bar "!" c''8 es''8\glissando  
       f''4~ 
       f''4~ 
       f''8. c''16~ 
      \bar "!" c''8 f'8 
       r4 
       r4 
       g'4 
      \bar "!" g'16\glissando  aes'8. 
       \tuplet 3/2 {g'8\glissando  aes'4} 
       \tuplet 3/2 {g'4 f'8~} 
       f'8 g'8~^\markup{\left-align \small vib} 
      \bar "!" g'8 r8 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r4 
       fis'8 g'8 
       es'8 c'8 
      \bar "!" gis'8 a'8~ 
       a'8 f'8~ 
       f'8 c'8~ 
       c'8 g8 
      \bar "!" bes8. g'16~ 
       g'4 
       e'8 f'8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       e8 f8~ 
      \bar "!" f4 
       a4 
       a8 c'8 
       c'8 a8 
      \bar "!" \tuplet 3/2 {bes4 bes8~} 
       bes8 bes8~ 
       bes8 d'8~ 
       d'16 b8 c'16~ 
      \bar "!" c'8. a'16~ 
       a'4 
       \tuplet 3/2 {f'4 g'8~} 
       g'8 d'16 c'16 
      \bar "!" r4 
       r8 bes'8~ 
       bes'8 aes'8~ 
       \tuplet 3/2 {aes'8 c'8 f'8~} 
      \bar "!" f'8 r8 
       r4 
       c''4~ 
       c''8 bes'8~ 
      \bar "!" bes'8 g'8 
       d''8 r8 
       r8 c''8~ 
       c''8\bendAfter #-4  bes'8~ 
      \bar "!" bes'8 f''8 
       f''4 
       \tuplet 3/2 {d''4 c''8~} 
       c''8 g'8~^\markup{\left-align \small vib} 
      \bar "!" g'4 
       r4 
       r4 
       r4 
      \bar "!" r8 g'8 
       aes'8 r8 
       r4 
       e'8 es'8~ 
      \bar "!" es'4~ 
       es'4 
       r4 
       r4 
      \bar "!" r8 g'8 
       aes'8. es'16~ 
       es'4~ 
       es'4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" \tuplet 3/2 {r8 g'8 ges'8~} 
       ges'8 d'8~ 
       d'4~ 
       d'4~ 
      \bar "!" d'4~ 
       d'8\bendAfter #-4  r8 
       r4 
       r4 
      \bar "!" r8 g'8 
       \tuplet 3/2 {ges'4 b8\glissando } 
       d'4~ 
       d'4\glissando  
      \bar "!" r4 
       r4 
       r4 
       r8 b8\glissando  
      \bar "!" c'4\glissando  
       a8 r8 
       r4 
       a'4~ 
      \bar "!" a'4\glissando  
       r4 
       r8 gis'8\glissando  
       a'4 
      \bar "!" c'8\bendAfter #-4  r8 
       r4 
       r4 
       g'4~ 
      \bar "!" g'4\bendAfter #-4  
       r4 
       r8 e'8\glissando  
       f'4 
      \bar "!" bes4\bendAfter #-4  
       r4 
       r4 
       \tuplet 3/2 {g'8\glissando  aes'4~} 
      \bar "!" aes'4\bendAfter #-4  
       r4 
       r8 gis'8\glissando  
       a'4 
      \bar "!" c''4 
       r4 
       r8 g'16\glissando  a'16~ 
       a'8. f'16~ 
      \bar "!" f'4\bendAfter #-4 \bar  ".."
    }
    >>
>>    
}
