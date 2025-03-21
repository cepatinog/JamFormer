\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Togo"
  composer = "Chris Potter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    \clef "treble_8"
    \key f \minor
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
      
      | g2.:min7
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


      \tempo 4 = 112
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. 
      | r4 es'4~ es'16 d'16 c'16 es'16 
      | \tuplet 3/2 {d'4^\markup{\left-align \small vib} d'8} r2 
      | r8 d'8 g'8 d'16 es'16~ \tuplet 3/2 {es'8 bes8 d'8~} 
      | d'16 a16 a8 r2 
      | r2 r16 a16 bes32 d'32 f'32 a'32 
      | c''4.. a'32 b'32 \tuplet 6/4 {a'4 f'16 a'16} 
      | \tuplet 6/4 {f'8 d'8 bes16 g16} c'16 g16 bes16 c'16 \tuplet 6/4 {d'8 f'16 a'8 f'16~} 
      | \tuplet 6/4 {f'16 bes'16 a'8 g'16 f'16} g'8 f'16 a'16\bendAfter #-4  \tuplet 3/2 {aes'8 g'4} 
      | r2. 
      | r2 r16 g'16 a'16 f'16~^\markup{\left-align \small vib} 
      | f'4~ f'16 d'16 f'16 a'16 c''8 a'16 c''16~ 
      | \tuplet 6/4 {c''16 a'16 aes'16 f'8 a'16} g'16 f'16 d'16 g'16 f'16 d'16 c'16 g16 
      | bes16 g16 c'16 d'16~ \tuplet 3/2 {d'8 d'8 d'8} r4 
      | \tuplet 3/2 {r8 g'8 bes'8} \tuplet 3/2 {a'8 g'8 es''8\glissando } \tuplet 3/2 {f''4 es''8} 
      | \tuplet 3/2 {d''8 c''8 d''8\glissando } \tuplet 6/4 {es''16 des''16 bes'16 a'16 bes'8} c''16 d''16 es''16 f''16 
      | \tuplet 6/4 {des''16 d''16 c''16 bes'16 a'16 c''16} bes'16 a'16 g'16 fis'32 g'32~ g'16 a'16 d'16 es'16 
      | g'16 f'16 es'16 f'16 \tuplet 6/4 {d'4~ d'16 es'16~} es'16 d'16 c'16 d'16 
      | \tuplet 3/2 {bes8 bes8 b8} bes8 r8 r8 b16 c'16~^\markup{\left-align \small vib} 
      | c'8 bes16 a16 bes16 a16 g16 f16~ f8 d8~ 
      | d8 r8 r2 
      | r2. 
      | r16 c'8 c'16~ c'16 c'8 c'16 bes16\glissando  c'16 c'16 c'16 
      | bes16\glissando  c'16 c'16 c'16 c'8 c'16 bes16 a8 g8 
      | f8 f4 d4 r8 
      | r2. 
      | r16 g16 a16 fis16 g16 a16 bes16 c'16 d'16 g'16 ges'16 a'16 
      | g'16 d'16 bes16 c'16 \tuplet 6/4 {d'16 es'16 d'16 des'16 d'8} a'16 d'16 g'16 a'16 
      | bes'16 d'16 a'16 g'16~ \tuplet 3/2 {g'8 g'8 g'8} c''8 bes'8 
      | a'8 g'16 bes'16\bendAfter #-4  a'4 r8 bes'8\glissando  
      | c''8 g'16 bes'16~^\markup{\left-align \small vib} \tuplet 6/4 {bes'8. f'16 g'16\glissando  a'16~} a'8 e'16 g'16~^\markup{\left-align \small vib} 
      | g'8 aes'16 f'16~ f'8 c'16 e'16~ e'8. b16 
      | es'16 des'16 d'16 c'16 \tuplet 6/4 {bes8 c'16 d'16 f'16 a'16} fis'16 g'16 bes'16 c''16 
      | \tuplet 5/4 {c''16 d''16 des''16 c''16 bes'16} \tuplet 5/4 {c''16 bes'16 g'16\glissando  ges'16 d'16} f'16 g'16 a'16 bes'16 
      | \tuplet 3/2 {g'4 g''8~} \tuplet 6/4 {g''8. d''8 d''16} es''8 d''8~ 
      | d''8 g''8~ g''16 a''8 d''16 des''16 es''16 d''16 c''16~^\markup{\left-align \small vib} 
      | c''8. a'16 \tuplet 5/4 {bes'16 c''16 d''16 es''16 f''16~} \tuplet 6/4 {f''16 des''16 es''16 d''16 c''16 bes'16} 
      | a'16 bes'16 c''16 d''16 bes'16 a'16 g'16 ges'16 a'16\bendAfter #-4  aes'16 es'16 d'16~ 
      | d'8. c''16~ \tuplet 3/2 {c''8 bes'8 a'8} g'8 a'16 g'16 
      | \tuplet 3/2 {bes'8 g'8 a'8~} \tuplet 3/2 {a'8 g'8 g'8} f'8 r8 
      | r4 r16 a'16 g'16 f'16 a'8 g'16 f'16 
      | a'8 g'16 f'16~ f'16 a'16 g'16 f'16 a'8 g'16 f'16~ 
      | f'16 g'8 f'16 g'4~ g'16 a'16 g'16 f'16 
      | \tuplet 3/2 {a'8 g'8 f'8~} f'16 g'8 f'16~ f'16 d'8 f'16~ 
      | f'16 g'8 g'16 g'4~ g'16 a'16 g'16 f'16 
      | \tuplet 3/2 {a'8 g'8 f'8} \tuplet 3/2 {c''8 bes'8 a'8~} a'16 g'8 f'16~ 
      | \tuplet 3/2 {f'8 g'8 g'8} g'4.^\markup{\left-align \small vib} a'8 
      | a'8 r8 r8 f'8 \tuplet 3/2 {f'4 a'8} 
      | a'8\glissando  g'4 f'8 f'8. d'16 
      | \tuplet 3/2 {d'4 f'8} \tuplet 3/2 {f'4 a'8} a'8 f'16 f'16~ 
      | f'16 g'8 g'16 g'8 r8 r8 g''16 g'16 
      | \tuplet 3/2 {g'8 a'8 g'8} \tuplet 3/2 {bes'8 a'8 g'8~} g'16 f'8 a'16~ 
      | a'16 g'8 g'16 g'8 r8 r8 g'16 bes'16 
      | c''16 d''16 g'16 bes'16 c''16 d''16 c''16 bes'16 c''16 bes'16 a'16 c''16 
      | \tuplet 6/4 {g'16 a'16 g'16 f'8 a'16} g'16 f'16 d'16 g'16 f'16 c'16 d'16 f'16 
      | \tuplet 3/2 {g'8 g'8 f'8} g'4 g'16 a'8 g'16 
      | \tuplet 3/2 {g'8 f'8 f'8} f'4 d'16 f'16 g'16 f'16 
      | f'16 d'8 d'16 d'4 \tuplet 10/8 {c'16. bes16 c'16. bes32 c'32~^\markup{\left-align \small vib}} 
      | c'2. 
      | \tuplet 6/4 {des'16 c'16 bes16 des'16 c'16 bes16} \tuplet 6/4 {des'16 c'16 bes16 des'16 c'16 bes16} \tuplet 6/4 {des'16 c'16 bes16 des'16 c'16 bes16} 
      | r2. 
      | \tuplet 6/4 {des'16 d'16 f'16 des'16 d'16 f'16} des'16 d'16 f'8 r4 
      | r2 \tuplet 6/4 {des'16 c'16 bes16 c'16 des'16 d'16} 
      | f'32 fis'32 g'16 bes'32 g'32 f'32 a'32~ a'32 g'16 ges'32 f'32 es'32 e'32 g'32 es'16 des'32 d'32 des'32 c'32 b32 bes32 
      | \tuplet 7/8 {d'32 e'32 a'32 fis'32 g'32 a'32 bes'32} c''16 d''8.~ \tuplet 6/4 {d''4~ d''16 a''16~} 
      | a''8 g''16 bes''16 r2 
      | r4 r16 c'''8 bes''16 a''16 g''16 a''16 bes''16 
      | bes''16 d''16 bes'16 g'16 bes'16 d''16 e''16 f''16~ f''8 des''16\glissando  d''16~ 
      | \tuplet 6/4 {d''16 c''8 bes'16 des''16 c''16} \tuplet 7/8 {bes'32 g'32 bes'32 f'32 ges'32 a'32 aes'32} \tuplet 7/8 {ges'32 d'32 bes32 ges32 c'32 a32 bes32} 
      | \tuplet 10/8 {c'32 des'32 d'32 f'32 d'16 f'32 bes'32 d''32 des''32} \tuplet 10/8 {bes'32 g'32 aes'32 a'16 c'32 es'32 g'32 ges'32 d'32} c'16 bes32 d'32 f'32 g'32 d''32 e''32 
      | g''8 r8 \tuplet 9/8 {r8. d32 g32 a32} c'32 e'32 f'32 c''32 e''32 f''32 g''32 g''32 
      | aes''16 g''8.~ g''16. des16 es32 e32 es32~ es32 fis32 g32 f32 g32 aes32 a32 b32 
      | \tuplet 5/4 {c'16 bes16 d'16 f'16 b'16} e''16 g''16 f''8 r8. ges''16 
      | \tuplet 6/4 {c'''8 b''16 bes''16 a''16 b''16\glissando } \tuplet 3/2 {g''8 a''16 r8.} r4 
      | r16 bes''16\glissando  a''16 f''16 a''16 e''16 c''16 g'16 bes'16 d''16 g'16 bes'16 
      | c''16 d''16 e''16 a''16~ \tuplet 3/2 {a''8 a''8 g''8} a''8\glissando  g''8~ 
      | g''8 g'8 c''16 e''16 f''16 e''16 c''16 g'16 f'16 bes'16 
      | e'16 a'16 f'16 c'16 d'16 g'16 f'16 g'16 a'16 c''16 bes'16 f'16 
      | r4 r16 d'16 a'16 d'16 g'32 a'16 bes'16 c''16 d'32 
      | \tuplet 3/2 {a'8 d'8 g'8} a'16 bes'16 c''16 d'16 a'16 d'16 g'16 a'16 
      | bes'16 c''16 d'16 g'16 \tuplet 6/4 {a'16 bes'8 c''16 d'16 g'16} a'16 bes'16 c''16 d'16 
      | g'16 a'16 bes'8 c''4 bes'16 a'16 g'16 f'16 
      | g'16 a'16 f'16 a'16 \tuplet 3/2 {g'8 g'8 c''8} c''16 c''32~ c''8 bes'32~ 
      | bes'16 a'16 g'16 f'16 g'16 a'16 f'16 g'16 g'32 g'8 c''16 c''32~ 
      | c''16 c''32~ c''8 bes'32~ bes'16 a'16 g'16 g'16~ g'8 bes'16 a'16 
      | \tuplet 3/2 {g'8 g'4} \tuplet 6/4 {bes'16 a'8 g'16 f'16 g'16~} \tuplet 6/4 {g'16 a'8 f'16 g'16 g'16} 
      | d''4 c''16 a'32~ a'8 bes'32 g'4 
      | g'16 f'16 g'16 a'16 f'16 g'16 g'16 g'16~ g'8 c''8~ 
      | c''8 bes'4 g'4 f'8~ 
      | f'8 g'4 bes'8\glissando  d''8\glissando  g''8 
      | r4 a''2~^\markup{\left-align \small vib} 
      | a''2 g''16\bendAfter #-4  f''16 d''16\bendAfter #-4  c''16 
      | r4 r16 g''16 a''8~ \tuplet 6/4 {a''4 bes''16 a''16} 
      | bes''32 a''32 bes''32 a''32 bes''32 a''16 bes''32 a''16 bes''16 a''8 \tuplet 3/2 {g''8 d''8\bendAfter #-4  c''8} 
      | r4 \tuplet 3/2 {r8 a''8 c'''8~} \tuplet 6/4 {c'''4~ c'''16 des'''16~} 
      | des'''4.\glissando  d'''8\glissando  f'''8\glissando  g'''8 
      | r4 f''4 f'''4 
      | f''4 f'''4 r8 d''8~ 
      | d''8 f'''16 d'''16 f'''4 es''4 
      | r8 f'''8~ \tuplet 6/4 {f'''16 f''8.\glissando  es'''16 f''16~} \tuplet 3/2 {f''8\glissando  f'''8 f''8~} 
      | f''16\glissando  f'''16 e''16 es'''16 g''8\glissando  e'''8 g''8\glissando  f'''8~ 
      | f'''8 d''4 f'''8 r4 
      | \tuplet 3/2 {r8 c'''8 f'''8} bes''4 \tuplet 6/4 {r8. bes''8 g''16~} 
      | g''4 \tuplet 6/4 {f''8 d''16 c''16 bes'16 c''16~} \tuplet 6/4 {c''16 c''16 bes'16 g'8 d'16} 
      | f'16 ges'16 a'16 fis'16 g'16 a'16 bes'16 c''16 \tuplet 5/4 {d''8 f''16 ges''16 f''16\glissando } 
      | fis''16 g''16 a''16 bes''16~ bes''4 bes'16 g'16 f'16 d'32 g'32~ 
      | g'8 g'8~ g'16 g'8 g'16 g'8 g'8 
      | \tuplet 6/4 {g'8 g'16 g'8 g'16~} \tuplet 3/2 {g'8 g'8 bes'8} c''4^\markup{\left-align \small vib} 
      | r4 \tuplet 3/2 {g'8 g'8 g'8} \tuplet 6/4 {a'8 bes'8 c''16 bes'16~} 
      | \tuplet 6/4 {bes'16 c''16 bes'16 a'16 bes'16 c''16} \tuplet 6/4 {bes'16 a'16 bes'16 c''16 bes'16 a'16} bes'16 c''16 bes'16 g'16 
      | r4 \tuplet 7/8 {r16 g'32 aes'32 bes'32 a'32 c''32} \tuplet 10/8 {a'32 bes'16 c''16. bes'32 g'32 aes'32 a'32} 
      | aes'32 g'16 f'32 ges'32 bes'32 c''32 des''32 a'32 bes'32 a'32 g'32 ges'32 f'32 g'32 a'32 \tuplet 6/4 {b'16\glissando  des''16 d''16 bes'16\glissando  c''16 des''16} 
      | \tuplet 10/8 {c''16 des''32 bes'16 g'16 bes'32 c''32 bes'32~} \tuplet 12/8 {bes'32 des''32 d''8 des''16 bes'32 g'32 d''32 f''32~} f''32 ges''16 f''32 ges''32 es''32 c''32 a'32 
      | ges'32 f'32 d'32 c'32 bes32 a16.~ a4 a''4 
      | \tuplet 3/2 {g''8 bes8 d'8~} d'16 g'8 d'16 c''8 bes'8 
      | \tuplet 3/2 {g'4^\markup{\left-align \small vib} d'8} r4 r16 g16 bes16 c'16 
      | d'8 d'16 g'16~ \tuplet 3/2 {g'8 c''8 g'8} c''8 bes'8 
      | g'4.^\markup{\left-align \small vib} g'8 \tuplet 3/2 {d''8 c''8 bes'8} 
      | c''4~^\markup{\left-align \small vib} \tuplet 3/2 {c''8 g'8 g'8} c''8.^\markup{\left-align \small vib} bes'16~ 
      | bes'16 g'8 d'4.^\markup{\left-align \small vib} d'16 a'16 f'16 
      | g'8 g'16 f'16 f'8 d'8 \tuplet 3/2 {d'8 c'8 c'8} 
      | bes8 bes16 g16~ g8 r8 r4\bar  ".."
    }
    >>
>>    
}
