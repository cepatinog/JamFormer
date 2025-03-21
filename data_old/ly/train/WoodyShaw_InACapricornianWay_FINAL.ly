\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "In a Capricornian Way"
  composer = "Woody Shaw"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    \clef "treble"
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
      | s2 r4 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | g2.:min7 | aes2.:min7 | g2.:min7 | es2.:7sus4 | b2.:7sus4 | es2.:7sus4 | e2.:7sus4/a | des2:9+5+ c4:9+5+ 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | g2.:min7 | aes2.:min7 | g2.:min7 | es2.:7sus4 | b2.:7sus4 | es2.:7sus4 | e2.:7sus4/a | des2:9+5+ c4:9+5+ 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | g2.:min7 | aes2.:min7 | g2.:min7 | es2.:7sus4 | b2.:7sus4 | es2.:7sus4 | e2.:7sus4/a | des2:9+5+ c4:9+5+ 
      | d2.:min7 | g2.:min9 | d2.:min7 | e2.:min7 | d2.:min7 | es2.:11+.9 | d2.:min7 | a2.:7 
      | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | f2.:7sus4 | es2.:7sus4 | ges2.:min7 | b2.:7 
      | d2.:min7 | g2.:min9|
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


      \tempo 4 = 172
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 r8 d''8~ 
      \bar "||" \mark \default d''8. g'16~ g'8 a'4.~^\markup{\left-align \small vib} 
      | a'2~ a'8 g'8 
      | \tuplet 3/2 {a'8 c''8 d''8~} d''16 g'8 a'16~ a'4 
      | r2. 
      | r8 a'8 \tuplet 3/2 {d''8 e''8 f''8~} f''8 es''8 
      | f''8 g''8 es''8 bes'8~ bes'8. g'16 
      | \tuplet 3/2 {a'4 d'8~} d'8 e'4 des'16 e'16 
      | \tuplet 3/2 {bes4 a8~} a8 r8 r4 
      | r8 f'16 bes'16~ \tuplet 3/2 {bes'8 es''8 f''8~} f''4 
      | c''4.. bes'16 r4 
      | r2. 
      | es''16 f''8 bes''16 r2 
      | \tuplet 6/4 {r8. aes''8 f''16~} f''8 es''8 f''8 c''8~ 
      | \tuplet 6/4 {c''4~ c''16 a'16} des''16 e''16 es''16 des''16 \tuplet 3/2 {b'8 des''8 b'8} 
      | a'16 fis'16 b'16 gis'16 \tuplet 3/2 {e'8 a'8 gis'8} e'8. b16 
      | c'16 cis'16 dis'16 fis'16 \tuplet 5/4 {g'16 a'16 b'16 cis''16 d''16~} d''4~ 
      \bar "||" d''8 c''8 \tuplet 3/2 {g'8 a'4~^\markup{\left-align \small vib}} a'4~ 
      | a'8 r8 r2 
      | r8. e''16 f''8 g''8 \tuplet 3/2 {a''4 g''8} 
      | f''8 e''8 f''8 d''8~ \tuplet 6/4 {d''16 c''16 d''8 g''16 e''16} 
      | \tuplet 5/4 {d''8 c''16 f''16 e''16} \tuplet 6/4 {c''16 d''16 bes'16 a'16 g'8} c''16 b'16 f'16 bes'16~ 
      | bes'8 c''8 des''16 es''8 c''16~ c''8 bes'8 
      | es'16 a'8 d'16~ d'8 e'8~ \tuplet 6/4 {e'16 b8 cis'16 d'16 e'16} 
      | fis'16 g'16 a'16 b'16 cis''8 r8 r4 
      | r4 r8. es''16 g''8 bes''8 
      | f''8 es''8 bes'8 f''8 es''8 bes'8 
      | \tuplet 3/2 {f'8 g'8 d''8} \tuplet 6/4 {es''4 d''16 des''16} \tuplet 3/2 {c''4 bes'8~} 
      | bes'8 aes'8 bes'8 bes'8 \tuplet 3/2 {bes'4 bes'8~} 
      | bes'8 es'16\glissando  g'16 aes'8. f'16~ f'4~ 
      | f'2 \tuplet 3/2 {b'8 des''8 b'8~} 
      | b'16 gis'8 fis'16~^\markup{\left-align \small vib} fis'4. r8 
      | r2. 
      \bar "||" r8 g'16 d''16~ d''8 bes'8 a'8 g'8~ 
      | \tuplet 6/4 {g'16 aes'16 bes'16 aes'4.} b'8 es''8 ges''8 
      | r4 r8 a''8 g''4~ 
      | g''8 ges''16 f''16 es''16 b'16 aes'8 r4 
      | r8 e''16 d''16 a'4. ais'16 f''16 
      | d''16 c''8. des''16 es''8. des''16 e''16 d''16 b'16 
      | gis'4. \tuplet 6/4 {e''16 b'16 gis'16} f'8 e'8~ 
      | e'8. es''16~ es''16 bes'8 g'16~ g'8 e'16 a'16 
      \bar "||" \tuplet 3/2 {bes'4 a'8~} a'8 d'8 e'4~ 
      | \tuplet 5/4 {e'16 f'16 g'16 a'16 bes'16~^\markup{\left-align \small vib}} bes'4. g'8 
      | a'8 d''8 r2 
      | r2. 
      | \tuplet 3/2 {r8 f''8 g''8} a''8 g''16 f''16 e''16 es''16 ges''16 e''16 
      | des''16 b'16 e''16 f''16 e''16 es''16 g''16 f''16 d''16 c''16 f''16 c''16 
      | des''16 es''16 aes'8 \tuplet 3/2 {des''8 b'8 f'8} b'16 des''16 ges''16 e''16~ 
      | e''8 r8 r2 
      | a''16\glissando  c'''8\glissando  f''16~ f''4 r4 
      | r2 r8 e''8 
      | \tuplet 3/2 {g''8\glissando  c'''4} f''4. r8 
      | r4 r16 es''16 f''16 f''16 \tuplet 5/4 {aes''16 g''8 f''16 es''16~} 
      | es''16 bes'16 es''16 f''16 ges''16 aes''16 f''16 es''16 \tuplet 6/4 {des''8 bes'8 aes'16 f'16} 
      | bes'4 r2 
      | \tuplet 6/4 {r16 g''16 a''16\glissando  b''16 cis'''8\glissando } fis''4. r8 
      | r4 \tuplet 6/4 {r4 gis''16 ais''16~} \tuplet 5/4 {ais''16 c'''16 c'''16 c'''16 c'''16} 
      \bar "||" \mark \default c'''16 c'''16 c'''16 c'''16 a''4. r8 
      | r4 a''8\glissando  es'''8 g''4 
      | r4 r8 aes''16 c'''16~ c'''8 f''8~ 
      | f''8 g''16 a''16 g''16 f''16 e''16 dis''16 \tuplet 6/4 {g''8 e''16 d''8 c''16} 
      | \tuplet 6/4 {f''8 e''16 c''16 d''16 bes'16} \tuplet 3/2 {g'8 c''8 a'8} \tuplet 5/4 {f'16 bes'8 c''16 des''16} 
      | es''16 f''8 c''16~ c''8 des''16 es''16 aes'16 bes'16 des''16 b'16~ 
      | \tuplet 6/4 {b'16 gis'16 a'8 b'16 des''16~} des''16 ges''16 e''16 des''16 b'16 a'16 e''8 
      | r2. 
      | r8 es''16 f''16 ges''16 aes''16 f''16 es''16 \tuplet 3/2 {des''8 bes'8 aes'8} 
      | \tuplet 6/4 {f'16 bes'16 es''16 c''16 aes'8~} \tuplet 5/4 {aes'8. bes'16 des''16} \tuplet 3/2 {c''8 bes'8 aes'8} 
      | g'16 bes'16 a'16 aes'16 es'16 c'16 f'16 es'16 aes16 bes16 es'16 g'16 
      | \tuplet 6/4 {bes'8 es''8 es''16 es''16~} \tuplet 6/4 {es''16 es''16 es''8 es''16 es''16~} es''16 es''16 es''16 es''16 
      | \tuplet 6/4 {es''16 es''8 es''16 es''16 es''16} \tuplet 3/2 {es''8 es''8 es''8} aes'8 r8 
      | r2. 
      | r16 e''16 fis''16 e''16~ e''16 e''16 e''16 e''16 e''16 e''16 e''8 
      | fis''16 g''16 gis''8 r2 
      \bar "||" \tuplet 6/4 {r16 a''16 bes''16 c'''8.} r2 
      | g''8~ g''32 c'''32 es'''32 d'''32~ d'''8 r8 r4 
      | \tuplet 6/4 {r4 r16 f''16\glissando } c'''8 g''4. 
      | r2 f''16 g''16 g''16 bes''16 
      | \tuplet 3/2 {a''8 g''8 f''8} e''16 es''16 g''16 f''16 d''16 c''16 f''16 c''16 
      | \tuplet 5/4 {des''16 es''16 gis'16 a'16 des''16~} des''16 b'16 f'16 a'16 \tuplet 6/4 {c''16 des''8 ges''16 e''16 des''16~} 
      | des''16 b'16 e''16 f''16 \tuplet 6/4 {des''16 c''8 bes'16 es''16 des''16} b'16 bes'16 g'16 des''16~ 
      | des''8 r8 r2 
      | \tuplet 6/4 {r16 ges''16 aes''16 bes''8 bes''16} bes''8 bes''8 \tuplet 3/2 {bes''8 bes''8 bes''8~} 
      | \tuplet 3/2 {bes''8 g''8 aes''8} f''4 \tuplet 3/2 {c''4 des''8} 
      | es''16 aes'16 bes'16 des''16 \tuplet 3/2 {c''8 bes'8 aes'8} ges'16 bes'16 a'16 aes'16 
      | es'16 c'16 f'16 es'16 a16 bes16 des'16 es'16 f'16 bes'8 es''16~ 
      | es''8 c''4\bendAfter #-4  g'16 c''16 r4 
      | r2 r8. aes''16~ 
      | aes''16 fis''16 e''4 cis''8~ cis''16 b'16 cis''16 fis''16 
      | e''16 cis''16 b'16 ais'16 e''8 r8 r4 
      \bar "||" a''8\bendAfter #-4  d''8 r4 r8 es''8 
      | bes''8 bes''16 bes''16 r2 
      | r8 g''16 a''16~ a''8 g''4 es''8 
      | ges''8 es''8 b'8. aes'16 \tuplet 3/2 {des''4 a'8} 
      | e''8 b'8 r2 
      | f''8 es''8 \tuplet 6/4 {bes'4~ bes'16 a'16} e''8 b'8 
      | cis''8 e''8 b'8 gis'4 f'8 
      | es''8 bes'8 g'8. f'16 bes'8. g'16 
      \bar "||" \tuplet 3/2 {a'4 d''8} d''8 d''8 d''16 d''8 bes'16 
      | d''4 r2 
      | r4 f''16 g''16 a''4.~^\markup{\left-align \small vib} 
      | a''2~ a''8 g''8 
      | f''8 g''16 a''16~ a''4 r4 
      | r2 \tuplet 3/2 {r8 g''8 bes''8} 
      | a''16 aes''16 g''16 fis''16~ \tuplet 6/4 {fis''8 g''16 ges''16 f''16 e''16~} \tuplet 6/4 {e''16 es''16 ges''8 e''16 des''16~} 
      | \tuplet 6/4 {des''16 b'16 e''8 f''16 des''16~} des''16 c''16 ais'16 dis''16~ dis''16 dis''16 dis''16 dis''16 
      | dis''4 f''8 c''4 bes'8 
      | es''8 bes'8 f'8 es'8 bes'8. es''16~ 
      | es''8. f''16~ f''4 r4 
      | r2 r8. g''16\glissando  
      | \tuplet 3/2 {c'''4 es'''8~} es'''8 r8 r4 
      | r4 r8. bes''16\glissando  des'''4~ 
      | des'''2~ des'''8. b''16~ 
      | b''8 gis''4. r4 
      \bar "||" \mark \default \tuplet 6/4 {r4 r16 ges''16\glissando } a''8 g''8 \tuplet 6/4 {f''16 e''8 es''16 g''16 f''16~} 
      | \tuplet 6/4 {f''16 d''8 c''16 f''16 es''16} \tuplet 3/2 {cis''8 d''4} \tuplet 6/4 {des''16 c''16 d''8 bes'16 des''16~} 
      | des''16 bes'16 a'16 g'16 f'16 a'16 b'16 des''16 ges''16 e''16 des''16 b'16 
      | e''16 f''16 e''16 dis''16 g''8 r8 r4 
      | r4 \tuplet 6/4 {r16 f''8 es''16 f''16 ges''16~} ges''16 aes''16 f''16 e''16 
      | es''16 ges''16 e''16 des''16~ \tuplet 6/4 {des''16 b'16 a'16 f''8 des''16~} des''16 b'16 bes'16 es''16 
      | b'16 bes'16 a'16\glissando  c''16 \tuplet 5/4 {b'8 es''16 des''16 a'16} aes'16 f'16 bes'16 gis'16 
      | a'4 r2 
      | r16 f''16 es''16 des''16 es''16 aes'16 bes'16 des''16 c''16 bes'16 aes'16 ges'16 
      | bes'16 a'16 aes'16 es'16 f'16 f'16 es'16 aes16 bes4~ 
      | \tuplet 6/4 {bes8 a16 bes16 des'16 c'16~} c'16 bes'16 a'16 bes'16~^\markup{\left-align \small vib} bes'4~ 
      | bes'4 r2 
      | r8 es''8 f''16 ges''16 aes''16 f''16 \tuplet 3/2 {e''8 es''8 ges''8} 
      | \tuplet 6/4 {e''16 es''16 des''16 b'8 a'16} e''16 b'16 des''16 a'16 ges'16 b'16 aes'16 e'16 
      | a'4 f'16 ais'8 g'16 b'8 c''8 
      | \tuplet 5/4 {cis''4 cis''16~} cis''8 d''4.~ 
      \bar "||" d''8. d''16 d''8. d''16 d''8. d''16 
      | \tuplet 3/2 {d''4 d''8} r2 
      | r2. 
      | \tuplet 6/4 {a'8. e''8 d''16~} d''8 b'8 \tuplet 6/4 {a'4 e'16 g'16} 
      | a'8 g'8~ \tuplet 3/2 {g'8 cis''8 d''8} a'4 
      | f'16 bes'8. g'4.^\markup{\left-align \small vib} bes'8 
      | a'8 e'8 des'8 bes8 a4\bendAfter #-4  
      | r2. 
      | r8 f'8 c'8 f'8 bes'8 es''8 
      | f''4 c''8 r8 r4 
      | r4 r8. f''16~ f''8 es''8 
      | bes'8 f'8 c'8 f'8 \tuplet 3/2 {bes4 aes8} 
      | \tuplet 3/2 {es'4 bes8} f'8 aes'8\glissando  bes'4~ 
      | bes'4 des''8 b'8 des''8 ges''8 
      | cis''8 b'8 fis'8. gis'16 b'4 
      | r2. 
      \bar "||" r8 f''16 d''16 des''16 aes'16 g'4. 
      | es''8 aes'8 bes'8 r8 r4 
      | \tuplet 6/4 {r4 cis''16 d''16~} d''8 d''8 \tuplet 3/2 {c''4 bes'8} 
      | es''8\bendAfter #-4  aes'8 bes'8 r8 r4 
      | r4 \tuplet 3/2 {e''8 d''8 b'8~} \tuplet 3/2 {b'8 ais'8 f''8} 
      | dis''8 bes'16 ges'16 \tuplet 3/2 {aes'4 dis''8} \tuplet 3/2 {e''8 d''8 b'8} 
      | des''8. c''16 b'16 dis''16 cis''16 a'16~ \tuplet 5/4 {a'16 gis'16 f'16 ais'16 g'16} 
      | a'4 g'4 f'16 g'16 a'8 
      \bar "||" d'8 f'8~^\markup{\left-align \small vib} f'2~ 
      | f'2~ \tuplet 3/2 {f'8 d'8 f'8~} 
      | \tuplet 3/2 {f'8 g'8\glissando  a'8} d'8 f'4\bendAfter #-4  r8 
      | r2. 
      | \tuplet 6/4 {r16 g'16 a'8. d''16~} d''2 
      | r2. 
      | \tuplet 6/4 {r16 f''4 dis''16~} dis''8. e''16~ \tuplet 3/2 {e''8 b'8 des''8} 
      | a'2. 
      | f''8 f''8 f''8 f''8 r4 
      | r2 \tuplet 5/4 {r8. f''16 bes''16~} 
      | \tuplet 6/4 {bes''4~ bes''16 f''16~} f''4 \tuplet 3/2 {es''8 f''4} 
      | \tuplet 6/4 {c''4~ c''16 bes'16~} bes'8 a'16 aes'16 \tuplet 3/2 {es'8 c'8 f'8} 
      | es'16 aes16 bes16 es'16 f'16 bes'8 dis''16~^\markup{\left-align \small vib} dis''4~ 
      | dis''4 r4 r8 e''8 
      | fis''16 e''16 cis''16 b'16 a'16 e''16 b'16 a'16 a'16 fis'16 b'16 gis'16 
      | e'16 a'16 g'16 cis''16\glissando  d''8 c''8 \tuplet 3/2 {g'8 aes'8 g'8} 
      \bar "||" \mark \default \tuplet 3/2 {f'8 g'8 a'8} d'8 f'4.~ 
      | f'2.\bar  ".."
    }
    >>
>>    
}
