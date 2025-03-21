\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Ramblin'"
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
      
       d4:7  s4  s4  s4  s4  s4  s4  s4 
       s4  s4  s4  s4  s4  s4  s4  s4 
       s4  s4  s4  s4  s4  s4  s4  s4 
       s4  s4  s4  s4  s4  s4  s4  s4 
       d4:7  s4  s4  s4  s4  s4  s4  s4 
       s4  s4  s4  s4  s4  s4  s4  s4 
       s4  s4  s4  s4  s4  s4  s4  s4 
       s4  s4  s4  s4  s4  s4  s4  s4 
       s4  s4  s4  s4  g4:7|
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


      \tempo 4 = 201
      \set Score.currentBarNumber = #-31
     
      \bar "||" \mark \default r8 d''8~ 
       d''4 
       b'4 
       a'4~ 
      \bar "!" a'8 fis'8~ 
       fis'4 
       d'4 
       \tuplet 6/4 {b'4~ b'16 a'16~} 
      \bar "!" a'4 
       b'8 r8 
       r4 
       b'4 
      \bar "!" a'4 
       fis'8 r8 
       r4 
       fis'8 fis'8 
      \bar "!" a'4 
       a'4 
       b'8 a'8 
       \tuplet 3/2 {f'4 d'8~} 
      \bar "!" d'8 d'8~ 
       d'8 fis'8 
       r4 
       d'8 d'8 
      \bar "!" g'4 
       g'4 
       \tuplet 3/2 {b'4 a'8~} 
       a'8 a'8 
      \bar "!" r4 
       r4 
       r4 
       \tuplet 6/4 {r8 g'8. b'16~} 
      \bar "||" \mark \default b'4 
       d''8. e''16~ 
       e''8 d''8~ 
       d''8 d''8~ 
      \bar "!" d''4 
       r4 
       \tuplet 6/4 {r4 r16 b'16~} 
       b'8 g'16 a'16~ 
      \bar "!" a'4 
       fis'8 d'8 
       g'8 fis'16 d'16~ 
       d'8 r8 
      \bar "!" r4 
       \tuplet 3/2 {f''8 fis''8 e''8} 
       d''8 b'8 
       ais'8 g'8 
      \bar "!" \tuplet 3/2 {a'4 g'8} 
       fis'8 d'8 
       fis'8 d'8 
       e'8 c'8 
      \bar "!" \tuplet 3/2 {d'4 b8} 
       a8 gis8~ 
       gis8 f'8 
       fis'8 d'8 
      \bar "!" dis'16 e'16\bendAfter #+4  dis'16 e'16~ 
       e'4 
       f'8. e'16 
       d'8 r8 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r8 e'8 
       dis'4~ 
       dis'8. e'16~ 
       e'8 f'8~ 
      \bar "!" f'8. f'16 
       \tuplet 3/2 {e'4 d'8~} 
       d'4 
       \tuplet 3/2 {b4 f8} 
      \bar "!" a8 e'8 
       d'16 dis'8.~ 
       dis'8 e'8~ 
       e'4~ 
      \bar "!" \tuplet 3/2 {e'8 f'8\bendAfter #+4  e'8~} 
       e'8 d'8~ 
       d'8. bes16 
       a4 
      \bar "!" r4 
       r8 fis'8 
       a'8 ais'8 
       c''8 bes'8~ 
      \bar "!" \tuplet 6/4 {bes'4~ bes'16 a'16~} 
       a'8 g'8 
       f'16 fis'16 d'8 
       b8 fis8 
      \bar "!" d'4 
       fis'4 
       g'8 a'8~ 
       a'8 a'8~ 
      \bar "!" a'4 
       r4 
       r4 
       r8 a'8~ 
      \bar "!" \tuplet 6/4 {a'16 b'8. b'16 c''16} 
       c''16 d''8 d''16~ 
       d''16 e''8 cis''16 
       b'8 bes'8 
      \bar "!" a'8 g'8 
       fis'4 
       e'8 f'8~ 
       f'8 ais'8 
      \bar "!" dis''4 
       a'8 bes'8 
       a'8 g'8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" a'8. a'16~ 
       a'8 bes'16 a'16 
       \tuplet 3/2 {a'4 d''8~} 
       d''8 b'8~ 
      \bar "!" b'8 g'8~ 
       g'8 a'8~ 
       a'4~ 
       a'8 d'8 
      \bar "!" fis'4 
       fis'4 
       \tuplet 3/2 {g'4 a'8~} 
       a'8 fis'8~ 
      \bar "!" fis'8 d'8~ 
       d'8 b8~ 
       \tuplet 5/4 {b8 b'16 c''16 cis''16} 
       d''4~ 
      \bar "!" d''4 
       \tuplet 6/4 {d''4~ d''16 d''16~} 
       d''8 r8 
       r4 
      \bar "!" r8. ais'16 
       c''8 a'8~ 
       a'4\bendAfter #-4  
       d'8 fis'8 
      \bar "!" a'8 fis'16 a'16~ 
       a'8 fis'16 g'16~ 
       g'8 d'8~ 
       d'8 fis'8~ 
      \bar "!" fis'8 r8 
       r4 
       r4 
       d'8 d'8 
      \bar "!" fis'8 fis'16 g'16 
       \tuplet 6/4 {g'4~ g'16 a'16~} 
       a'8 ais'8~ 
       ais'8 bes'8~ 
      \bar "!" bes'8 a'8~ 
       a'8 g'8~ 
       g'4~ 
       g'8 d'8 
      \bar "!" fis'4 
       fis'4 
       g'8 a'8 
       r4 
      \bar "!" r4 
       r4 
       r8. d'16~ 
       d'16 fis'8 g'16~ 
      \bar "!" g'16 a'8 e''16 
       fis''4 
       d''4 
       r4 
      \bar "!" \tuplet 6/4 {gis'16 ais'16 b'4} 
       \tuplet 6/4 {a'16 ais'16 b'4} 
       a'4 
       d'8 d'8 
      \bar "!" f'16 fis'16 a'16 ais'16 
       b'4 
       a'8 r8 
       r4 
      \bar "!" e'16 ges'8 f'16 
       fis'4 
       d'8 cis'8 
       r4 
      \bar "!" r4 
       r4 
       r8. f''16\bendAfter #+4  
       ges''8 f''8\bendAfter #+4  
      \bar "!" fis''8. e''16 
       d''8 bes'8~ 
       bes'8 a'8~ 
       \tuplet 3/2 {a'8 f'8 ges'8~} 
      \bar "!" \tuplet 6/4 {ges'16 f'8. dis'16 e'16~} 
       e'8 d'8~ 
       d'4 
       r4 
      \bar "!" r8 b'8 
       c''4~ 
       c''4~ 
       c''8 a'16 d''16~ 
      \bar "!" d''8 a'8 
       r4 
       r4 
       r8 gis'8 
      \bar "!" c''4 
       b'4 
       a'4 
       fis'8. d'16~ 
      \bar "!" d'4 
       fis'8 a'8~ 
       a'4 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r8 f'8~ 
      \bar "!" f'8 ges'8~ 
       ges'8 f'8~ 
       \tuplet 3/2 {f'8 ges'8 f'8~} 
       f'8 ges'8 
      \bar "!" f'4 
       ges'8 f'8~ 
       f'4~ 
       f'4~ 
      \bar "!" f'4~ 
       f'4~ 
       f'16 g'8 a'16~ 
       a'8 d'8~ 
      \bar "!" d'4~ 
       d'8 f'16 fis'16~ 
       fis'8\bendAfter #-4  r8 
       r4 
      \bar "!" r4 
       r8 fis'8 
       g'8 f'8 
       fis'4 
      \bar "!" g'4~ 
       g'4~ 
       g'8 gis'8 
       a'8. d'16~ 
      \bar "!" d'4~ 
       d'8 f'16 fis'16~ 
       fis'8\bendAfter #-4  r8 
       r4 
      \bar "!" r4 
       d'8 d'8 
       f'16 fis'16 g'8 
       a'8 a'8 
      \bar "!" bes'4 
       a'8 g'8~ 
       g'4 
       r4 
      \bar "!" r8 dis''16 e''16~ 
       e''4~ 
       e''4~ 
       \tuplet 5/4 {e''8 fis''8 e''16~} 
      \bar "!" e''4~ 
       e''8 d''8~ 
       d''8 r8 
       r4 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" es''8 d''8 
       e''8 fis''8 
       d''4 
       d''4 
      \bar "!" b'8. b'16~ 
       b'4 
       a'4 
       r4 
      \bar "!" fis'4 
       fis'4 
       d'8. d'16~ 
       d'4 
      \bar "!" \tuplet 6/4 {b'4~ b'16 b'16~} 
       b'4 
       a'4 
       f''16 ges''8. 
      \bar "!" f''4 
       es''4 
       d''4~ 
       d''8 a'8 
      \bar "!" r4 
       r4 
       r4 
       r4 
      \bar "!" r8. e''16 
       f''8 d''8~ 
       d''4 
       \tuplet 5/4 {f''16 fis''8 e''16 d''16~} 
      \bar "!" d''8 f''8 
       g''4 
       fis''8 e''16 d''16 
       r4 
      \bar "!" r4 
       r8 ais'8 
       b'8. e''16~ 
       e''8 d''8~ 
      \bar "!" d''4 
       \tuplet 3/2 {b'4 a'8~} 
       a'8 g'8 
       d'4 
      \bar "!" dis''8 e''8 
       fis''8 es''8 
       d''8 c''16 b'16~ 
       \tuplet 3/2 {b'8 ais'8 g'8} 
      \bar "!" \tuplet 10/8 {a'8.. f''32 fis''32 g''32~} 
       g''8 r8 
       r4 
       \tuplet 6/4 {r8. cis'16 d'16 dis'16} 
      \bar "!" e'4~ 
       e'8 a'8 
       \tuplet 3/2 {g'4 d'8~} 
       d'8 r8 
      \bar "!" r4 
       r4 
       r4 
       d'8 g'8 
      \bar "!" a'16 b'8 d''16~ 
       d''8 d''8~ 
       d''4 
       b'8 g'8 
      \bar "!" a'8 a'8~ 
       a'8 a'8~ 
       a'4 
       d'8 fis'8 
      \bar "!" g'8 a'8~ 
       a'8 a'8~ 
       \tuplet 6/4 {a'4~ a'16 g'16~} 
       g'4 
      \bar "!" fis'4 
       d'8 e'8 
       r4 
       r4 
      \bar "!" r8 dis''16 e''16~ 
       e''4~ 
       e''4 
       d''8 c''8 
      \bar "!" d''8 f''8 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r8 b'8 
       d''8 f''8 
       fis''8. dis''16~ 
      \bar "!" dis''8 e''8 
       d''8. b'16 
       c''4 
       \tuplet 3/2 {bes'4 a'8~} 
      \bar "!" a'8. g'16~ 
       g'8 fis'8~ 
       fis'8 g'8 
       a'8. a'16 
      \bar "!" bes'8. a'16~ 
       a'8 g'8~ 
       g'4 
       r4 
      \bar "!" r4 
       r4 
       \tuplet 5/4 {r8 gis'16 ais'16 b'16~} 
       b'8 d''8~ 
      \bar "!" d''4 
       r4 
       r4 
       r8 gis'16 a'16 
      \bar "!" b'8 b'8 
       \tuplet 3/2 {d''4 ais'8} 
       b'8 b'8 
       d''8 ais'8 
      \bar "!" ais'4 
       fis''8 d''8~ 
       d''8 d'8~ 
       d'4~ 
      \bar "!" d'8 d'8 
       fis'4 
       d'4 
       d'4 
      \bar "!" d'8. a'16~ 
       a'8 g'8 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r8. cis''16 
       dis''16 f''16 fis''8~ 
      \bar "!" fis''4~ 
       fis''4~ 
       fis''4 
       \tuplet 3/2 {e''8 d''8 b'8} 
      \bar "!" d''4~ 
       d''8 r8 
       r4 
       r4 
      \bar "!" r8 ais'8 
       d''8 f''8 
       f''8\bendAfter #+4  fis''8 
       g''4~ 
      \bar "!" g''4~ 
       g''8 gis''8 
       r4 
       r4 
      \bar "!" r4 
       r4 
       r4 
       \tuplet 3/2 {b'4 d''8} 
      \bar "!" f''8 f''8~ 
       \tuplet 3/2 {f''8 e''8 d''8} 
       e''8 d''8 
       b'8 g'8 
      \bar "!" ais'8. d''16 
       r4 
       r4 
       r4 
      \bar "!" r8 e''8~ 
       e''8 b'8 
       e''8 d''16 b'16 
       g'8 e'8 
      \bar "!" b'4 
       d''4 
       b'8 a'8 
       g'8. cis'16 
      \bar "!" a'8 fis'8 
       d'4 
       e'8 f'16 d'16~ 
       d'8 b8 
      \bar "!" d'4 
       r4 
       r4 
       r4 
      \bar "!" r4 
       r8 ais'8 
       b'4~ 
       b'4~ 
      \bar "!" b'4~ 
       b'4~ 
       b'4~ 
       b'4~ 
      \bar "!" b'4~ 
       b'4~ 
       b'4 
       \tuplet 3/2 {bes'8 a'8 gis'8} 
      \bar "!" b'4~ 
       b'4~ 
       b'4\bendAfter #-4  
       a8. a16~ 
      \bar "!" a4 
       \tuplet 3/2 {c'4 a8} 
       d'8 fis'8~ 
       fis'8 d'8 
      \bar "!" g'4 
       g'4 
       a'4 
       \tuplet 3/2 {d''4 ais'8} 
      \bar "!" b'4~ 
       b'8 a'8~ 
       a'8 r8\bar  ".."
    }
    >>
>>    
}
