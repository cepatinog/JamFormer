\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Nature of the Beast"
  composer = "Bob Berg"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \minor
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
      
      | r1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | f1:sus4|
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


      \tempo 4 = 132
      \set Score.currentBarNumber = #-15
     
      | r2 r8 a8 g16 c'16 a16 f16 
      | g16 es16 d16 c16 f16 d16 es16 f16 g16 bes16 a8 r8. des'16 
      | f'16 des'16 bes16 f16 es'16 c'16 aes16 f16 \tuplet 5/4 {bes16 f16 des16 f16 es16~} \tuplet 3/2 {es8 bes,8 aes,8} 
      | r1 
      | r8 d''8 \tuplet 6/4 {es''16 d''8 bes'16 f'16 ges'16~} ges'16 f'16 d'16 bes16 es'4~ 
      | es'1~ 
      | es'2~ es'8 es'8 \tuplet 3/2 {es'8 es'8 es'8~} 
      | es'8 es'8 es'8 r8 r2 
      | \tuplet 5/4 {r8 d''16 c''16 bes'16} \tuplet 6/4 {aes'8. c''16 bes'16 aes'16~} \tuplet 6/4 {aes'16 ges'8 bes'16 aes'16 ges'16} f'16 e'8 c''16~^\markup{\left-align \small vib} 
      | c''1~ 
      | c''1~ 
      | c''4 r2. 
      | r16 bes'16 aes'16 ges'16 f'16 es'16 d'16 f'16 es'16 d'16 bes16 f16 ges8. es'16~ 
      | es'1~ 
      | es'2. r4 
      | r2. r16 f8 c'16~ 
      \bar "||" \mark \default \tuplet 6/4 {c'8 d'8. es'16~} es'16 f'8 cis'16 d'8 c'8 r4 
      | r4 \tuplet 6/4 {r8 f8. c'16~} c'16 d'8 es'16~ es'16 f'8 cis'16 
      | d'16 c'16\glissando  des'8 r2. 
      | r1 
      | \tuplet 3/2 {c'8 d'8 es'8~} \tuplet 5/4 {es'16 f'8 cis'16 d'16} g'4 r8. f16 
      | c'8 d'8 es'8 f'16. cis'32 d'8 c'8 r8. f16 
      | c'16 d'16 es'16 f'16 cis'16\glissando  d'16 f'8 bes'8 a'8 r4 
      | r4 r16 f16 c'16 d'16 \tuplet 6/4 {es'8 f'8 cis'16\glissando  d'16} c'8 r8 
      | r4 r16 bes'16 a'16 f'16 g'16 es'16 d'16 c'16 f'8 g'8 
      | d'16\glissando  es'16 c'4 r8 r4 \tuplet 3/2 {r8 aes'8 des''8} 
      | r4 \tuplet 3/2 {bes'8 ges'4} es'16 aes'8 f'16~ f'16 des'16 bes16 es'16 
      | c'16 aes16 es8 r2. 
      | r4 \tuplet 6/4 {g'16\glissando  aes'8. des''16 bes'16~} bes'16 ges'16 f'16 e'16 es'16 f'16 ges'16 aes'16 
      | f'16 e'16 es'16 aes'16 ges'16 des'16 bes16 aes16 es'16 des'16 bes8 aes16 ges16 des16 ges16 
      | d16 es16 bes,16 aes,16~^\markup{\left-align \small vib} aes,8 r8 r2 
      | r1 
      | r4 r16 bes'16 a'16 f'32 g'32~ g'8 bes'8 a'16 f'16 g'8~ 
      | \tuplet 6/4 {g'16 bes'16 a'8 f'16 g'16~} \tuplet 6/4 {g'4 bes'16 a'16~} \tuplet 7/8 {a'32 f'16 g'16 bes'32 a'32~} a'16 f'16 g'8~ 
      | \tuplet 6/4 {g'16 f'16 g'8 bes'16 a'16} f'8 g'8~ \tuplet 6/4 {g'16 f'8 g'16 bes'16 a'16~} a'16 f'16 g'16 ges'16 
      | f'16 e'16 es'16 f'16 \tuplet 6/4 {g'16 bes'8 a'16 f'16 g'16} e'8 r8 r4 
      | r4 \tuplet 5/4 {r16 bes'16 c''16 e''16 f''16~} f''16 e''16 bes'16 g'16 a'16 ges'32 f'16. e'32 es'32~ 
      | es'16 f'16 ges'16 aes'16 f'16 e'16 es'16 g'16 ges'16 des'16 bes16 aes16 es'16 des'32 bes32 aes32 es'16 des'32 
      | \tuplet 5/4 {bes16 aes16 es'16 des'16 bes16} \tuplet 6/4 {aes16 es'16 des'16 bes16 aes16 es'16} \tuplet 6/4 {des'16 bes16 aes16 es'16 des'16 bes16} aes16 es'16 r8 
      | r4 \tuplet 6/4 {es'16 d'16 b16 aes16 es'8} \tuplet 6/4 {d'16 b16 aes16 es'8 d'16} \tuplet 6/4 {b16 aes16 es'16 d'16 b16 aes16} 
      | es'16 d'32 b32 aes16 es'32 d'32 \tuplet 5/4 {b16 aes16 es'16 des'16 bes16} \tuplet 6/4 {aes16 es'16 des'16 bes16 aes16 es'16~} es'8 r8 
      | r4 es'8 f'8 f'8 g'8~ g'8. g'16 
      | a'16 g'16 f'16 bes'16~ bes'16 aes'16 ges'16 b'16 a'8 g'8\bendAfter #-4  r4 
      | r4 r16 des''16 b'16 bes'16 a'16 aes'16 g'16 ges'16 f'16 e'16 es'16 g'16 
      | es'16 d'16 des'16 e'16 \tuplet 6/4 {es'16 d'16 f'8 e'16 es'16} \tuplet 3/2 {ges'8 f'8 e'8} f'16 e'16 f'16 ges'16~ 
      | \tuplet 3/2 {ges'8 fis'8 g'8~} g'8 g'16 aes'16~ aes'8 aes'4 a'16 aes'16 
      | \tuplet 7/8 {a'16. bes'16 a'32 bes'32~} \tuplet 6/4 {bes'8. b'16 bes'16 b'16} c''4 r4 
      | r16 b'16\glissando  c''16 g''16 \tuplet 3/2 {aes''8 g''4} bes'16 ges'16 f'16 e'16 es'16 f'16 ges'16 aes'16 
      | \tuplet 6/4 {f'16 e'8 es'16 g'16 ges'16~} ges'16 des'16 bes16 aes16 es'16 des'16 bes16 des16 a16 e16 bes,16 f16 
      | a,8 bes,8 \tuplet 3/2 {a,8 bes,8 c8~} c8 r8 \tuplet 6/4 {r4 d''16 des''16} 
      | \tuplet 10/8 {c''32 b'32 bes'32~ bes'8 des''32 b'32 bes'32} \tuplet 6/4 {aes'4 a'16 aes'16} g'16 ges'16 r8 r8 bes,32 c32 d32 es32 
      | des4 des16 es16\glissando  ges8~ ges16 ges16 aes16 a16~ a8 e32 ges32 aes32 a32 
      | r4 r16 bes'16 a'16 aes'16 g'16 ges'16 f'16 e'16 \tuplet 5/4 {es'16 g'16 a'16\glissando  g'16 a'16} 
      | ges'16 des'16 bes16 aes16 e'16 des'16 a8 b16 ges16 f16 e16 \tuplet 6/4 {es8 b8 des'16 es'16~} 
      | \tuplet 7/8 {es'32 des'16 a16. b32~} b32 des'16 ges'16 aes'16 des''32~ \tuplet 6/4 {des''16 c''16 bes'16 aes'8.} r4 
      | \tuplet 5/4 {r16 des''16 b'16 a'16 aes'16} \tuplet 6/4 {des''16 b'16 a'16 aes'16 des''8} \tuplet 6/4 {b'16 a'16 aes'16 des''16 b'16 a'16} \tuplet 6/4 {aes'8 des''16 b'16 a'16 aes'16} 
      | \tuplet 5/4 {des''16 b'16 a'16 aes'16 des''16} b'32 a'32 aes'16 des''32 b'32 a'32 aes'32~ \tuplet 7/8 {aes'32 des''16 b'32 a'32 aes'32 g'32~} g'4 
      | r4 \tuplet 7/8 {r16. g'16. f''32\glissando } g''2~ 
      | g''4. d''8 b'16 g'8.\bendAfter #-4  r4 
      | es'16 a'16 b'8 \tuplet 6/4 {es''16 f''16 es''8 b'16 a'16~} \tuplet 7/8 {a'32 es''16 b'16 aes'32 a'32~} a'16 f'16 d'16 bes16 
      | es'16 g'16 b'16 es''16 g''16\glissando  a''8.~ a''2 
      | g''16 d''16 bes'16 g'16 a'16 f'16 d'16 bes16 es'4^\markup{\left-align \small vib} r4 
      | g''16\glissando  a''8.~ a''4 bes'16 es''8.~ es''16 b,16 es16 bes16~ 
      | bes8 f16 e16 es16 g16 b16 des'16 es'16 des'16 a16 f16 b16 es'16 g'16 b'16 
      | g'16 ges'16 aes'16 b'16 cis''16 d''16 es''16 des''16 b'16 bes'16 a'16 aes'16 g'16 g'16 r8 
      | r8 g'16 g'16 r4 g'16 g'16 g'16 g'16~ g'8 g'8~^\markup{\left-align \small vib} 
      | g'1~ 
      | g'1~ 
      | g'2. r4 
      | g'16 aes'16 cis''16 d''16 g'2~ \tuplet 3/2 {g'8 d'8 g'8~} 
      | g'4 g'16 c'32 d'32 e'32 g'32 e'32 es'32~ es'16 g'16 f'16 f'16 r4 
      | \tuplet 5/4 {g'16 g'16 aes'16\bendAfter #+4  g'16 g'16} g'16 fis'16\glissando  g'16 es''16 \tuplet 6/4 {bes'16\glissando  aes'16 g'4\bendAfter #-4 } r4 
      | r16 g'16 bes'16 g'16~ \tuplet 6/4 {g'4 g'16 g'16~} g'16 ges'16 f'16 e'16 es'32 ges'16 bes'16. es''32 f''32~ 
      | \tuplet 7/8 {f''32 es''16 bes'16 g'32 a'32~} a'16 f'16 c'16 bes16 es'16 des'16 bes16 ges16 \tuplet 6/4 {a16 f16 des8 f16 es16} 
      | \tuplet 3/2 {es8 bes,8 a,8} \tuplet 3/2 {a,8 a8 f8} g4 r4 
      | g'16 bes'16 a'16 g'16 g'16 g'16 fis'16 g'16 \tuplet 6/4 {g'16 ges'16 f'8 e'16 es'16} \tuplet 3/2 {f'8 ges'8 e'8} 
      | \tuplet 6/4 {f'16 e'16 es'8 g'16 ges'16~} \tuplet 5/4 {ges'16 des'16 bes16 aes16 d'16~} \tuplet 6/4 {d'16 des'16 bes8 f16 aes16} c'8 f'8 
      | r4 g'16 g'16 c''8 r4 r16 bes16 f'16 bes'16~ 
      | \tuplet 3/2 {bes'8 c'8 g'8} c'4 bes16 f'16 bes'8 c'16 g'16 c''8~ 
      | \tuplet 6/4 {c''8 des'8 g'16 des''16~} des''4 es'16 aes'16 es''8 r4 
      | \tuplet 6/4 {r16 es'8 f'16 bes'16 es'16~} \tuplet 6/4 {es'16 f'16 aes'8 b'16 d''16} e''16 f''4..~ 
      | f''4... es''32~ es''8 bes'8\bendAfter #-4  r4 
      | es''16\glissando  f''8. es''16 b'16 a'16 f'16 \tuplet 6/4 {des'16 c'16 bes'16 f'8.\bendAfter #-4 } r4 
      | es''16\glissando  f''8 e''16 es''32 bes'16 ges'16 f'16 a'32~ a'16 ges'16 f'16 e'16 es'16 f'16 ges'16 aes'16 
      | f'16 e'16 es'16 g'16 ges'16 des'16 bes16 aes16 \tuplet 5/4 {es'16 des'16 bes16 f16 a16} \tuplet 3/2 {c'8 f'8 a'8} 
      | c''16 des''16 des''8~ \tuplet 6/4 {des''4 b'16 aes'16~} aes'8\bendAfter #-4  r8 \tuplet 6/4 {r4 r16 c''16\glissando } 
      | \tuplet 3/2 {d''4 a'8} aes'16 g'16 ges'16 aes'16 g'16 ges'16 f'16 e'16 es'16 f'16 ges'16 e'16 
      | f'16 e'16 es'16 g'16 ges'16 des'16 bes16 aes16 \tuplet 6/4 {es'16 des'8 bes16 ges16 aes16~} aes16 g16 ges16 aes16 
      | g16 bes16 des'8 r4 r16 aes'16 aes'16 aes'16 \tuplet 6/4 {f16 aes'4 g'16\glissando } 
      | aes'8 aes'8 aes'8 f'8 \tuplet 3/2 {f'8 es'8 f'8~} f'8 es'16 bes16~ 
      | bes4\bendAfter #-4  r4 r16 bes'16 aes'16 des''16 bes'16 ges'16 f'16 e'16 
      | es'16 f'16 ges'16 aes'16 \tuplet 6/4 {f'16 e'8 es'16 g'16 ges'16~} \tuplet 6/4 {ges'16 des'8 bes16 aes16 es'16~} es'16 des'16 aes8 
      | bes16 ges16 des16 ges16 \tuplet 3/2 {es8 bes,8 aes,8~} aes,8 r8 r4 
      | \tuplet 3/2 {a,8 es16 r8.} r4 r8 c16 f16~ f4 
      | aes,16 es8. \tuplet 6/4 {bes,8 f8. c16} g4~ \tuplet 3/2 {g8 aes,8 es8~} 
      | \tuplet 6/4 {es4~ es16 a,16~} \tuplet 6/4 {a,16 es8. bes,16 f16~} f16 c16 g16 d16 a8 e16 b16 
      | ges8 des'8 \tuplet 6/4 {aes16 es'8 bes8 c'16~} \tuplet 6/4 {c'16 f'8 des'8 g'16~} \tuplet 3/2 {g'8 e'8 a'8} 
      | \tuplet 5/4 {ges'16 b'8 aes'16 des''16} r4 \tuplet 6/4 {r16 aes,8 es8 des16~} des16 ges16 d16 b16~ 
      | b16 es16 b16 d16~ d16 g16 c16 f16~ f4 \tuplet 3/2 {aes,8 es8 des8} 
      | \tuplet 3/2 {ges8 e8 b8} \tuplet 3/2 {ges8 des'8 aes8~} aes16 des'16 b16 es'16~ \tuplet 6/4 {es'16 des'8 fis'8 g'16~} 
      | g'4 \tuplet 7/8 {des'16 es'32 ges'16 aes'32 es'32~} es'16 ges'16 aes'16 b'16 es''4 
      | r8 es''8 r4 r16 des'16 b16 des'16~ des'8 es''8~ 
      | es''8. es''16~ \tuplet 6/4 {es''4~ es''16 a16} a'4 es''4~ 
      | es''16 es''8 es''16~ es''8. a16 bes'4~ \tuplet 6/4 {bes'16 a,16 es8 a16 cis16~} 
      | \tuplet 6/4 {cis16 d16 f8 e16 es16~} \tuplet 6/4 {es16 g16 bes8 des'16 es'16} \tuplet 3/2 {f'8 g'8 b'8} es''4 
      | \tuplet 3/2 {a,4 es''8~} es''8. a,16 es''4~ es''16 es''8 a,16~ 
      | \tuplet 6/4 {a,4~ a,16 cis16~} \tuplet 6/4 {cis16 d16 f8 e16 es16~} es16 f16 g16 bes16 a16 f16 bes16 g16 
      | c'16 d'16 es'16 f'16 g'16 bes'16 a'4 es''8 a,8 es8~ 
      | es16 g8 b16~ b16 es'8 g'16~ g'16 b'8 es''16 es''8 r8\bar  ".."
    }
    >>
>>    
}
