\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I Love You"
  composer = "Don Ellis"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key f \major
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
      
      | g1:min5-7 | c1:9- | f1:maj | s1 | g1:min7 | c1:7 | f1:maj | s1 
      | g1:min5-7 | c1:9- | f1:maj | b2:min7 e2:7 | a1:maj | b2:min7 e2:7 | a1:maj | s1 
      | g1:min7 | c1:7 | f1:maj | s1 | a1:min5-7 | d1:9- | g1:7 | c1:7 
      | g1:min5-7 | c1:9- | f1:maj | a2:min5-7 d2:7 | g1:7 | g2:min7 c2:7 | f1:6 | s1 
      | g1:min5-7 | c1:9- | f1:maj | s1 | g1:min7 | c1:7 | f1:maj | s1 
      | g1:min5-7 | c1:9- | f1:maj | b2:min7 e2:7 | a1:maj | b2:min7 e2:7 | a1:maj | s1 
      | g1:min7 | c1:7 | f1:maj | s1 | a1:min5-7 | d1:9- | g1:7 | c1:7 
      | g1:min5-7 | c1:9- | f1:maj | a2:min5-7 d2:7 | g1:7 | g2:min7 c2:7 | f1:6 | s1 
      | g1:min5-7 | c1:9-|
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


      \tempo 4 = 147
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 \tuplet 6/4 {r4 r16 es''16~} es''4 
      | c''2. b'4 
      | g'2. e'4 
      | c'2 r2 
      | r8. a''16~ a''8. f''16~ f''2~ 
      | f''4 e''4 c''4 aes'4 
      | e'4. c'8 d'2^\markup{\left-align \small vib} 
      | r1 
      \bar "||" r4 c''8. a'16~ a'8. f'16~ f'8. des'16~ 
      | des'8. es''16~ es''8 c''4 g''4 e''8~ 
      | e''4 b'4 a'4 g'8. e'16~^\markup{\left-align \small vib} 
      | e'4 r2. 
      | r4 fis''4 dis''4 b'4 
      | cis''2. gis'4~ 
      | gis'2~ gis'8 e'4. 
      | dis'2~ dis'16 e'8 g'16~ g'16 a'8 c''16 
      \bar "||" bes'2. g'8 f''8~ 
      | f''8 d''4. g'4 bes'4 
      | e'4 \tuplet 3/2 {es''4 a'8} des''8. c''16~^\markup{\left-align \small vib} c''4 
      | r2 r8 gis'8~ gis'16 a'16 cis''16 d''16~ 
      | d''8 d''8 es''8. f''16~ f''8 d''4 c''8 
      | a'4 e'16 g'8 e'16~ e'16 ges'8 es'16~ es'16 d'8 c'16~ 
      | c'8 des'4.\bendAfter #-4  r2 
      | r4 r8 c'4 c'16\bendAfter #+4  des'16~ \tuplet 3/2 {des'8 c'8 c'8~} 
      \bar "||" c'16 c'16\bendAfter #+4  des'8 c'8 c'8 c'16\bendAfter #+4  des'8. c'8 c'8 
      | \tuplet 3/2 {des'4 es'8} f'8. es'16~ es'8 des'4 c'8 
      | b4.^\markup{\left-align \small vib} r8 r2 
      | r4 b'4 aes'8. e''16 f''8. e''16~ 
      | e''8. c''16~ c''16 a'8 g'16 gis'4^\markup{\left-align \small vib} r4 
      | r2 r8. a'16~ a'16 c''8 f''16 
      | d''8 e''16 f''16~ f''8. d''16 f''4 f''8\bendAfter #-4  r8 
      | r2 r8 c''8 \tuplet 3/2 {f''8 f''4} 
      \bar "||" \mark \default g''1~^\markup{\left-align \small vib} 
      | g''4 \tuplet 3/2 {es''4 c''8~} c''16 a'8 f'16 \tuplet 3/2 {des'4 a8} 
      | c'4~^\markup{\left-align \small vib} c'16 e'16 g'16 b'16~ b'16 d''8 b'16 \tuplet 6/4 {c''4 d''16 c''16} 
      | \tuplet 3/2 {b'4 a'8~} a'8 g'4\bendAfter #-4  e'8 \tuplet 6/4 {d'4 a16 des'16~^\markup{\left-align \small vib}} 
      | des'8 r8 r2 r8 e''16 f''16~ 
      | \tuplet 3/2 {f''8 es''8 des''8~} des''8. ges''16~ ges''8 es''8 des''8 c''16 bes'16~ 
      | bes'16 a'8 e'16 c'8 bes8 a4.^\markup{\left-align \small vib} r8 
      | r4 \tuplet 6/4 {r4 r16 c'16~} \tuplet 5/4 {c'16 d'16 e'16 f'16 g'16} \tuplet 3/2 {a'8 bes'8 c''8~} 
      \bar "||" c''16 des''8 es''16~ es''8 des''8 es''4..\bendAfter #-4  des''16~ 
      | \tuplet 6/4 {des''8. es''8 f''16} ges''16 es''16 des''8 es''8 f''32 ges''32 es''32 des''32~ des''16 c''8 bes'16~ 
      | \tuplet 3/2 {bes'8 b'8\glissando  c''8~} c''8 b'8 c''4\bendAfter #-4  r4 
      | r8 c''8 d''8 e''8 f''8 fis''8 g''8 bes''8~ 
      | bes''8 a''8 g''16 f''16 gis''8 f''16 e''8 cis''16~ cis''8. f'16~ 
      | f'8 b'16 cis''16~ cis''16 d''8 bes'16~ bes'16 a'8 g'16~ \tuplet 6/4 {g'16 gis'8. f'16 e'16} 
      | d'8 e'8 \tuplet 3/2 {cis'4 bes8} \tuplet 3/2 {b4 a8~^\markup{\left-align \small vib}} a4 
      | r2 e''16\glissando  f''8. \tuplet 6/4 {f''4~ f''16 f''16~} 
      \bar "||" f''4 \tuplet 6/4 {bes''16 f''16 es''16 d''8.} f''8 a''8 a''8\bendAfter #-4  r8 
      | r2. \tuplet 3/2 {a''4 bes''8} 
      | b''8 c'''8~ c'''2 des'''8 c'''8 
      | bes''16. a''8 f''32~ f''16 c''8 bes'16~ bes'16 a'8 f'16~ f'16 c'8 bes16 
      | a2^\markup{\left-align \small vib} a'8. e'16 \tuplet 3/2 {g'4 e'8} 
      | ges'2^\markup{\left-align \small vib} es'8\glissando  des'16 bes16 \tuplet 3/2 {d'4 bes8} 
      | des'4.^\markup{\left-align \small vib} r8 r4 r8 bes'8 
      | aes'8 f'8 des'8. bes16 c'8 d'16 e'16 \tuplet 3/2 {f'4 g'8} 
      \bar "||" a'8. bes'16~ \tuplet 6/4 {bes'16 c''4 des''16} es''8 f''4.~ 
      | f''8. es''16~ es''8 c''8~ c''16 a'8 f'16~ f'8 des'8~ 
      | des'8 bes8~ bes4~ bes16\bendAfter #-4  g''8 e''16~ e''8 c''8 
      | aes'4\bendAfter #-4  aes'4\bendAfter #-4  r2 
      | r8. bes'32 aes'32 g'8. a'16 bes'8 c''8 d''8 f''8~ 
      | f''16 aes''16\bendAfter #+4  g''16 aes''16~ aes''16 aes''16\bendAfter #+4  g''8 \tuplet 3/2 {aes''8 f''4} g''4 
      | f''1~ 
      | \tuplet 6/4 {f''4 f''16 e''16} es''8 d''8 \tuplet 6/4 {des''8. b'8 c''16~} \tuplet 3/2 {c''8 b'8 c''8} 
      \bar "||" \mark \default \tuplet 3/2 {b'8 c''8 b'8} c''8 b'16 c''16~ c''16 b'16 c''8~ c''8.\glissando  bes'16 
      | \tuplet 3/2 {g'8 des'4~^\markup{\left-align \small vib}} des'4 r2\bar  ".."
    }
    >>
>>    
}
