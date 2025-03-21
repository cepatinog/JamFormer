\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Double Vision"
  composer = "Kenny Wheeler"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key dis \major
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
      | r1 
      | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 
      | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 
      | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 
      | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 
      | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 
      | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 
      | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 | dis1:7 | e1:7 
      | dis1:7 | e1:7|
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


      \tempo 4 = 155
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 e'8~ e'16 gis'16 des''8 
      \bar "||" \mark \default \tuplet 3/2 {fis'4 g'8} gis'4. r8 r4 
      | r2 \tuplet 3/2 {a'8 ais'8 des''8} \tuplet 3/2 {c''8 ais'8 g'8} 
      | \tuplet 3/2 {c''8 ais'8 f''8~} \tuplet 3/2 {f''8\glissando  a'8 ais'8} \tuplet 6/4 {a'8 g'16 f'8 e'16} d'8 dis'8 
      | f'16 fis'16 dis'16 f'16~ f'4 dis'8 r8 r4 
      | r1 
      | dis''8 des''8 \tuplet 6/4 {c''8 ais'8 g'16 a'16~} \tuplet 6/4 {a'16 ais'8 c''8 b'16~} b'16 ais'16 a'16 g'16~ 
      | g'16 f'16 d'16 dis'16~ dis'16 des'16 c'16 ais16~ ais16 a16 g16 a16~ a4~ 
      | \tuplet 3/2 {a8 ais8 fis8~} fis2.~ 
      | fis4. r8 r2 
      | g'8 fis''4. dis''8. e'16~ e'4 
      | cis'8 c''4. a'8. ais16~ ais8 r8 
      | r1 
      | r2 \tuplet 6/4 {ais''8 g''16 ais''8 des'''16~} \tuplet 3/2 {des'''8 c'''8 ais''8} 
      | \tuplet 3/2 {a''8 f''8 a''8} \tuplet 3/2 {g''8 f''8 e''8} \tuplet 3/2 {dis''8 des''8 c''8} \tuplet 3/2 {ais'8 a'8 g'8} 
      | a'16 c''16 a'16 ais'16 \tuplet 3/2 {gis'8 a'8 fis'8} g'4. dis'8 
      | e'4 fis'2^\markup{\left-align \small vib} dis'8 e'16 c'16 
      | cis'4.\bendAfter #-4  a8 \tuplet 6/4 {ais16 fis8 g8 dis16} fis8 r8 
      | r2 f''16 e''16 dis''16 g''16~ g''16 g'8 ais'16~ 
      | \tuplet 3/2 {ais'8 g'8 a'8} f''4 r2 
      | r16 e''16\glissando  f''16 a'16 ais'2~ ais'8 c''16 cis''16 
      | \tuplet 3/2 {g'8 a'8 ais'8} c''8 r8 r2 
      | r2 r8 c''8\bendAfter #-4  g'16 ais'16 a'16 g'16 
      | \tuplet 3/2 {f'8 d'8 dis'8} \tuplet 3/2 {f'8 g'8 a'8} \tuplet 3/2 {ais'8 c''8 cis''8} \tuplet 3/2 {dis''8 f''4} 
      | \tuplet 3/2 {g''8 ais''8 c'''8} \tuplet 3/2 {cis'''8 d'''8 f'''8} r2 
      | r2 \tuplet 3/2 {ais''8 b''8 ais''8\glissando } f'''8\glissando  ais''8 
      | a''4 gis''2.~^\markup{\left-align \small vib} 
      | gis''1~ 
      | gis''1~ 
      | gis''4.. g''16 \tuplet 6/4 {f''16 fis''16 e''16 dis''8.} r4 
      | r1 
      | \tuplet 3/2 {dis''8 f''8 fis''8} \tuplet 6/4 {gis''8 ais''8 ais''16 gis''16} \tuplet 3/2 {fis''8 e''8 dis''8} cis''8 a'8 
      | c''8 cis''8 dis''4~^\markup{\left-align \small vib} dis''16 g'16 gis'16 ais'16~ ais'16 gis'16 des''16 c''16 
      | \tuplet 3/2 {ais'8 fis'8 a'8} \tuplet 6/4 {ais'8 c''16 dis''8\glissando  e'16~} e'16 d'16 g'8 \tuplet 3/2 {a'8 b'8 d'8} 
      | \tuplet 3/2 {f'8 d'8 dis'8} f'16 g'16 a'16 ais'16 c''8 cis''8 \tuplet 5/4 {g'16 c''8 b'16 ais'16~} 
      | \tuplet 6/4 {ais'8 g'16 a'8 g'16~} \tuplet 6/4 {g'16 f'8 e'8 dis'16~} \tuplet 3/2 {dis'8 des'8 c'8} \tuplet 3/2 {ais8 a8 a'8} 
      | r2 ais'8 a'16 ais'16~ \tuplet 6/4 {ais'4~ ais'16 c''16} 
      | r1 
      | r2. r8. ais'16~ 
      | ais'8 a''8 a''4 a''8. a''16~ a''8 a''8~ 
      | a''16 a''8\glissando  e'''16~ e'''8\glissando  a''8 a''8 g''16 f''16~ f''8 dis''8 
      | r2 \tuplet 3/2 {cis'''8 f'''8 e'''8~} e'''8. f'''16~ 
      | f'''8. fis'''16 r2. 
      | \tuplet 6/4 {r4 d'''16 fis'''16\bendAfter #+4 } g'''16 fis'''16 r8 r4 \tuplet 3/2 {g'8 ais'8 a'8} 
      | \tuplet 3/2 {g'8 ais'8 g'8} \tuplet 3/2 {a'8 ais'8 c''8} cis''4.^\markup{\left-align \small vib} dis'8 
      | r1 
      | r1 
      | \tuplet 3/2 {a''8 f''8 a''8} \tuplet 3/2 {c'''8 d'''8 c'''8} \tuplet 3/2 {ais''8 gis''8 a''8} \tuplet 3/2 {g''8 f''8 e''8} 
      | dis''8 d''8 \tuplet 3/2 {cis''4 e''8~} e''2 
      | dis''8 d''8~^\markup{\left-align \small vib} d''4~ \tuplet 5/4 {d''8 dis''16 e''16 cis''16~} cis''8 e''8 
      | d''8 f''16 e''16 dis''16 ges''16 f''16 e''16 r4 \tuplet 6/4 {r4 f''16 ges''16~} 
      | \tuplet 6/4 {ges''16 f''16 e''16 cis''16 b'16 gis'16~} \tuplet 7/8 {gis'32 c''32 e''32 e''32 gis''32 b''32 f''32~} f''16 gis'''16 fis'''4 r8 
      | r8. g'16 ais'8 g'16 a'16~ a'16 g'16 f'16 d'16~ \tuplet 6/4 {d'16 dis'8 f'8 g'16~} 
      | \tuplet 6/4 {g'16 a'8 ais'8 des''16} c''8 ais'8 \tuplet 3/2 {a'8 g'8 fis'8} \tuplet 3/2 {cis'8 ais8 gis8} 
      | a4^\markup{\left-align \small vib} r4 r8 g'8~ g'16 a'16 des''8~^\markup{\left-align \small vib} 
      | des''2... c''16~ 
      | c''16 a'16 ais'8 g'16 a'16 ais'16 c''16 cis''8 dis''4.~^\markup{\left-align \small vib} 
      | dis''1~ 
      | dis''2 r2\bar  ".."
    }
    >>
>>    
}
