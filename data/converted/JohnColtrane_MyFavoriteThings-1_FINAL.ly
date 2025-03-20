\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "My Favorite Things"
  composer = "John Coltrane"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    \clef "treble"
    \key e \minor
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
      | r2. | s2. | s2. | s2. 
      | e2.:min7 | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
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
      | s2. | s2 r4|
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
      \set Score.currentBarNumber = #-3
     
      | r8 b8 c'4 d'4 
      | e'4 fis'4 g'4~ 
      | g'16 a'8 b'16~ b'4. a'8 
      | b'8. b'16 r4 r8. b'16~ 
      \bar "||" \mark \default b'8 b'8~ b'2~ 
      | b'2~ b'16 a'16 g'16 e'16 
      | \tuplet 6/4 {b'16 a'16 g'8 e'16 b'16~} \tuplet 6/4 {b'16 a'16 g'8 e'16 b'16} a'16 g'16 e'16 b'16 
      | a'16 g'16 e'16 fis'16 \tuplet 6/4 {g'16 a'16 ais'16 cis''16 d''16 e''16} \tuplet 6/4 {fis''16 g''16 a''16 b''8 cis'''16} 
      | d'''8 cis'''8~ cis'''4~ \tuplet 5/4 {cis'''8. b''16 c'''16} 
      | b'2~ b'8 a''8 
      | g''8 e''8 b'8 r8 r4 
      | r8 ais'8 b'4.. b'16 
      | e''4 b'8. e''16~ e''8 b'8 
      | e''2~ \tuplet 6/4 {e''8. b'16 a'16 g'16} 
      | e'4 b8 r8 r4 
      | r2 \tuplet 3/2 {r8 b'8 e''8~} 
      | \tuplet 3/2 {e''8 fis''8 a''8~} a''8 a''4.~ 
      | a''2~ a''8 cis''8 
      | b''2.~ 
      | b''2.~ 
      | b''16 b''16 cis'''16 d'''16 cis'''16 b''4..~ 
      | \tuplet 5/4 {b''8 g''8 b''16~} \tuplet 6/4 {b''16 cis'''8 d'''16 cis'''16 b''16~} b''16 cis'''16 d'''16 cis'''16 
      | \tuplet 3/2 {b''8 cis'''8 d'''8} cis'''16 b''8.~ \tuplet 6/4 {b''4 a''16 g''16} 
      | e''8 fis''8 \tuplet 6/4 {a''16 fis''16 e''16 d''16 cis''8~} \tuplet 6/4 {cis''8 e''16 d''16 cis''16 bes'16} 
      | a'16 g'16 fis'8~ \tuplet 6/4 {fis'8. bes'16 a'16 g'16} fis'16 e'8 fis'16 
      | \tuplet 6/4 {e'16 d'16 cis'4~} \tuplet 5/4 {cis'16 e'16 d'16 c'16 b16~} b4~ 
      | b4. r8 r4 
      | r2 e'8 g'16 b'16 
      | \tuplet 6/4 {d''8 fis''16 g''16 a''16 b''16} cis'''2~ 
      | cis'''8 b''16 cis'''16 b''2 
      | a''8 g''8 e''8 r8 r4 
      | r8. b'16~ b'8. b''16~ b''8. a''16 
      | b''4 b''4 b''4 
      | b''8 d'''8 b''2~ 
      | b''4. a''8 g''8 e''8 
      | r2. 
      | r8 fis''8~ fis''4~ fis''16 e''16 d''16 b'16 
      | \tuplet 6/4 {d''16 e''16 fis''8 e''16 d''16} b'2~ 
      | b'8 d''16 e''16 fis''16 e''16 d''16 b'16 \tuplet 6/4 {d''16 e''16 fis''16 a''16 b''16 a''16~} 
      | \tuplet 6/4 {a''16 fis''16 e''8 d''16 b'16~} \tuplet 6/4 {b'16 d''16 e''16 fis''16 a''16 b''16} a''16 fis''16 e''16 d''16 
      | \tuplet 5/4 {b'16 d''16 e''16 fis''16 a''16} \tuplet 6/4 {b''16 cis'''8 b''16 a''16 g''16} \tuplet 6/4 {fis''16 e''16 d''16 b'8 d''16} 
      | \tuplet 6/4 {e''16 fis''16 a''16 b''8.} \tuplet 6/4 {g''16 fis''16 e''16 d''16 cis''8~} cis''4~ 
      | \tuplet 6/4 {cis''4 b'16 a'16} fis'16 e'16 d'4 e'8~ 
      | e'8\bendAfter #-4  r8 r2 
      | r8 e'16 g'16 a'16 b'4..~ 
      | b'2~ b'8 a'16 g'16~ 
      | \tuplet 6/4 {g'16 e'16 g'8 a'16 b'16} a'16 g'16 e'16 g'16 \tuplet 6/4 {a'16 b'16 a'16 g'8 e'16} 
      | g'16 a'16 b'16 g'16 \tuplet 6/4 {e'8 g'16 a'16 b'16 a'16} \tuplet 7/8 {g'16 e'32 f'32 g'32 a'32 bes'32} 
      | \tuplet 6/4 {a'16 fis'8 g'16 a'16 b'16} \tuplet 5/4 {cis''16 d''16 e''16 g''16 a''16} b''16 cis'''8.~ 
      | cis'''2~ cis'''8 b''8 
      | cis'''4 b''4\bendAfter #-4  r4 
      | r2 r8. b''16~ 
      | \tuplet 6/4 {b''8 b''8. d'''16~} d'''4~ \tuplet 6/4 {d'''4~ d'''16 b''16~} 
      | b''8 d'''8~ d'''4. c'''32 bes''32 a''32 g''32 
      | e''4 e''4 \tuplet 6/4 {e''4~ e''16 e''16~} 
      | e''2~ e''8. d''16 
      | e''4 e''4 e''4 
      | ais'8 b'8~ b'4.. a'16 
      | \tuplet 6/4 {g'4~ g'16 e'16~} e'8 r8 r4 
      | r2 r8. e'16 
      | g'8 a'8~ a'2~ 
      | a'8. d''16~ d''4.. b'16~ 
      | b'2. 
      | r2 r8 e'8 
      | \tuplet 3/2 {g'8 a'4} a'8. a'16~ a'8 a'8~ 
      | a'8. d''16~ d''4 cis''8 e''16 f''16 
      | d''16 c''16 b'8~ b'4. r8 
      | r4 r8 ais'16 g'16 \tuplet 6/4 {fis'16 g'16 a'16 b'16 cis''8} 
      | \tuplet 6/4 {d''16 e''16 fis''16 g''16 a''16 b''16} cis'''4. b''8~ 
      | \tuplet 6/4 {b''16 cis'''16 es'''16 d'''16 cis'''16 b''16} gis''4. fis''8 
      | r4 \tuplet 5/4 {fis'16 g'16 a'16 ais'16 cis''16} d''32 e''32 g''16 b''32 des'''32 c'''32 b''32~ 
      | \tuplet 6/4 {b''16 cis'''16 d'''16 cis'''16 b''8} gis''4. fis''8 
      | r4 r16 b'16 cis''16 d''16 fis''32 a''16 b''32 des'''16 c'''32 b''32 
      | cis'''16 d'''16 cis'''16 b''16 gis''4. fis''8 
      | d''2.~ 
      | d''8 e''8 d''2 
      | d''8. b'16 b'2~ 
      | \tuplet 3/2 {b'8 a'8 b'8} a'4.. g'16 
      | \tuplet 3/2 {e'4 b8~} b4. r8 
      | r2. 
      | e'8 g'8 \tuplet 3/2 {a'4 a'8~} a'4~ 
      | a'2~ a'8 g'8 
      | e'4 e'8 r8 r4 
      | r8 e'16 fis'16 \tuplet 6/4 {g'16 a'8 b'16 cis''16 d''16} \tuplet 5/4 {e''16 fis''16 g''16 a''16 b''16} 
      | cis'''4~ \tuplet 6/4 {cis'''4~ cis'''16 b''16~} b''16 a''16 g''16 fis''16~ 
      | \tuplet 6/4 {fis''8 b''16 a''16 g''16 fis''16} \tuplet 6/4 {e''4 fis''16 b''16} \tuplet 6/4 {a''16 fis''16 e''16 d''16 cis''8~} 
      | cis''4~ \tuplet 7/8 {cis''16. b'32 aes'32 g'32 fis'32} \tuplet 6/4 {e'16 d'16 cis'4} 
      | r4 r8. fis''16~ fis''8 e''8 
      | fis''4 \tuplet 6/4 {e''16 d''16 cis''16 bes'16 a'16 g'16} fis'4~ 
      | fis'8 cis''8~ cis''4. ais'16 cis''16~ 
      | \tuplet 6/4 {cis''8 bes'16 a'16 g'16 fis'16} \tuplet 3/2 {d'8 cis'16 r8.} r4 
      | r8. b''16~ b''4. a''8 
      | b''16 cis'''16 b''16 ais''16~ ais''8 aes''16 g''16 dis''32 f''32 g''32 gis''32 ais''32 c'''32 e''32 fis''32~ 
      | fis''32 aes''32 g''16 e''16 fis''32 es''32 \tuplet 6/4 {d''16 cis''16 b'16 bes'16 a'16 g'16} \tuplet 6/4 {fis'8 a'8 ais'16 c''16} 
      | d''32 e''32 fis''32 g''32 a''32 b''32 c'''32 b''32 g''32 fis''32 e''32 d''32 c''32 ais'32 g'16 fis'4~ 
      | fis'8 r8 r4 r8 e'16 fis'16 
      | \tuplet 6/4 {g'8 a'16 ais'16 des''16 c''16} \tuplet 6/4 {a'16 f'8 g'16 ais'16 c''16} \tuplet 6/4 {d''16 e''16 f''16 g''16 ais''16 b''16} 
      | \tuplet 7/8 {a''32 g''16 f''32 g''32 a''32 b''32} d''16 fis''16 gis''16 b''16 \tuplet 6/4 {g''8 d''16 cis''16 b'16 a'16} 
      | \tuplet 6/4 {g'8 fis'16 g'16 a'16 ais'16} \tuplet 6/4 {c''16 d''16 e''16 g''16 a''16 b''16} \tuplet 7/8 {g''16 fis''32 e''32 d''32 c''32 bes'32} 
      | a'16 g'16 fis'8~ fis'4. \tuplet 6/4 {e'16 g'16 ais'16} 
      | cis''16 dis''32 fis''32 gis''16 gis'32 c''32 \tuplet 6/4 {dis''16 fis''16 gis''16 b''16 ais''16 gis''16} \tuplet 5/4 {dis''16 cis''16 ais'16 gis'16 dis'16} 
      | \tuplet 6/4 {cis'8 dis'16 f'16 gis'16 b'16} \tuplet 6/4 {cis''16 dis''16 f''16 gis''16 dis''16 cis''16} \tuplet 6/4 {ais'16 fis'8 dis'16 fis'16 a'16~} 
      | \tuplet 6/4 {a'16 cis''16 d''16 f''16 g''16 ais''16} \tuplet 7/8 {cis'''16 b''32 aes''32 g''32 dis''32 ais'32~} \tuplet 6/4 {ais'16 aes'16 g'16 e'16 gis'16 a'16} 
      | \tuplet 5/4 {b'16 cis''16 e''16 fis''16 b''16} \tuplet 6/4 {cis'''16 b''16 g''16 e''16 b'16 g'16} e'16 fis'16 gis'16 ais'16 
      | c''32 d''32 e''32 fis''32 g''32 a''32 b''16 \tuplet 6/4 {a''16 g''16 fis''16 e''16 d''16 c''16} b'16 a'16 g'16 fis'16~ 
      | fis'8 r8 r4 r8. e'16 
      | \tuplet 6/4 {fis'16 g'16 a'16 ais'16 cis''8} \tuplet 6/4 {d''16 e''16 fis''16 g''16 a''16 b''16~} b''4~ 
      | b''4 b''4 cis'''16 d'''8 des'''16 
      | c'''16 b''8.~ b''8 f''16 g''16 \tuplet 6/4 {gis''16 ais''8 g''16 f''16 dis''16~} 
      | dis''16 g''16 ais''16 e''16 \tuplet 6/4 {fis''8 gis''16 ais''16 g''16 e''16~} \tuplet 5/4 {e''16 dis''16 cis''16 b'16 bes'16} 
      | a'16 g'16 fis'4. e'16 fis'16 f'16 b16 
      | r2. 
      | r16 e'16 g'16 a'16~ a'8 a'4 a'8 
      | d''2.~ 
      | d''8 b'8 r2 
      | r4 b'4 b'8 e''8 
      | b''4 b''2 
      | \tuplet 3/2 {b'8 e''8 b''8} \tuplet 3/2 {b'8 e''8 b''8} e''8 b''8~ 
      | b''2~ \tuplet 6/4 {b''4 a''16 g''16} 
      | a''8 b''8 ais''4 r4 
      | r8 b'8 e''8. b''16~ b''8\bendAfter #+4  ais''8 
      | b''4. c'''8~ c'''16 b''16 a''16 g''16 
      | a''16 c'''16 d'''16 b''16~ b''2~ 
      | b''2~ \tuplet 6/4 {b''4 a''16 g''16} 
      | e''4 e''4 e''4 
      | e''2~ e''8 d''8 
      | e''8 e'8 r2 
      | r2. 
      | r8 b'4 b'8 b'4~ 
      | b'2~ b'8 a'8 
      | \tuplet 3/2 {g'4 e'8} r2 
      | r8 f'8 fis'4. e'16 d'16 
      | b2.~ 
      | b8 d'8 e'16 fis'4. e'16 
      | \tuplet 3/2 {fis'8 e'8 d'8} b2~ 
      | b4 fis'4.. e'16 
      | fis'4 fis'4 fis'4 
      | fis'2~ fis'8. e'16 
      | \tuplet 3/2 {d'8 b4} b8 r8 r4 
      | r8 b'8~ b'4.. g'16 
      \bar "||" fis'16 e'8 b'16~ b'4. b'8 
      | \tuplet 3/2 {fis'4 e'8} r2\bar  ".."
    }
    >>
>>    
}
