\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "This Here"
  composer = "Cannonball Adderley"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    \clef "treble_8"
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
      | f2.:7 
      | f2.:7 | s2. | s2. | s2. | s2. | s2. | s4 r2 | s2. 
      | bes2.:7 | s2. | s2. | s2. | f2.:7 | s2. | s2. | s2. 
      | bes2.:7 | s2. | s4 a2:7 | s2. | aes2.:7 | s2. | g2.:7 | s2. 
      | aes2.:7 | s2. | g2.:7 | c2.:7 | f4:7 s2 | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:7 | s2. | s2. | s2. | f2.:7 | s2. | s2. | s2. 
      | bes2.:7 | s2. | a2.:7 | s2. | aes2.:7 | s2. | g2.:7 | s2. 
      | aes2.:7 | s2. | g2.:7 | c2.:7 | f2.:7 | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:7 | s2. | s2. | s2. | f2.:7 | s2. | s2. | s2. 
      | bes2.:7 | s2. | a2.:7 | s2. | aes2.:7 | s2. | g2.:7 | s2. 
      | aes2.:7 | s2. | g2.:7 | s2. | f2.:7 | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:7 | s2. | s2. | s2. | f2.:7 | s2. | s2. | s2. 
      | bes2.:7 | s2. | a2.:7 | s2. | aes2.:7 | s2. | g2.:7 | s2. 
      | aes2.:7 | s2. | g2.:7 | c2.:7 | f2.:7 | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:7 | s2. | s2. | s2. | f2.:7 | s2. | s2. | s2. 
      | bes2.:7 | s2. | a2.:7 | s2. | aes2.:7 | s2. | g2.:7 | s2. 
      | aes2.:7 | s2. | g2.:7 | c2.:7 | f2.:7 | s2. | s2. | s2. 
      | s2.|
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


      \tempo 4 = 175
      \set Score.currentBarNumber = #0
     
      | \tuplet 3/2 {c'4 d'8} f'8 g'8 aes'4 
      \bar "||" \mark \default \tuplet 3/2 {f'4 f'8} r2 
      | r2 \tuplet 6/4 {r16 d'4 c'16} 
      | f'8. f'16 r4 r8. es'16~ 
      | \tuplet 6/4 {es'16 c'4 d'16~} d'16 f'8 g'16 \tuplet 3/2 {g'8 aes'4} 
      | \tuplet 6/4 {f'4~ f'16 f'16} r2 
      | r4 d''4 c''4 
      | \tuplet 3/2 {f'4 f'8} r4 r8. es'32 d'32 
      | \tuplet 3/2 {c'4 d'8} f'8 g'8 aes'8 bes'8 
      | b'4 bes'4.. aes'16~ 
      | aes'4 f'4.. aes'16 
      | bes'8 b'8 bes'4. b'16 g'16~ 
      | g'16 aes'8 f'16 \tuplet 3/2 {d'4 c'8} f'4 
      | aes'8. gis'16~ gis'8 a'8 r4 
      | r2 d'8. c'16 
      | \tuplet 3/2 {f'4 f'8} r2 
      | r8. bes16~ bes16 cis'8 d'16 dis'4 
      | e'16 f'8. aes'16 g'8 f'16~ f'16 bes'8 a'16~ 
      | a'16 aes'8 c''16~ c''16 g'8 f'16 ges'8 a'8~ 
      | a'8 des'8~ des'16 g'8 f'16 fis'8 e'8 
      | es'4 \tuplet 6/4 {d'4 bes16 b16} cis'4 
      | aes'8. ges'16 des'4 bes16 f'8 e'16 
      | \tuplet 3/2 {es'4 c'8} des'8. b16 bes16 c'8 fis'16~ 
      | \tuplet 6/4 {fis'16 g'8. g'16 f'16} c'8. a16 dis'8 e'8 
      | d'8 d'8 r4 r8. fis'32 bes'32~ 
      | bes'8. g'16 aes'8 bes'8~ bes'16 c''8 d''16~ 
      | d''16 es''8 ges''16~ ges''16 f''8 es''16~ \tuplet 3/2 {es''8 d''8 f''8~} 
      | \tuplet 3/2 {f''8 e''8 d''8~} d''16 d''8 gis'16 f'8 d'8 
      | r4 r16 c'8 a16 bes8 g8 
      | f8 f8 r4 a4 
      | c'8. c'16~ c'4 d'4 
      | \tuplet 3/2 {f'4 f'8} r4 a'4 
      | b'16 c''8 c''16~ c''4 c''16 d''8 d''16 
      \bar "||" \mark \default es''4 d''4 c''4 
      | gis'16 a'16 bes'8 a'8. f'16 c'8 g8~ 
      | g16 bes8 c'16 a8. c'16 e'8 g'8 
      | \tuplet 3/2 {e'8 f'8 a'8} c''16 e''8 fis''16~ fis''16 g''8 ges''16~ 
      | ges''16 f''8 e''16~ e''16 d''8 c''32 des''32 \tuplet 3/2 {c''4 bes'8} 
      | b'16 bes'8 a'16~ a'16 g'16 a'16 g'16 ges'16 ges'16 f'8 
      | \tuplet 3/2 {e'8 es'4} r4 \tuplet 3/2 {b8 d'4~} 
      | \tuplet 5/4 {d'16 c'16 d'16 c'16 a16} ges8. f16~ f8. es16 
      | d4 bes4 r4 
      | r4 bes8 d'8 a8 c'8~ 
      | \tuplet 6/4 {c'16 dis'8. e'16 ges'16~} \tuplet 3/2 {ges'8 f'8 es'8} d'4 
      | f'16 bes'8 bes'16~ bes'4 aes'4 
      | f'8 f'8 \tuplet 5/4 {aes'16 c''8 dis''16 e''16} \tuplet 6/4 {c''16 b'16 bes'16 a'16 aes'8} 
      | f'8. bes'16~ \tuplet 6/4 {bes'16 a'8. g'16 aes'16~} aes'8 f'8 
      | \tuplet 3/2 {des'4 bes8} c'8. bes16 a4 
      | f'4 r4 bes4 
      | d'8. f'16 bes'8 a'8 c''8 bes'8 
      | a'8 g'8 f'8 es'8 d'8 c'8 
      | des'8 a8 a'8 r8 r4 
      | r8 g'16 a'16 bes'32 a'32 g'32 dis'32 c'32 bes32 a32 g32 \tuplet 6/4 {d'4 c'16 des'16~} 
      | des'4 c'4 c''4~ 
      | c''4 \tuplet 3/2 {es''4 des''8} \tuplet 3/2 {c''4 d''8~} 
      | d''4 c''8 d''8 b'4 
      | a'2 gis'4 
      | bes'16 c''16 es''8 c''16 b'16 bes'16 a'16 bes'16 aes'8 ges'16 
      | es'8 bes8 \tuplet 3/2 {des'4 b8} c'8 ges'8 
      | f'16 g'8. b'8 b'8 g'4 
      | ges'4 bes'8 bes'8 ges'4 
      | \tuplet 3/2 {f'4 f'8} r4 g'16 a'8. 
      | f'2 \tuplet 3/2 {bes'8 a'8 f'8} 
      | \tuplet 3/2 {f'4 f'8} r4 r8 f'8 
      | \tuplet 3/2 {a'4 f'8} \tuplet 6/4 {bes'4 f'16 aes'16} \tuplet 3/2 {b'4 bes'8} 
      \bar "||" \mark \default c''8 c''16 es''16~ es''2~ 
      | es''8 es''8 fis''8 g''8 g''16 f''8. 
      | d''8 es''8 d''4 c''4 
      | a'8 bes'8 a'8 f'8 c'8. a16~ 
      | a16 bes8 c'16 a4 r4 
      | r4 d'8 b8 c'8. f'16~ 
      | f'8 a8 \tuplet 3/2 {ges'4 es'8} \tuplet 3/2 {aes'4 g'8} 
      | \tuplet 3/2 {b'4 a'8} \tuplet 3/2 {d''4 c''8} \tuplet 3/2 {f''4 es''8~} 
      | es''16 c''16 cis''16 d''16 es''4 \tuplet 6/4 {f''4 f''16 bes'16~} 
      | bes'4 r4 \tuplet 6/4 {r16 aes'8 bes'16 aes'16 f'16} 
      | es'4 bes8 cis'8 d'16 f'16 g'8 
      | aes'8. bes16~ bes4 g'4 
      | f'8 f'8 \tuplet 3/2 {bes'8 c''8 es''8} c''8 bes'16 aes'16~ 
      | aes'16 f'8 es'16 c'4 bes8 c'8 
      | \tuplet 3/2 {a4 c'8} g'8 f'8 e'16 f'16 a'16 c''16 
      | es''16 f''8 f''16~ f''8. f''16 r4 
      | r8 d''8 \tuplet 6/4 {c''16 bes'8 a'16 g'16 ges'16} \tuplet 3/2 {f'8 e'8 es'8} 
      | \tuplet 6/4 {bes16 des'16 f16 g16 a16 g16} \tuplet 5/4 {a16 c'16 bes16 a16 bes16~} \tuplet 6/4 {bes16 d'16 f'8 g'16 gis'16~} 
      | gis'16 a'16 bes'16 c''16 \tuplet 5/4 {a'16 b'8. g'16~} g'16 e'16 b16 d'16 
      | r4 \tuplet 6/4 {r16 cis'8 d'16 e'16 fis'16~} \tuplet 6/4 {fis'16 g'16 fis'16 e'16 d'16 des'16~} 
      | des'16 c'8 c'16 \tuplet 6/4 {d'8 es'16 c'16 cis'16 d'16} \tuplet 6/4 {f'16 f'16 fis'16 g'16 aes'8~} 
      | \tuplet 6/4 {aes'4 f'16 ges'16} aes'16 bes'16 ges'8 des'8 r8 
      | r8. dis'16 \tuplet 3/2 {e'8 es'8 d'8} cis'16 d'16 e'16 es'16 
      | d'16 g16 a16 c'16 b16 c'16 d'16 e'16 f'16 g'16 gis'16 a'16 
      | des''8. bes'16~ bes'4 \tuplet 3/2 {des''4 bes'8} 
      | f''8. des''16~ des''4 cis''4 
      | d''8. b'16~ b'4 c''8 bes'8 
      | b'8. g'16~ g'16 bes'8 g'16 \tuplet 3/2 {e'4 b8} 
      | f'4 c''2 
      | c''2~ \tuplet 6/4 {c''4 bes'16 c''16~} 
      | c''4 bes'8 c''16 b'16~ \tuplet 6/4 {b'16 bes'16 a'8 aes'16 f'16~} 
      | f'8 c'8 es'8. c'16 e'8 c'8 
      \bar "||" \mark \default f'4 f'4 a'8 r8 
      | r4 \tuplet 3/2 {c'4 b8} d'8. c'16 
      | f'4 f'4 a'8 r8 
      | r4 c'8 bes16 d'16~ d'8 c'8 
      | f'4 a'4 \tuplet 3/2 {f'4 ges'8~} 
      | ges'4 bes'8 bes'8 ges'4 
      | \tuplet 6/4 {f'4 f'16 d'16} f'8. a'16 r4 
      | \tuplet 6/4 {r4 r16 f'16~} \tuplet 6/4 {f'4~ f'16 a'16~} a'8 f'8 
      | bes'8. d''16~ \tuplet 6/4 {d''8. d''8 bes'16~} bes'8 b'8~ 
      | b'8. es''16~ es''8 es''8 \tuplet 3/2 {b'4 f'8} 
      | bes'4 c''8 d''8 \tuplet 6/4 {bes'4 des''16 bes'16} 
      | aes'8 f'8 es'8 c'8 e'8 c'8 
      | f'4 a'8. f'16 ges'8 aes'8 
      | bes'8 ges'8 ges'16 es'8 d'16~ \tuplet 3/2 {d'8 des'8 a8} 
      | a8 des'8 bes8 b8 c'8 r8 
      | r4 f'4 g'4 
      | bes'4~ \tuplet 5/4 {bes'16 aes'16 bes'16 aes'16 f'16} \tuplet 3/2 {es'4 bes8} 
      | \tuplet 3/2 {d'4 f'8} bes'4 aes'16 bes'8. 
      | a'8 bes'8 bes'16 b'8 g'16 e'8. b16 
      | d'8 b8 cis'4 bes'8 a'8 
      | aes'8 ges'8 des'8 bes8 f'16 g'16 aes'16 f'16~ 
      | f'16 ges'8 es'16 r4 \tuplet 6/4 {r4 des'16 dis'16} 
      | \tuplet 3/2 {e'4 d'8} \tuplet 3/2 {cis'8 d'8 e'8} \tuplet 3/2 {d'4 a8} 
      | c'8 d'16 c'16 \tuplet 3/2 {a4 bes8} \tuplet 3/2 {b4 g'8} 
      | a'16 bes'16 c''16 cis''16 d''8 b'8 \tuplet 3/2 {c''4 d''8} 
      | b'4 g'4 fis'16 g'16 r8 
      | \tuplet 6/4 {r4 bes'16 a'16} \tuplet 6/4 {g'16 fis'8. cis'16 d'16} bes8 fis8 
      | g8 bes8 d'8 f'8 \tuplet 3/2 {e'4 c'8} 
      | f'4 c''2~ 
      | c''16 bes'16 a'16 f'16~ f'4. r8 
      | r4 c''2~ 
      | \tuplet 5/4 {c''16 b'8 aes'16 f'16~} f'4. es'8 
      \bar "||" \mark \default r4 c''4.. es''16~ 
      | es''4 f''4 es''4 
      | \tuplet 3/2 {bes'8 c''4~} c''16 b'16 a'16 aes'16 f'4 
      | r4 r16 g'16 a'8 bes'4 
      | b'8 c''8~ \tuplet 6/4 {c''4~ c''16 es''16~} es''4 
      | f''8 f''16 es''16~ es''4 c''4 
      | \tuplet 3/2 {b'8 bes'8 aes'8} f'4 r4 
      | r8. aes'16 bes'8. d''16~ d''8 f''8 
      | g'4 aes''8. g''16 ges''16 f''16 d''16 es''16~ 
      | \tuplet 6/4 {es''16 d''16 c''16 bes'16 aes'8~} aes'8 g'16 f'16 dis'8 e'16 d'16 
      | \tuplet 6/4 {des'16 c'16 bes16 aes8.} aes4 r4 
      | r4 \tuplet 6/4 {c'4~ c'16 d'16~} d'8 c'8 
      | f'8. c''16~ c''4 es''8 f''8~ 
      | f''4 es''4 c''4 
      | aes'16 bes'8. aes'8 c''16 aes'16 g'16 f'8 es'16 
      | c'8 aes8 bes8 c'8 a8. c'16 
      | f'4 bes'4 a'16 bes'16 r8 
      | r8 a'16 bes'16 c''16 bes'16 a'16 g'16 \tuplet 6/4 {f'16 es'8 bes16 d'16 bes16} 
      | \tuplet 12/8 {d'8 c'16 cis'16. e'32 dis'32 gis'32} \tuplet 6/4 {a'16 c''8. bes'16 c''16~} c''8 bes'16 c''16 
      | a'2.~ 
      | a'8 aes'16 g'16 ges'8 bes'8 bes'16 f'16 e'8 
      | es'8 es'16 bes16 \tuplet 3/2 {des'4 b8} c'8 fis'8 
      | g'8 g'16 f'16 c'8 a8 \tuplet 3/2 {e'4 es'8} 
      | d'4 aes'8 g'16 gis'16~ \tuplet 6/4 {gis'8 bes'8. bes'16} 
      | c''8 es''8 \tuplet 6/4 {des''8. es''16 des''16 c''16~} c''8 aes'8~ 
      | aes'4 r4 r8 fis'8 
      | g'8 d'8 b'8 g'8 fis'8 a'8 
      | g'8 f'8~ \tuplet 6/4 {f'16 e'4 c'16} d'8 c'8 
      | f'8 f'8 r4 aes'4 
      | f'8. f'16~ f'4 es'4 
      | \tuplet 3/2 {c'4 c'8} r4 es'4 
      | c'8 c'8 bes4 gis8 a8 
      \bar "||" f4 r2\bar  ".."
    }
    >>
>>    
}
