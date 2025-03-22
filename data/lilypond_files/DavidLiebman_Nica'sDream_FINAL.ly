\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Nica's Dream"
  composer = "David Liebman"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key es \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | f1:min5-7 | bes1:7 | es1:maj | s1 | f1:min5-7 | bes1:7 | es1:maj | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:dim7 | f1:min7 | bes1:7 | es1:maj | s1 
      | f1:min5-7 | bes1:7 | es1:maj | s1 | f1:min5-7 | bes1:7 | es1:maj | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:dim7 | f1:min7 | bes1:7 | es1:maj | des1:7 
      | ges1:maj | s1 | es1:maj | s1 | ges1:maj | s1 | es1:maj | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:dim7 | f1:min7 | bes2:7 f2:min7 | es1:6 | s1 
      | f1:min5-7 | bes1:7 | es1:maj | s1 | f1:min5-7 | bes1:7 | es1:maj | s1 
      | a1:min5-7 | aes1:min7 | g1:min7 | ges1:dim7 | f1:min7 | bes1:7 | es1:maj|
      }
      }

    \new Staff
    <<
    \transpose c' c'

    {
      \global
  		%\override Score.MetronomeMark #'transparent = ##t
  		%\override Score.MetronomeMark #'stencil = ##f

          \set Score.markFormatter = #format-mark-box-numbers

      \tempo 4 = 151
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default c''8 des''8 r2 r16 c''16 des''16 es''16 
      | des''16 es''8 b'16 r2. 
      | \tuplet 3/2 {r8 ges''8 e''8} \tuplet 3/2 {f''8 e''8 es''8} \tuplet 3/2 {des''8 bes'8 ges'8} e'16 f'16 e'16 es'16~ 
      | es'16 des'8 aes'16 es'4 r4 r8 cis'16 d'16 
      | b8 b'8 cis'16 d'16 e'8 es'8 es''8 b'4 
      | bes'16 es'16 f'16 bes'16 a'16 f'16 des'16 e'16 a'16 e'16 ges'16 a'16 des''16 e''16 ges''16 e''16 
      | f''16 e''16 es''16 des''16 \tuplet 6/4 {c''8 aes'16 g'16 aes'16 a'16~} a'16 des'16 es'16 ges'16 f'16 e'16 es'16 e'16 
      | \tuplet 6/4 {c'16 des'16 f'8 a'16 c''16~} \tuplet 6/4 {c''4 g'16 a'16~} a'16 bes'16 c''16 f''16 g''16 e''16 f''8 
      | des''4 r2. 
      | \tuplet 3/2 {g''8 aes''8 b''8} bes'8. b'16 g''4 r4 
      | \tuplet 6/4 {r8. f''8 c'''16~} c'''16 des'''16 a''8 c'''8 bes'16 b'16 a'32 a'16 f''8 es''32~ 
      | es''8 aes''8 \tuplet 3/2 {f''8 cis''8 bes'8} es''16 bes'16 f'16 es'16 \tuplet 3/2 {g'8 aes'8 cis''8} 
      | \tuplet 6/4 {es''4~ es''16 es''16} \tuplet 3/2 {des''8 bes'8 f'8} d'16 es'16 des'16 f'16 \tuplet 5/4 {g'16 aes'16 g'16 f'16 d'16} 
      | \tuplet 6/4 {es'8 f'8 ges'16 bes'16} c''16 d''16 es''16 e''16~ e''16 d''16 es''16 cis''16 d''16 bes'16 f'16 d'16 
      | e'16 f'8. r2. 
      | r1 
      \bar "||" r8 des'16 es'16 \tuplet 10/8 {ges'16 f'16 e'16 es'16 f'32 aes'32~} \tuplet 6/4 {aes'16 e'16 f'8 a'16 des''16} e''16 des''16 e''16 g''16 
      | e''16 f''16 ges''16 aes''16~ aes''8 g''16 ges''16 \tuplet 6/4 {f''8 e''16 es''16 fis''16 g''16~} \tuplet 6/4 {g''16 d''16 e''8 f''16 des''16~} 
      | \tuplet 6/4 {des''16 es''8 b'16 ges'16 es'16~} \tuplet 5/4 {es'16 b'16 es'16 ges'16 b'16} aes'16 e'16 g'16 ges'16 f'16 e'16 es'16 g'16~ 
      | \tuplet 6/4 {g'16 e'16 f'16 g'16 aes'16 b'16} des''16 es''16 ges''16 des''16 e''16 d''16 bes'16 g'16 e''16 d''16 des''16 a'16 
      | des''8 es''8 f''8 es''8 e''8 aes''16 a''16 \tuplet 3/2 {ges''8 ges''8 des''8} 
      | f''8 c''8 e''8 a'8 es''4 d''4 
      | des''8 r8 r4 \tuplet 6/4 {r8. des''16 es''16 f''16} des''8 r8 
      | r4 r16 des'16 es'16 ges'16 \tuplet 6/4 {f'16 e'16 es'8 g'16 des'16~} des'16 f'16 a'16 c''16 
      | des''8 f''8 a''8 b''8 c'''8 b''8 \tuplet 3/2 {a''8 aes''8 f''8} 
      | \tuplet 6/4 {des''16 fis''16 g''16 a''8 f''16~} \tuplet 6/4 {f''16 des''16 es''8. d''16~} d''16 b'16 f'16 d'16~ d'16 bes'16 c''16 des''16 
      | \tuplet 3/2 {es''8 e''8 ges''8~} ges''16 e''16 bes'16 f'16 \tuplet 3/2 {e'8 bes'8 f'8} \tuplet 3/2 {des'8 es'4} 
      | aes2.~ \tuplet 12/8 {aes8 c'16. f'32 aes'32 bes'32 cis''32 e''32~} 
      | e''32 g''16 f''16 des''32 g'32 ges'32 \tuplet 6/4 {f'16 e'16 d'16 b16 c'16 e'16} bes'32 des''16 es''32 e''32 g''32 bes''32 g''32 f''32 d''32 c''32 a'32 e'32 c'16 es'32 
      | \tuplet 7/8 {f'32 a'32 b'32 d''32 es''32 ges''32 a''32} \tuplet 6/4 {des'''8 des'''8.\bendAfter #-4  g''16~} \tuplet 10/8 {g''32 ges''16 d''32 des''32 b'16 ges'32 e'32 c'32} b16 bes16 r8 
      | r1 
      | r2. r8 c''8 
      \bar "||" \tuplet 3/2 {c'''4 c'''8~} \tuplet 6/4 {c'''8 c'''8. c'''16~} c'''8 r8 r4 
      | \tuplet 3/2 {bes''8\glissando  c'''4~} c'''4. r8 r4 
      | \tuplet 3/2 {aes''8 bes''8 c'''8~} c'''16 c'''8 c'''16~ c'''16 b''8 bes''16 a''16 ges''16 des''16 e''16 
      | \tuplet 3/2 {a''8 aes''4~} \tuplet 6/4 {aes''4 g''16 ges''16} \tuplet 3/2 {f''8 e''8 es''8} \tuplet 6/4 {ges''16 b''16 e''16 d''8 es''16~} 
      | es''8. b'16 \tuplet 3/2 {f'8 d'4} \tuplet 5/4 {ges'16 bes'16 des'16 f'16 bes'16} aes'16 b'16 cis''16 d''16 
      | \tuplet 6/4 {ges''8 f''8. es''16~} es''8 d''8 es''8 f''16 des''16~ des''8 bes'8 
      | a'4~ \tuplet 6/4 {a'16 es'16 e'16 g'16 a'16 b'16} c''32 es''32 f''32 aes''32 ges''32 es''32 des''32 b'32 \tuplet 6/4 {ges'16 des'16 c'16 b16 bes8} 
      | a8 es'16 c''16 des''16 ges'16 a'16 b'32 c''32~ c''32 d''32 f''32 c'''32 d'''16 des'''32 b''32 \tuplet 6/4 {a''16 f''16 des''16 bes'16 c'8} 
      | des'8 r8 r4 r8 f''8 bes''16 f''16 a''16 bes''16 
      | des'''4. aes''8 aes''16 b''16 bes''8 bes'8. b16~ 
      | \tuplet 3/2 {b8 c'8 des'8~} des'16 f'8 ges'16~ ges'16 a'8 bes'16~ \tuplet 6/4 {bes'16 c''16 des''8 es''16 ges''16} 
      | cis''16 es''16 bes'16 fis'16 \tuplet 6/4 {es'8 c'16 cis'16 d'16 g'16} aes'4~ \tuplet 6/4 {aes'16\bendAfter #-4  bes'16 cis''16 es''16 f''16 e''16} 
      | \tuplet 5/4 {d''16 cis''16 d''16 cis''16 d''16} b'32 ges'16 d'32 f'32 g'32 bes'32 d''32 \tuplet 6/4 {des''16 bes'16 g'16 ges'16 des'16 c'16} \tuplet 6/4 {b16 bes16 c'16 d'16 e'16 f'16} 
      | bes'32 d'16 es'32 f'32 g'32 a'32 bes'32 \tuplet 5/4 {des''16 bes'16 g'16 a'16 des''16} f''32 des''32 ges''32 des''32 g''16 des''32 aes''32 aes''16 aes''16 aes''16 b''16 
      | r1 
      | r1 
      \bar "||" \tuplet 6/4 {f'16 ges'16 bes'8 des''16 f''16} aes''4 e''8. a''16~ a''16 ges''8 des''16 
      | \tuplet 6/4 {g''16 a''16 g''16 e''16 c''16 b'16} \tuplet 6/4 {g''8 a'8 c''16 es''16} g''8 e''16 g''16 ges''16 d''16 bes'16 g'16 
      | e''16 d''16 e''16 es''16 \tuplet 5/4 {cis''16 d''16 bes'16 ges'16 d'16} \tuplet 5/4 {a'8 d'16 f'16 bes'16} aes'16 ges'16 f'16 c'16 
      | es'16 des'16 es'16 ges'16 es'16 ges'16 aes'16 bes'16 g'16 a'16 b'16 des''16 es''16 ges''16 f''16 e''16 
      | es''16 bes'16 des''16 es''16 \tuplet 6/4 {f''8 des''8 bes'16 f'16} \tuplet 5/4 {e'8 ges'16 a'16 b'16} \tuplet 3/2 {cis''8 d''8 e''8} 
      | \tuplet 5/4 {d''16 es''16 c''16 bes'16 g'16} e''16 c''16 bes'16 g'16 es''4~ \tuplet 5/4 {es''16 cis''16 d''16 b'16 f'16} 
      | \tuplet 6/4 {b'16 a'16 bes'4} a'16 des'16 f'16 bes'16 \tuplet 6/4 {aes'16 g'16 ges'8 d'16 f'16} \tuplet 6/4 {e'16 es'8 g'8 c'16~} 
      | \tuplet 6/4 {c'16 es'16 ges'16 a'16 b'16 des''16} es''16 ges''16 es''16 f''16 e''16 es''16 des''16 c''16 bes'16 g'16 aes'16 a'16 
      | \tuplet 3/2 {f''4 c''8~} c''16 des''8 bes'16~ bes'16 ges'8 des'16~ \tuplet 6/4 {des'16 c'4 es''16} 
      | \tuplet 3/2 {e''8 es''8 e''8} r2 r8 es''8 
      | \tuplet 3/2 {aes'4 bes'8} r2 es''8 f''8 
      | a'8 e'''16 f'''16~ f'''8 r8 r4 \tuplet 5/4 {cis''8. d''16 fis''16} 
      | aes''16 bes''8.~ bes''8 r8 r4 aes''8 f''8 
      | des''8 es''8 es''4 r2 
      | es''16 f''16 es''16 f''16\bendAfter #+4  es''16 f''16 ges''8~ \tuplet 6/4 {ges''4~ ges''16 e''16} \tuplet 6/4 {f''16 ges''16 f''16 des''8 c''16~} 
      | c''8 r8 r2.\bar  ".."
    }
    >>
>>    
}
