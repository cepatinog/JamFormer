\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Pablo's Story"
  composer = "David Liebman"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key e \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | r4 s4 s2 | s1 
      | e1:min7 | s1 | s1 | s1 | d1:7 | s1 | s1 | s1 
      | c1:11+.9 | s1 | s1 | s1 | b1:9- | a1:min5-7 | b1:/g | f1:13-.9+11+ 
      | es1:/e | d1:/es | es1:/e | s1 | des1:/d | s1 | s1 | s1 
      | c1:11+.9 | s1 | s1 | s1 | bes1:9- | a1:min5-7 | b1:/g | f1:13-.9+11+ 
      | e1:min7 | s1 | s1 | s1 | d1:7 | s1 | s1 | s1 
      | c1:11+.9 | s1 | s1 | s1 | b1:9- | a1:min5-7 | b1:/g | f1:13-.9+11+ 
      | es1:/e | d1:/es | es1:/e | s1 | des1:/d | s1 | s1 | s1 
      | c1:11+.9 | s1 | s1 | s1 | b1:9- | a1:min5-7 | b1:/g | \time 3/4 f2.:13-.9+11+ 
      | e1:min7 | s1 | s1 | s1 | d1:7 | s1 | s1 | s1 
      | c1:11+.9 | s1 | s1 | s1 | b1:9- | a1:min5-7 | b1:/g | f1:13-.9+11+ 
      | es1:/e | d1:/es | es1:/e | s1 | des1:/d | s1 | s1 | s1 
      | c1:11+.9 | s1 | s1 | s1 | b1:9- | a1:min5-7 | b1:/g | f1:13-.9+11+ 
      | e1:min7 | s1 | s1 | s1 | d1:7 | s1 | s1 | s1 
      | c1:11+.9 | s1 | s1 | s1 | b1:9- | a1:min5-7 | b2.:/g f4:13-.9+11+|
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

      \tempo 4 = 144
      \set Score.currentBarNumber = #-1

      \bar "||" \mark \default r4 r8 gis''16 a''16 b''16 c'''16 bes''16 aes''16 \tuplet 3/2 {g''8 f''8 es''8} 
      | \tuplet 3/2 {f''8 g''8 es''8} f''4. es''16 d''16~ d''16 c''8 bes'16 
      \bar "||" \mark \default c''8 d''4 c''8 bes'2~ 
      | bes'4 \tuplet 5/4 {a'8 ais'8 c''16~} c''4 bes'4 
      | a'2.. g'16 a'16~ 
      | a'8 a'8 bes'8. a'16~ a'8 g'8~ g'8. fis'16~ 
      | fis'8 g'8 \tuplet 3/2 {g'8 aes'4~} aes'8 g'8 fis'16 f'8.~ 
      | f'2~ f'8 e'4. 
      | r1 
      | r1 
      \bar "||" r2. \tuplet 3/2 {r8 e'8 f'8~} 
      | f'8 fis'2..~ 
      | fis'8 e'8 \tuplet 3/2 {fis'8 g'8 a'8} fis'8 g'16 fis'16~ fis'4~ 
      | fis'2.. e'8 
      | fis'16 g'16 a'16 g'16 fis'8 g'8 a'8 fis'4. 
      | fis'16 b'16 r8 \tuplet 6/4 {r4 f'16 bes'16} \tuplet 5/4 {dis'16 e'16 dis'16 e'16 dis'16} \tuplet 6/4 {e'16 dis'16 e'16 es'16 bes'8} 
      | \tuplet 5/4 {d'16 cis'16 d'16 cis'16 b16} c'8 r8 r2 
      | r8 b8 \tuplet 3/2 {c'8 d'8 bes'8} e'4 fis'8 b'8 
      \bar "||" g'4 a'4 b'4. a'8~ 
      | a'8 g'4 r8 r2 
      | r1 
      | r1 
      | r2 \tuplet 6/4 {r8. gis''8 a''16~} \tuplet 3/2 {a''8 c'''8 bes''8} 
      | aes''1 
      | aes''2 aes'2~ 
      | aes'8 b''8 c'''16 des'''16 c'''16 e'''16 \tuplet 6/4 {es'''16\glissando  d'''16 bes''4\bendAfter #-4 } r4 
      \bar "||" r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r2 r8 a8 c'8 d'8 
      | \tuplet 6/4 {e'8. fis'8 f'16~} f'8 g'4 aes'16 bes'16~ \tuplet 3/2 {bes'8 c''8 d''8} 
      \bar "||" \mark \default es''8 des''8~ des''2~ des''8 c''8 
      | ais'8 c''16 f''16~ \tuplet 3/2 {f''8 dis''8 des''8} c''8 ais'8 \tuplet 3/2 {c''4 c''8~} 
      | c''8. c''16~ c''4. \tuplet 6/4 {b'8 c''16~} c''8 ais'8 
      | \tuplet 3/2 {aes'8 g'8 gis'8} ais'4 ais'4. cis''16 ais'16~ 
      | \tuplet 5/4 {ais'8. aes'16 g'16~} \tuplet 3/2 {g'8 fis'8 g'8~} g'8 gis'4 a'8~ 
      | a'8 b'8~ \tuplet 3/2 {b'8 a'8 gis'8} a'8 b'8 \tuplet 3/2 {c''8 d''8 c''8} 
      | \tuplet 3/2 {ais'8 c''8 e''8} fis''8 e''16 f''16 dis''8 cis''4 d''8 
      | c''8 ais'8~ ais'4~ ais'16 gis'8 fis'16~ fis'16 e'16 fis'16 g'16~ 
      \bar "||" g'4 f'8 es'8~ \tuplet 6/4 {es'4~ es'16 f'16~} \tuplet 3/2 {f'8 es'8 des'8~} 
      | des'4 r2. 
      | r1 
      | r1 
      | r1 
      | r1 
      | \tuplet 9/8 {r16 b16 c'32 dis'32 f'32 e'32 es'32} d'32 dis'16 e'16 g'32 gis'32 ais'32 \tuplet 9/8 {cis''32 e''32 f''32 g''32 ais''32 d'''32 cis'''32 b''32 ais''32~} ais''16 b''16 a''16 c'''16 
      | \tuplet 6/4 {b''16 bes''16 gis''16 a''8.} r2. 
      \bar "||" r4 r8 bes8 c'8 d'8~ \tuplet 6/4 {d'4~ d'16 des'16~} 
      | des'16 dis'16 f'8~ \tuplet 3/2 {f'8 fis'8 gis'8~} gis'16 ais'16 gis'16 a'16 \tuplet 3/2 {b'8 des''8 c''8} 
      | \tuplet 3/2 {a'8 c''8 d''8} \tuplet 3/2 {e''8 g''8 e''8} \tuplet 3/2 {f''8 g''8 aes''8} ais''8 b''16 c'''16 
      | bes''8 aes''16 bes''16 g''2 f''8 es''8 
      | fis''8 aes''16 bes''16~ \tuplet 6/4 {bes''16 fis''8 g''16 aes''16 f''16~} \tuplet 3/2 {f''8 es''8 bes'8} \tuplet 3/2 {c''8 d''8 es''8} 
      | f''8 des''4 bes'16 e'16 f'8 d''8~ \tuplet 3/2 {d''8 c''8 a''8~} 
      | a''8 aes''8 es''8 b'16 d''16 \tuplet 3/2 {e''8 g''8 fis''8} \tuplet 3/2 {e''8 f''8 d''8} 
      | \tuplet 3/2 {bes'8 fis'8 es'8} \tuplet 3/2 {d'8 des'8 e'8} f'8. e'16 f'16 e'16 f'16 g'16 
      \bar "||" fis'16 fis'16 g'16 g'16 \tuplet 5/4 {a'16 a'16 b'16 bes'16 bes'16} \tuplet 6/4 {a'16 gis'16 a'16 gis'16 a'16 g'16} fis'8 r8 
      | r1 
      | r1 
      | r1 
      | r16. d'16 e'16 ais'32~ \tuplet 5/4 {ais'16 e'16 fis'16 a'16 e''16} \tuplet 3/2 {bes'8 a'16 r8.} r4 
      | r16 b16 e'16 bes'16 \tuplet 5/4 {e''16 fis'16 bes'16 e''16 bes'16~} bes'8 r8 r4 
      | \tuplet 6/4 {r8 b8 e'16 b'16} ais'8 dis'8 \tuplet 3/2 {gis'4 dis''8} ais'4 
      | \time 3/4 r1 
      \bar "||" \mark \default r1 
      | \tuplet 6/4 {r8. g''8 f''16~} \tuplet 3/2 {f''8 fis''8 g''8} \tuplet 3/2 {c'''8 ais''8 dis''8~} dis''4~ 
      | dis''8 c''8 \tuplet 3/2 {d''8 dis''8 e''8} \tuplet 3/2 {f''8 fis''8 f''8} \tuplet 6/4 {e''8 es''8 d''16 des''16~} 
      | \tuplet 3/2 {des''8 c''8 bes'8} \tuplet 3/2 {a'8 ais'8 b'8~} b'16 c''16 cis''16 d''16~ \tuplet 7/8 {d''16. cis''32 d''32 des''32 c''32} 
      | b'16 ais'16 g'16 fis'16 \tuplet 6/4 {g'16 aes'8 g'8 fis'16} \tuplet 6/4 {f'8 e'16 dis'16 e'16 f'16~} \tuplet 6/4 {f'16 fis'16 f'16 fis'16 f'16 e'16} 
      | \tuplet 6/4 {dis'8 cis'8 d'16 e'16~} e'16 d'16 f'8 e'16 g'16 f'16 fis'16~ fis'16 a'16 fis'16 g'32 ais'32~ 
      | ais'16 gis'16 a'16 c''16~ \tuplet 5/4 {c''16 f''16 b'16 c''16 d''16} dis''16 c''16 d''16 f''16 \tuplet 3/2 {e''8 d''8 es''8} 
      | \tuplet 3/2 {d''8 cis''8 b'8} dis''16 f''16 g''16 dis''16 \tuplet 3/2 {f''8 fis''8 g''8~} \tuplet 6/4 {g''16 ais''8. fis''16 g''16~} 
      \bar "||" \tuplet 3/2 {g''8 aes''8 bes''8} c'''16 bes''16 c'''16 des'''16 \tuplet 5/4 {c'''8 bes''8 c'''16~} \tuplet 3/2 {c'''8 bes''8 c'''8~} 
      | \tuplet 3/2 {c'''8 des'''8 c'''8} \tuplet 3/2 {bes''8 c'''8 bes''8} c'''8 bes''16 c'''16~ c'''16 c'''16 des'''16 c'''16~ 
      | c'''16 bes''8 c'''16~ \tuplet 3/2 {c'''8 aes''8 c'''8} a''16 bes''4..~ 
      | bes''4~ \tuplet 3/2 {bes''8 f''8 fis''8} cis''16 d''16 es''16 bes'16~ \tuplet 6/4 {bes'16 f'16 d'16 f'16 bes'16 f'16} 
      | fis'8 ais'16 dis''32 e''4. d''16 b'32 fis'32 d'32 e'4 
      | r1 
      | r1 
      | r2. r8 e'8 
      \bar "||" a'16 a'16 b'8 r2 r8 es'8 
      | gis'16 gis'16 bes'8 r2 r8 a'16 a'16~ 
      | \tuplet 6/4 {a'16 d''4 d''16} e''8 r8 r4 \tuplet 6/4 {r4 c''16 c''16~} 
      | c''16 f''8 f''16 g''4 r4 r8. aes''16~ 
      | aes''8 aes''16 fis''16~ fis''4 \tuplet 6/4 {e''4 e''16 c''16~} c''4~ 
      | \tuplet 3/2 {c''8 d''8 es''8} \tuplet 6/4 {cis''16 d''16 bes'16 fis'8 d'16} a'16 e'16 es'16 f'16~ f'8 r8 
      | r2 \tuplet 6/4 {r8. bes16 d'16 fis'16~} \tuplet 6/4 {fis'16 f'8 e'16 es'16 g'16} 
      | f'32 es'16 f'32 aes'32 g'32 bes'32 cis''32 \tuplet 6/4 {d''16 e''16 f''8 d''16 es''16~} \tuplet 6/4 {es''16 f''16 fis''8 aes''16 bes''16~} bes''16 c'''16 b''16 bes''16 
      \bar "||" a''16 fis''16 d''16 e''16 a''8 e''16 a''16 aes''16 g''16 fis''16 des''16 e''16 f''16 g''16 e''16 
      | fis''16 d''16 bes'8 es''16 bes'16 fis'16 c'16 bes'16 f''8 fis''16~ fis''8. bes''16~ 
      | \tuplet 3/2 {bes''8 fis''8 ais''8} b''16 ais''16 b''16 g''16 \tuplet 5/4 {f''16 des'''16 c'''16 des'''16 bes''16} c'''16 d'''16\bendAfter #-4  r8 
      | r2. \tuplet 6/4 {r8 a''16\glissando  bes''16 c'''16 d'''16} 
      | \tuplet 6/4 {des'''16 c'''16\glissando  ais''16 b''8.~} b''4. c'''16 b''16 \tuplet 3/2 {ais''8 cis'''8 ais''8} 
      | \tuplet 6/4 {b''16 c'''16 des'''8 b''16 d'''16} des'''8.. ais''32~ ais''16 b''16 c'''16 b''16 \tuplet 10/8 {des'''16 b''16. g''16 gis''32 a''32 b''32} 
      | \tuplet 6/4 {cis'''8 d'''16 cis'''16 b''16 c'''16} \tuplet 6/4 {b''8 cis'''16 d'''16 ais''16 des'''16} c'''32 des'''32 c'''16 cis'''16. bes''32 a''16 des'''16 c'''8 
      | b''16 c'''32 cis'''32 d'''16 des'''32 b''32 \tuplet 6/4 {c'''8. cis'''16 d'''16 es'''16~} \tuplet 6/4 {es'''16 d'''16 des'''16 c'''8 cis'''16} \tuplet 6/4 {d'''16 dis'''16 e'''8 d'''16 es'''16~} 
      \bar "||" \mark \default \tuplet 6/4 {es'''16 f'''8. fis'''16 a'''16} f'''4 aes'''2~ 
      | aes'''4 g'''8 f'''8~ f'''16 b''16 a''16 a''16~ a''32 bes''16 a''32 bes''32 a''32 ais''32 aes''32 
      | g''16 fis''16 f''16 e''16 es''16 d''16 des''16 c''16 b'16 bes'16 a'16 aes'16 g'16 fis'16 f'16 e'16 
      | dis'16 g'16 d'16 g'16 d'16 g'16 d'16 g'16 \tuplet 6/4 {d'16 g'8 d'16 g'16 d'16~} d'16 g'16 d'16 g'16 
      | fis'8 g'16 a'16 r2. 
      | r1 
      | r1 
      | r2. \tuplet 6/4 {r8. dis'16 e'16 g'16} 
      \bar "||" fis'4 r4 \tuplet 6/4 {r8. fis'8 g'16~} g'16 a'16 d''16 c''16~ 
      | c''8 a'8 a'8 r8 r4 r16 a'16 a'16 a'16 
      | \tuplet 5/4 {a'8 a'8 a'16~} \tuplet 3/2 {a'8 a'8 a'8} a'16 a''8 aes''16 r4 
      | r2. \tuplet 6/4 {r8. a'16 aes'16 g'16} 
      | fis'2... e'16 
      | \tuplet 5/4 {fis'16 g'16 a'16 g'16 fis'16} g'2~ \tuplet 6/4 {g'8. fis'8 g'16} 
      | a'16 b'16 a'16 g'16 a'2 r4\bar  ".."
    }
    >>
>>    
}
