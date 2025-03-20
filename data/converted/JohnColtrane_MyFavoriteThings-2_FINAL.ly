\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "My Favorite Things (Solo 2)"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    \clef "treble"
    \key e \major
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
      | r2. 
      | e2.:maj | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | r2.|
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


      \tempo 4 = 179
      \set Score.currentBarNumber = #0
     
      | r2 r8 dis''8 
      \bar "||" \mark \default b'4 r8 b'8 gis''8 r8 
      | r8 b''8 \tuplet 3/2 {fis''8 b''8 gis''8} fis''8 b''16 dis''16~ 
      | dis''8 gis'4 b''8 cis''8 r8 
      | r8 b''8 dis''8 b''16 fis''16 \tuplet 3/2 {b''8 dis''8 b''8} 
      | \tuplet 3/2 {cis''8 fis''8 dis''8} r4 r8 b''8 
      | \tuplet 6/4 {dis''8 b'8 fis'16 b'16} r4 r8 b'8 
      | \tuplet 3/2 {gis'8 b'8 dis'8} r4 r8 b''16 cis'''16~ 
      | cis'''2~ cis'''8 b''8 
      | \tuplet 3/2 {cis'''8 b''8 cis'''8} \tuplet 3/2 {b''8 fis''8 b''8} \tuplet 3/2 {gis''8 dis''8 gis''8} 
      | \tuplet 3/2 {fis''8 cis''8 fis''8} \tuplet 3/2 {dis''8 b'8 dis''8} \tuplet 3/2 {b'8 cis''8 b'8} 
      | fis'4. b'8 \tuplet 3/2 {gis'8 b'8 gis'8~} 
      | \tuplet 6/4 {gis'16 dis'8 fis'16 dis'16 fis'16~} fis'4.. dis'16 
      | \tuplet 3/2 {fis'8 cis''8 b'8} fis'8 r8 r8 dis''8 
      | \tuplet 3/2 {b'8 cis''8 b'8} dis''8 r8 r8 ais''8 
      | \tuplet 6/4 {dis''8 ais''16 e''8 fis''16} r4 r8 b''8~ 
      | b''2~ b''8 gis''16 b''16~ 
      | b''16 fis''16 b''16 e''16 \tuplet 3/2 {b''8 dis''8 b''8} \tuplet 3/2 {cis''8 b''8 dis''8} 
      | \tuplet 3/2 {b''8 e''8 b''8} fis''8 b''16 gis''16~ \tuplet 6/4 {gis''16 b''8 fis''8 b''16~} 
      | b''16 fis''16 b''16 e''16~ e''16 b''16 dis''16 b''16 \tuplet 3/2 {cis''8 b''8 dis''8} 
      | b''16 e''16 b''16 fis''16 b'16 gis''16 b''16 fis''16~ \tuplet 5/4 {fis''16 b''16 fis''16 b''16 e''16} 
      | b''16 dis''16 b''16 cis''16 b''16 dis''16 b''16 dis''16 b''16 e''16 b''16 fis''16 
      | \tuplet 5/4 {b''16 fis''16 b''16 gis''16 b''16~} b''16 e''16 b''16 dis''16 b''16 dis''16 b''16 gis''16 
      | b''16 dis''16 b''16 e''16 b'8 r8 r4 
      | \tuplet 6/4 {r8 b''16 cis'''16 d'''16 dis'''16~} dis'''2~ 
      | dis'''8 d'''8 cis'''4 dis'''8 cis'''8 
      | dis'''4~ \tuplet 6/4 {dis'''4~ dis'''16 d'''16~} \tuplet 3/2 {d'''8 cis'''8 b''8~} 
      | b''4 gis''8 dis''4.~ 
      | \tuplet 6/4 {dis''4 cis''16 dis''16} \tuplet 6/4 {fis''16 gis''16 b''16 cis'''8 b''16} \tuplet 6/4 {gis''16 g''16 fis''16 dis''16 cis''16 b'16} 
      | dis''2~ \tuplet 6/4 {dis''16 cis''16 dis''16 fis''16 gis''16 b''16} 
      | \tuplet 6/4 {gis''16 g''16 dis''16 cis''16 dis''8~} dis''4. cis''8 
      | b'4 gis'8 dis'4.~ 
      | dis'4 \tuplet 3/2 {e'8 fis'8 gis'8} \tuplet 5/4 {b'16 cis''16 dis''16 fis''16 gis''16} 
      | \tuplet 6/4 {b''16 cis'''4 cis'''16~} cis'''8 cis'''8 \tuplet 3/2 {cis'''4 b''8} 
      | dis''2 cis''4 
      | r4 cis'''8 b''8 cis'''8. b''16 
      | dis''4. cis''8 \tuplet 3/2 {dis''4 cis''8~} 
      | cis''8 cis'''16 b''16~ b''8 cis'''4 b''8 
      | dis''8 cis''8 dis''4 cis''8 r8 
      | \tuplet 5/4 {r8 e'16 fis'16 gis'16} b'16 cis''16 dis''16 fis''16 \tuplet 6/4 {gis''16 b''16 cis'''8 b''16 d'''16~} 
      | \tuplet 3/2 {d'''8 c'''8 dis''8~} dis''4.. cis''16~ 
      | \tuplet 6/4 {cis''8. c'''16 cis'''16 d'''16} dis'''4. d'''8~ 
      | \tuplet 6/4 {d'''8 d'''8. dis'''16~} dis'''4 d'''4 
      | b''2~ b''8 r8 
      | r4 cis'''2 
      | b''8 g''8 b''16 fis''16 b''16 fis''16~ fis''16 dis''16 fis''16 cis''16 
      | \tuplet 3/2 {f''8 cis''8 b'8} cis''8 b'8~ b'8. fis'16 
      | b'4 b8 r8 r4 
      | r8 e'8 fis'4.. e'16 
      | \tuplet 3/2 {gis'8 b'4~} b'8 fis'8 b'16 cis''16 g'16 gis'16~ 
      | gis'8. dis''16 \tuplet 3/2 {b'8 e''8 fis''8} cis''16 fis''16 gis''16 fis''16 
      | gis''16 b''16 r8 r2 
      | r8 b''16 cis'''4. b''16 cis'''16 b''16~ 
      | b''16 fis''16 b''16 gis''16~ gis''16 e''16 gis''16 fis''16~ fis''16 dis''16 fis''16 e''16~ 
      | e''16 cis''16 e''16 dis''16~ dis''4. cis''8 
      | b'8. fis'16~ fis'8 r8 r4 
      | r8 b'8\glissando  dis''4.. cis''16 
      | dis''4 dis''4 dis''4 
      | dis''2~ dis''8. cis''16 
      | b'4 gis'8 dis'4.~ 
      | dis'8 r8 r4 r8. cis'16 
      | dis'4 dis'4 dis'4 
      | dis'2~ dis'8 cis'8 
      | \tuplet 6/4 {dis'8 cis''8 ais'16 b'16~} b'2 
      | r2 r8 g'8 
      | \tuplet 6/4 {gis'8. gis''8 fis''16~} fis''2 
      | \tuplet 3/2 {g'8 gis'8 fis''8} e''4~ e''16 g'16 gis'16 dis''16 
      | cis''4. g'8 gis'16 cis''16 b'8~ 
      | b'4. g'16 gis'16 dis''8 cis''8~ 
      | cis''8. g'16 \tuplet 3/2 {gis'8 fis''8 dis''8~} dis''4~ 
      | dis''8 g'8 \tuplet 3/2 {gis'8 fis''8 e''8~} \tuplet 6/4 {e''8 g'8 gis'16 gis''16} 
      | fis''4. g'16 gis'16 fis''8 e''8~ 
      | e''16 g'16 gis'16 dis''16 cis''4~ \tuplet 5/4 {cis''16 gis'16 b'16 cis''16 dis''16} 
      | \tuplet 6/4 {fis''16 gis''16 b''16 cis'''8.} r4 \tuplet 6/4 {r4 b''16 cis'''16} 
      | gis''16 b''16 fis''16 b''16~ b''16 fis''16 e''16 fis''16 \tuplet 3/2 {gis''8 fis''8 gis''8} 
      | b''8 r8 r8 b'16 cis''16 \tuplet 3/2 {b'8 fis''8 b''8} 
      | gis''8 fis''16 gis''16~ gis''16 b''16 fis''16 gis''16 b''8 gis''16 b''16 
      | cis'''8 r8 r8 b''16 cis'''16 b''8 fis''16 b'16~ 
      | b'16 fis''16 b''16 gis''16 b''8 fis''16 b''16~ b''16 cis'''16 b''16 cis'''16 
      | b''2.~ 
      | b''4 cis'''16 d'''16 dis'''4 cis'''8 
      | b''8 dis'''8 d'''8. dis'''16~ dis'''8 cis'''8 
      | \tuplet 3/2 {d'''8 dis'''4} cis'''8 d'''16 dis'''16~ dis'''8 cis'''8 
      | b''4. gis''4 dis''8~ 
      | dis''4.. cis''16~ \tuplet 6/4 {cis''16 dis''16 fis''16 gis''16 b''16 gis''16} 
      | dis''4 dis''4 dis''4 
      | dis''2~ dis''8. cis''16 
      | b'4 gis'8 dis'4. 
      | r2 r16 dis'8 cis'16 
      | fis'2.~ 
      | fis'4 cis'8 fis'8~ \tuplet 6/4 {fis'16 b'8 cis''16 dis''16 fis''16~} 
      | fis''2~ fis''8 dis''16 fis''16 
      | \tuplet 6/4 {b''16 gis''16 fis''16 dis''16 cis''16 dis''16} fis''16 b''16 gis''16 dis''16 cis''16 b'16 gis'16 fis'16 
      | dis'16 fis'8.~ fis'2 
      | e'16 fis'16 b'16 cis'16~ \tuplet 6/4 {cis'16 dis'16 fis'8 gis'16 b'16} \tuplet 3/2 {cis''8 dis''8 fis''8} 
      | r2. 
      | r8 dis''8~ dis''4. cis''8 
      | cis''4~ \tuplet 6/4 {cis''8 b'16 gis'16 fis'16 dis'16} d'16 cis'8.~ 
      | cis'4 fis''4~ \tuplet 6/4 {fis''16 dis''16 cis''16 bes'16 a'16 gis'16} 
      | fis'8 cis''8~ \tuplet 10/8 {cis''16. b'16 gis'32 g'32 fis'32 e'32 dis'32} \tuplet 3/2 {cis'4 fis''8~} 
      | \tuplet 6/4 {fis''8. dis''16 cis''16 b'16} gis'16 g'16 fis'16 cis''16~ \tuplet 6/4 {cis''8 ais'16 g'16 fis'16 dis'16} 
      | d'16 cis'8.~ \tuplet 3/2 {cis'8 fis'8 fis''8~} \tuplet 6/4 {fis''16 dis''16 d''16 b'16 gis'16 g'16} 
      | \tuplet 6/4 {fis'16 cis''4 ais'16} \tuplet 6/4 {gis'16 g'16 fis'16 dis'16 d'16 cis'16~} cis'4~ 
      | cis'4 e'4 gis'8 r8 
      | r2 r16 e'16 fis'16 gis'16~ 
      | \tuplet 6/4 {gis'16 b'16 cis''16 dis''16 fis''16 gis''16} b''16 cis'''8. b''8. cis'''16~ 
      | cis'''8 dis'8~ dis'8. cis'16 dis'8 cis'8~ 
      | \tuplet 6/4 {cis'4 cis'''16 b''16} \tuplet 6/4 {gis''16 g''16 dis''8. cis''16~} cis''8 ais'8 
      | dis'4 dis'4 cis'8 r8 
      | \tuplet 6/4 {r8. cis'''16 b''16 gis''16} fis''16 dis''8 cis''16~ \tuplet 7/8 {cis''16. ais'32 gis'32 fis'32 dis'32~} 
      | dis'16 cis'16 dis'8~ dis'4.. cis'16 
      | e'8 gis'8 r2 
      | r8 cis'8 \tuplet 6/4 {dis'16 fis'16 gis'16 b'16 cis''8} \tuplet 5/4 {dis''16 fis''16 gis''16 b''16 cis'''16~} 
      | cis'''8 b''8~ \tuplet 6/4 {b''16 dis'''8. d'''16 cis'''16} \tuplet 6/4 {b''8 dis'''8 d'''16 cis'''16} 
      | c'''16 b''16 fis''4 e''8 dis''16 fis''16 f''16 e''16 
      | \tuplet 10/8 {dis''32 fis''16. d'''16. cis'''32 c'''32 b''32~} b''16 d'''16 cis'''32 c'''32 b''32 d'''32 \tuplet 6/4 {cis'''16 b''16 ais''16 fis''8.~} 
      | fis''8 dis''16 fis''16 \tuplet 3/2 {dis''8 fis''8 dis''8} \tuplet 3/2 {b'8 fis'8 e'8} 
      | \tuplet 6/4 {fis'16 gis'16 b'16 cis''16 dis''16 fis''16} \tuplet 6/4 {b''8 dis'''8 b''16 dis'''16} b''4~ 
      | b''2~ b''8. a''16 
      | b''4 b''8 r8 r4 
      | r8 ais''8\glissando  b''4.. gis''16 
      | \tuplet 3/2 {b''8 d'''8 b''8~} b''2~ 
      | \tuplet 3/2 {b''8 gis''8 b''8} cis'''16 b''8. fis''16 b''16 cis'''16 b''16~ 
      | b''8 gis''8 \tuplet 3/2 {b''8 cis'''8 b''8~} \tuplet 3/2 {b''8 e''8 b''8} 
      | cis'''8 b''8~ b''16 dis''16 b''16 cis'''16 \tuplet 3/2 {b''4 cis''8~} 
      | cis''16 b''16 cis'''16 b''16~ b''16 fis''16 b''16 cis'''16 b''16 gis''16 b''16 cis'''16 
      | b''16 d'''16 fis''8 b''8 b''16 cis'''16 b''4~ 
      | b''2.~ 
      | b''8 gis''8~ gis''4. fis''16 dis''16 
      | cis''16 b'8. b'4 b'8 r8 
      | r8 b'8~ b'4. gis'8 
      | b'8. b'16 r2 
      | r8 d''8\bendAfter #+4  dis''4~ \tuplet 6/4 {dis''4~ dis''16 cis''16} 
      | b'4 b'4 b'4 
      | b'2. 
      | b'8 e'16 b16 r2 
      | r8. b'16~ b'4.. gis'16~ 
      \bar "||" gis'16 e'8 b'16~ b'2 
      | b'8 fis'8 e'8 r8 r4 
      | e'8 b8 e'4. r8\bar  ".."
    }
    >>
>>    
}
