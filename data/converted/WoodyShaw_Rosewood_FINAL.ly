\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Rosewood"
  composer = "Woody Shaw"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
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
      
      | g2:min9 f2:min9 | g2:min9 f2:min9 | c2:min9 bes2:min9 | ges1:9 | g2:min9 f2:min9 | g2:min9 f2:min9 | c2:min9 bes2:min9 | ges1:maj9 
      | aes1:maj9 | s1 | aes1:min9 | des2:9 g2:11+.9 | ges1:maj9 | s1 | b1:9 | e2:9sus4 e2:9 
      | c2:min9 bes2:min9 | c2:min9 bes2:min9 | ges2:maj9 e2:maj | d1:maj11+.9 | c2:min9 bes2:min9 | c2:min9 bes2:min9 | ges2:maj e2:maj | d1:maj11+.9 
      | b2:7sus4 a2:7sus4 | b2:7sus4 a2:7sus4 | g2:7sus4 f2:7sus4 | g2:7sus4 f2:7sus4 | bes1:min7 | a1:min11.9 | s1 | s2 a2:6 
      | s1 | s2 bes2:9 | s1 | bes2:6 aes2:min7 | g2:7sus4 aes2:7sus4 | g2:min9 f2:min9 | g2:min9 f2:min9 | c2:min7 bes2:min7 
      | ges1:maj9 | g2:min9 f2:min9 | g2:min9 f2:min9 | c2:min9 bes2:min9 | ges1:maj9 | aes1:maj9 | s1 | aes1:min9 
      | des2:9 g2:11+.9 | ges1:maj9 | s1 | b1:9 | e1:9 | c2:min9 bes2:min9 | c2:min9 bes2:9 | ges2:maj e2:maj 
      | d1:maj11+.9 | c2:min9 bes2:min9 | c2:min9 bes2:min9 | ges2:maj e2:maj | e1:maj11+.9 | c2:7sus4 aes2:7sus4 | s1 | c2:7sus4 aes2:7sus4 
      | c2:7sus4 aes2:7sus4 | s1 | c1:7sus4 | aes1:7sus4 | c2:7sus4 aes2:7sus4|
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
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 aes'8 bes'8 c''8 d''4. 
      | c''8 bes'8 \tuplet 3/2 {g'4 f'8~} f'4. es'8 
      | g'8 bes'4 aes'8 f'8 des'8 ges8 aes8~ 
      | aes8 ais8 d'8 fis'8 gis'8 ais'4 ais'8 
      | g'8 g''8 r2 r8 f''8 
      | g''8 bes''8 r2 r8 es''16 f''16 
      | f''8 f''8~ \tuplet 3/2 {f''8 f''8 e''8} es''8. f''16 \tuplet 6/4 {ges''4 aes''16 f''16~} 
      | \tuplet 5/4 {f''16 es''16 des''16 bes'16 aes'16~} \tuplet 6/4 {aes'16 f'16 ges'16 bes'16 a'16 aes'16~} aes'4 bes'4 
      | bes'8. bes'16~ bes'4 bes'4 \tuplet 3/2 {es''4 c''8~} 
      | c''2~ c''8 r8 r4 
      | r8 es'8 aes'8 ais'8~ \tuplet 3/2 {ais'8 b'8 des''8~} des''4 
      | aes'8 bes'8 aes'8 f'8 dis'8 c'8 f'8 dis'8 
      | c'4 f'8. bes16~ bes4 es'8. f'16~ 
      | f'2. r4 
      | \tuplet 5/4 {r8 fis'8 a'16~} a'8 cis''8 b'8 r8 r4 
      | r8 d''8 fis''8 a''8 gis''4 r4 
      \bar "||" r8 ges''8 \tuplet 3/2 {a''8 c'''4~} c'''4 bes''8 g''8~ 
      | g''8 f''16 es''16~ es''8 c''8~ c''8. es''16~ \tuplet 6/4 {es''16 f''16 ges''16 bes''16 aes''16 f''16} 
      | \tuplet 3/2 {e''8 es''8 ges''8} e''16 des''16 b'16 a'16 e''16 b'16 cis''16 a'16 fis'16 ais'16 gis'8 
      | a'16 gis'16 e'4 d'16 e'16~ e'8 d'8~ d'16 cis'16 d'16 dis'16 
      | \tuplet 6/4 {f'16 g'16 aes'16 bes'16 c''16 d''16~} \tuplet 6/4 {d''8. a''16 g''16 f''16} d''16 c''16 r8 r4 
      | r4 f''16 a''16 a''8~ a''16 g''16 f''16 e''16 es''16 aes'16 es''16 f''16 
      | \tuplet 6/4 {ges''8 bes''16 aes''16 f''16 es''16} \tuplet 3/2 {des''8 bes'8 aes'8} b'8 cis''8 b'8 gis'8~ 
      | gis'4. r8 r4 \tuplet 6/4 {r8. e''8 a''16} 
      | r4 r8 e''4 d''8 b'8 d''8 
      | a'8 e'8 b'8 a'8 g'8 r8 r8 f''8 
      | ais''4 r2 r8 f''8 
      | \tuplet 6/4 {gis''8 ais''16 ais''16 ais''16 ais''16} ais''16 ais''16 ais''16 ais''16 \tuplet 6/4 {ais''16 b''16 bes''16 bes''16 bes''16 bes''16} bes''16 bes''16 bes''16 bes''16 
      | \tuplet 5/4 {bes''16 bes''16 bes''16 bes''16 bes''16} \tuplet 6/4 {bes''8 bes''16 bes''16 bes''16 bes''16~} \tuplet 5/4 {bes''16 bes''16 bes''16 bes''16 bes''16} \tuplet 6/4 {ais''16 b''16 ais''8 b''16 bes''16} 
      \bar "||" a''8 r8 r4 \tuplet 6/4 {r8. b''16\glissando  c'''16 cis'''16} d'''4~ 
      | d'''4 cis'''16 b''8.~ b''16 c'''16\glissando  cis'''8 r4 
      | r2 r8 e''8 a''8 b''8 
      | \tuplet 3/2 {cis'''4 b''8} a''8 fis''4 gis''16 fis''16 gis''16 fis''16 gis''16 fis''16 
      | gis''16 ges''16 r8 r4 r8 f''8 a''8 c'''8 
      | g''8 a''8 f''8 d''8 c''8 f''4 f''8 
      | es''8 aes'8 bes'8 aes'8~ aes'2 
      | r4 \tuplet 5/4 {r16 dis''16 f''16 g''16 gis''16} f''16 e''16 es''16 g''16 \tuplet 3/2 {e''8 d''8 c''8} 
      \bar "||" \tuplet 6/4 {bes'16 f''16 c''16 d''8 bes'16} g'16 c''16 a'16 f'16 \tuplet 5/4 {bes'16 a'16 aes'16 ais'16 b'16} d''16 des''16 b'16 e'16 
      | a'16 b'16 des''16 a'16 \tuplet 6/4 {ges'16 b'8 aes'16 f'16 bes'16} a'16 g'16 e'16 es'16 f'16 es'16 c'8 
      | \tuplet 3/2 {es'4 f'8} r4 r8 es''8 \tuplet 7/8 {f''16. bes''32 aes''32 f''32 e''32~} 
      | \tuplet 6/4 {e''16 es''8 g''16 f''16 es''16} \tuplet 5/4 {des''16 b'16 bes'16 e''16 b'16} \tuplet 5/4 {des''16 a'16 g'16 f'16 b'16} aes'16 ges'16 bes'8 
      | r2. r8 f''8~ 
      | f''8 f''4 f''8 d''8 es''8 c''4~ 
      | c''16 aes'16 bes'8 aes'8 bes'8 aes'8. bes'16~ bes'8 ges'8~ 
      | ges'8 des'8 ges8 aes8 bes8 des'8 es'8 ges'8 
      | bes'2. \tuplet 3/2 {g'4 f'8~} 
      | f'2 r2 
      | r2. r8 es''8~ 
      | es''16 bes''8 bes''16 aes''16 ges''16 f''4 dis''4 f''8 
      | des''4. bes'4 aes'8 \tuplet 3/2 {f'4 es'8~} 
      | es'2~ es'8 r8 r4 
      | r8 fis'16 gis'16 a'16 d''16 cis''16 fis''16 dis''2 
      | \tuplet 6/4 {b'8 cis''16 d''16 cis''16 b'16~} b'16 e'16 a'16 b'16 cis''16 a'16 ges'16 f'16 ais'16 c''16 d''16 g''16 
      | f''16 d''16 c''16 bes'16 \tuplet 5/4 {e''16 c''16 d''16 bes'16 g'16} c''16 b'16 f'4 r8 
      | r2. r8 es''8 
      | ges''8 aes''8 f''8 dis''8 e''8 b'8 cis''8 b'8 
      | gis'8 fis'8 dis'8 r8 r4 r8 c''8 
      | bes''8 r8 r8 g''8 r4 r8 f''8 
      | es''8 c''8 bes'8. a'16~ a'16 bes'8 des''16~ des''4 
      | ges''8 aes''8~ aes''2 r4 
      | b''4 gis''8 fis''8 e''8 gis''8 ais''8 r8 
      | r2 r8 f''8 es''8 bes'8 
      | aes''8 f''8 es''8 bes'8 f''8 es''8 bes'8 f'8 
      | es''8 bes'8 f'4 bes'8. f'16 es'8 bes8 
      | f'4 es'16 f'16 aes'16 bes'16~ bes'4~ \tuplet 3/2 {bes'8 aes'8 e'8} 
      | g'8 aes'4 f'8~ f'2~ 
      | f'2. \tuplet 6/4 {es''16 f''8 ges''16 aes''16 f''16~} 
      | f''16 es''16 des''16 bes'16 aes'16 f'16 bes'16 es''16 des''16 bes'16 aes'16 des''16 bes'4 
      | a'16 bes'8 aes'16 f'16 es'16 des'16 bes16 aes16 bes16 aes8 r4\bar  ".."
    }
    >>
>>    
}
