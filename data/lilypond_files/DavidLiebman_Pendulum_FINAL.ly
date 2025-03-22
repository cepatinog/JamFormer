\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Pendulum"
  composer = "David Liebman"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key fis \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | r1 
      | fis1:min|
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

      \tempo 4 = 259
      \set Score.currentBarNumber = #0

      | r8. a''16 \tuplet 3/2 {fis''8 a''8 fis''8} ais''16 c'''16 cis'''16 dis'''16 \tuplet 3/2 {f'''8 d'''4~} 
      \bar "||" \mark \default d'''8 fis'''2..~ 
      | fis'''1~ 
      | fis'''1~ 
      | fis'''8 ais''16 b''16~ \tuplet 5/4 {b''16 c'''8 g''16 cis'''16~} cis'''16 c'''16 b''16 gis''16~ gis''16 gis''16 a''16 gis''16 
      | f''16 d''16 e''16 gis'16~ gis'16 d''16 cis''16 f''16 \tuplet 3/2 {ais'8 g'8 a'8} cis'8 c'8 
      | b1~ 
      | b8 ais'8 e'8 fis'8 g'8 a'8 fis'8 fis'8 
      | d'8 fis'16 e'16~ \tuplet 3/2 {e'8 fis'8 a'8~} a'8 b'8 cis''8. ais'16~ 
      | ais'8\bendAfter #-4  r8 r2. 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | ais'8 a'8 f''8 e''16 dis''16~ dis''16 f''8 f''16~ f''16 g''8 a''16 
      | ais'8 f''8 \tuplet 3/2 {g''8 a''8 fis''8} f''8 dis''8 d''4 
      | gis'8 fis'8 \tuplet 3/2 {d'8 a'8 d''8} cis''8 ais'16 g'16 a'8 fis'8 
      | cis'8 fis'8 \tuplet 3/2 {dis'8 fis'8 gis'8} a'8 dis''8 cis''8 a'16 fis'16 
      | ais'8 c''8 d''16 g''8 c''16~ \tuplet 3/2 {c''8 f''8 g''8~} g''8 ais''8 
      | c'''8 cis'''8~ cis'''16 ais''8 c'''16~ c'''2~ 
      | c'''2. \tuplet 3/2 {cis'''8 c'''8 b''8} 
      | ais''2~ ais''8 ais'8 ais''4 
      | ais''4 ais''8. ais''16~ ais''8 a''8 ais''8 a''8 
      | ais''8\glissando  c'''8 a''2 \tuplet 3/2 {cis'''8 a''8 fis''8} 
      | g''8 a''8 fis''8 cis''8 b'8 a'8 e''4 
      | gis''8 fis''4. e''16 f''8 d''16~ d''8 a'8 
      | \tuplet 3/2 {g'4 dis''8} c''8 d''8 ais'8 fis'8 \tuplet 3/2 {d'8 a'8 d''8} 
      | c''16 ais'16 a'16 fis'16 \tuplet 3/2 {c'8 fis'8 c'8} \tuplet 3/2 {ais8 b8 b'8} \tuplet 3/2 {c''8 f''8 fis''8} 
      | a''32 ais'16 dis''32 c''16 gis'32 a'32 \tuplet 3/2 {f'8 b'8 c''8} \tuplet 5/4 {dis''16 fis''16 g''16 fis''16 f''16} g''16 c'''16 cis'''16 d'''16 
      | cis''8 r8 r2. 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r2 c''16 d''16 dis''16 e''16 \tuplet 6/4 {dis''16 d''16 c''16 ais'16 cis''8} 
      | dis''16 e''8 d''16 \tuplet 3/2 {b'8 ais'8 cis''8} \tuplet 3/2 {e''8 dis''8 d''8} \tuplet 3/2 {cis''8 ais'8 cis'8} 
      | d'16 dis'16 e'16 d'16~ \tuplet 3/2 {d'8 ais'8 c'8} cis'8 e'16 dis'16 \tuplet 3/2 {cis'8 c'8 f'8} 
      | ais'16 cis''16 dis''16 e''16~ \tuplet 6/4 {e''16 d''16 c''16 cis''16 a'8} g'8 c''8 d''16 cis''16 a'16 ais'16 
      | c''8 cis''16 d''16~ d''8 a'16 ais'16 cis''16 d''16 f''16 dis''16 e''16 d''16 c''16 ais'16 
      | \tuplet 3/2 {gis'8 c''8 cis''8} dis''16 d''16 e''16 ais'16 gis'16 a'16 ais'16 b'16 \tuplet 3/2 {c''8 cis''8 c''8} 
      | \tuplet 3/2 {ais'4 g'8} \tuplet 3/2 {gis'8 a'8 ais'8} \tuplet 3/2 {b'8 gis'8 fis'8~} \tuplet 3/2 {fis'8 f'8 fis'8} 
      | g'8 fis'8 e'16 f'16 d'8 c'16 cis'4..~ 
      | cis'8. d'16~ \tuplet 3/2 {d'8 fis'8 e'8} dis'8 f'8 e'8 d'8 
      | dis'8 d'8 cis'8 f'8 d'8 f'8 a'8 cis''16 e''16~ 
      | e''8 ais'8 r2. 
      | r1 
      | r1 
      | r1 
      | r2 a8 dis'8 f'8 ais'8 
      | dis''8 f''8 g''8 ais''8 c'''4 r4 
      | r2. \tuplet 3/2 {r8 ais''8 c'''8~} 
      | \tuplet 3/2 {c'''8 b''8 c'''8~} c'''16 ais''8 g''16~ g''16 f''8 c''16~ c''8 dis''8~ 
      | \tuplet 3/2 {dis''8 fis''8 g''8~} \tuplet 3/2 {g''8 dis''8 f''8~} f''16 dis''8 c''16~ \tuplet 3/2 {c''8 ais'8 dis''8~} 
      | \tuplet 3/2 {dis''8 ais'8 f'8~} f'16 dis'8 gis'16~ \tuplet 3/2 {gis'8 ais'8 b'8~} b'8 cis''8~ 
      | cis''8 ais'8 fis'8 cis'8 f'8 e'8 dis'8 fis'8 
      | d'8 f'16 gis'16~ gis'8 a'8 b'4 a'4 
      | ais'4 gis'8 a'8~ \tuplet 3/2 {a'8 fis'8 cis'8~} cis'8 fis'8 
      | e'4.. e'16~ e'8\bendAfter #-4  r8 r4 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r4 r8 cis'8 d'8 fis'8~ fis'16 f'8 e'16~ 
      | \tuplet 3/2 {e'8 dis'8 g'8} d'8 f'8 \tuplet 3/2 {gis'4 a'8~} a'4~ 
      | a'8 gis'8 a'8 gis'8 \tuplet 3/2 {g'8 fis'4} f'8 e'8 
      | dis'8 fis'8 d'8 f'8 a'4 c''8. d''16 
      | e''8. c''16 \tuplet 3/2 {d''4 gis'8} f'4 ais'4~ 
      | ais'16\bendAfter #-4  f'8 ais'16 gis'8 gis'8 g'8 fis'8 f'8 e'16 dis'16~ 
      | dis'16 fis'8 e'16~ \tuplet 3/2 {e'8 d'8 dis'8~} \tuplet 3/2 {dis'8 cis'8 d'8~} \tuplet 3/2 {d'8 cis'8 d'8~} 
      | d'8 e'4\bendAfter #-4  r8 r2 
      | r8. g'16~ g'8 gis'8~ gis'8. ais'16~ ais'8. f'16~ 
      | f'8 ais'8 gis'8 fis'4 fis'8\glissando  f'4 
      | r8. a'16~ a'8 r8 r8 ais'8 gis'8 r8 
      | r1 
      | r8 fis''4 fis''8 a''8 fis''8 fis''8 d''8~ 
      | \tuplet 3/2 {d''8 b'8 e''8} f''8 fis''8 e''4. r8 
      | \tuplet 3/2 {r8 d''8 dis''8} d''8 cis''8 \tuplet 3/2 {ais'4 c''8~} c''8 dis''8~ 
      | \tuplet 3/2 {dis''8 cis''8 d''8~} d''16 ais'8 fis'16~ fis'8. a'16~ a'8 f'8~ 
      | \tuplet 3/2 {f'8 ais'8 a'8~} \tuplet 3/2 {a'8 fis'8 d'8~} \tuplet 3/2 {d'8 f'8 e'8} fis'8 a'8~ 
      | \tuplet 3/2 {a'8 b'8 cis''8~} \tuplet 3/2 {cis''8 e''8 f''8~} f''8 fis''4 f''8~ 
      | \tuplet 3/2 {f''8 e''8 dis''8~} dis''4 \tuplet 3/2 {cis''8 b'8 ais'8~} ais'8. a'16~ 
      | a'16 gis'8 g'16~ g'8 fis'8~ \tuplet 3/2 {fis'8 f'8 f'8} e'4~ 
      | e'4 dis'4. dis'16 cis'16 dis'4 
      | \tuplet 3/2 {b4 ais8~} ais8 gis4 ais4 c'8~ 
      | c'8 cis'4\bendAfter #-4  r8 r2 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r2. r8 c'8~ 
      | c'4 d'8 d'16 dis'16~ dis'4 f'4 
      | f'4. f'4. f'4 
      | \tuplet 3/2 {e'8 f'8 fis'8} f'8 d'8 f'8 g'8 a'8 gis'8 
      | g'8 fis'8 f'8 e'8 dis'8 g'8 e'8 f'8 
      | g'8 a'8 c''8 d''8 \tuplet 3/2 {dis''4 cis''8} \tuplet 3/2 {d''4 ais'8} 
      | fis'8 d'8 a'4\bendAfter #-4  f'8 a'8 gis'8 g'16 fis'16~ 
      | \tuplet 3/2 {fis'8 d'8 f'8} e'8 fis'8 g'8 a'8 cis''8 c''8 
      | ais'4 r2 f''8 d''8 
      | r2. dis''8. c''16 
      | r2 r8. e''16 g''4~ 
      | g''8 e''8~ e''2 d''4 
      | ais'8 r8 r2 fis''4~ 
      | fis''8 dis''4. r2 
      | fis'16 gis'4. fis'16 f'4 a''4~ 
      | a''8 gis''8 g''16 fis''8.~ fis''4 g''4 
      | \tuplet 3/2 {e''4 g''8} fis''4 dis''8 fis''8 f''4 
      | d''8 f''8 e''4. cis''4 dis''8~ 
      | dis''8 dis''8 dis''8. dis''16~ dis''8 dis''8 dis''8 cis''8 
      | dis''16 fis''16 e''16 d''16 \tuplet 3/2 {ais'8 gis'8 ais'8} c''16 cis''16 dis''16 cis''16~ cis''8 ais'8 
      | d'16 fis'16 a'16 d''16~ d''16 cis''16 ais'16 g'16 \tuplet 3/2 {a'8 cis'8 f'8} \tuplet 3/2 {c'8 ais4} 
      | \tuplet 3/2 {ais'8 e'8 f'8} fis'16 a'16 ais'16 dis''16 \tuplet 3/2 {c''8 ais'8 g'8} \tuplet 3/2 {gis'8 ais'8 c''8} 
      | \tuplet 6/4 {dis''16 g''16 ais''16 c'''8 dis'''16} \tuplet 3/2 {cis'''8 b''8 ais''8~} ais''16 cis''8 ais''16 \tuplet 3/2 {b''8 d''8 cis''8} 
      | d''8 b''8 f''8\bendAfter #-4  c''8\bendAfter #-4  r2 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r1 
      | r2 r8. cis'''16\glissando  \tuplet 3/2 {dis'''4\glissando  e'''8~} 
      | e'''4 g'''4 e'''8 r8 r4 
      | r4 r16 d'''16\glissando  e'''4 e'''4. 
      | g'''8 r8 r2. 
      | r8 b''8~ b''16 dis'''8 e'''16~ e'''2~ 
      | e'''4~ \tuplet 3/2 {e'''8 g'''8 fis'''8} g'''8 e'''8 \tuplet 3/2 {dis'''8 d'''8 cis'''8~} 
      | cis'''16 a''16 b''8 d'''8 dis'''16 f'''16 \tuplet 3/2 {g'''8 fis'''8 g'''8} fis'''4~ 
      | fis'''1~ 
      | fis'''8. f'''16 e'''8 c'''8 cis'''4\bendAfter #-4  r4 
      | r1 
      | r4 a''4 \tuplet 3/2 {a''4 fis''8} a''8 c'''8 
      | b''8 ais''8 a''8 fis''8 \tuplet 6/4 {d''8. dis''16 fis''16 a''16~} \tuplet 3/2 {a''8 g''8 fis''8~} 
      | fis''16 a''8 gis''16 fis''8 cis''8~ \tuplet 3/2 {cis''8 b'8 e''8~} e''8 f''8 
      | g''8 fis''8 f''8 e''8 dis''8 g''8 f''8 d''8 
      | \tuplet 3/2 {ais'4 g'8} dis''8 cis''8 a'8 fis'16 ais'16~ \tuplet 3/2 {ais'8 cis'8 fis'8~} 
      | fis'8 ais'8 gis'8 g'8 fis'4~ fis'16 f'8 f'16~ 
      | f'8 f'8 \tuplet 3/2 {f'4 f'8~} f'8 f'8 f'8 r8\bar  ".."
    }
    >>
>>    
}
