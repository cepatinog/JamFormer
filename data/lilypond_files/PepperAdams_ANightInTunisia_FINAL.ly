\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "A Night in Tunisia"
  composer = "Pepper Adams"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "bass"
    \key d \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 | es1:7 
      | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 | a1:min5-7 
      | d1:9- | g1:min6 | g2:min7 c2:7 | g1:min5-7 | c1:9- | f1:6 | e2:min5-7 a2:7 | es1:7 
      | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 | es1:7 
      | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 | es1:7 
      | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 | a1:min5-7 
      | d1:9- | g1:min6 | g2:min7 c2:7 | g1:min5-7 | c1:9- | f1:6 | e2:min5-7 a2:7 | es1:7 
      | d1:min6 | es1:7 | d1:min6 | es1:7 | d1:min6 | e2:min5-7 a2:7 | d1:min6 | es1:7|
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

      \tempo 4 = 128
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default \tuplet 6/4 {r4 cis16 d16~} d16 e32 f16. g32 a32~ \tuplet 7/8 {a32 bes32 b32 c'32 cis'32 d'32 e'32} d'4 
      | r16 c32 des16 es16 f32~ \tuplet 6/4 {f16 g16 a8 c'16 f'16~} f'16 des'16 des'16 a16 f4~ 
      | f16 cis16 d16 e16 \tuplet 6/4 {f16 g16 a16 c'16 e'16\glissando  f'16} \tuplet 5/4 {gis16 a16 a'8 e16~} e16 g'16 f'8~ 
      | f'8 es'16 des'16~ \tuplet 6/4 {des'16 f8 g16 a16 bes16\glissando } c'8 bes16 a16~ \tuplet 6/4 {a16 g16 f16 es8 d16~} 
      | \tuplet 6/4 {d16 a,8 b,16 c16 d16} e16 cis16 d16 e16 \tuplet 6/4 {f16 g8 a16 b16 d'16} \tuplet 3/2 {e'8 d'8 a8} 
      | aes16 c'16 a16\glissando  bes16~ bes4 bes16 c'32 d'32 dis'16 f'32 dis'32 e'8 r8 
      | r4 \tuplet 3/2 {r8 e'8 d'8} \tuplet 5/4 {b16 a16 f16 e16 d16} \tuplet 3/2 {a,8 bes,8 c8} 
      \bar "||" \tuplet 6/4 {des16 es8 f16 bes,16 c16} des16. es32 f16 g32 a32~ a16 f16 g16 a16 \tuplet 6/4 {bes8 des'16 e'16 cis'16 d'16~} 
      | d'16 e'16 f'16 gis'16 a'4 \tuplet 6/4 {e'8 g'8 f'16 es'16} \tuplet 6/4 {c'16 bes16 f16 es8 des'16~} 
      | \tuplet 6/4 {des'4~ des'16 des'16~} \tuplet 6/4 {des'16 es'16 f'8 des'16 a16~} a16 b16 des'16 a16 f16 g16 a16 f16 
      | a,16 des16 e16 cis16 d16 e16 f16 g16 \tuplet 6/4 {a8 b16 b16 des'16 e'16~} e'32 d'16 a16 c'16 a32 
      | \tuplet 3/2 {bes8 f4} \tuplet 6/4 {a16 bes16 a16 g8 f16} es16 des16 c16 bes,16 a,4 
      | e16 cis16 d16 e16 \tuplet 5/4 {f16 g16 a8 b16} e'16 cis'16 d'16 a16 g16 f16 a16 c'16 
      | f8 r8 r8 a16 bes16 a16 g16 f16 dis16 bes,16 a,16 e16 cis16 
      | d16 e16 f16 g16 \tuplet 6/4 {a8 b16 e'16\bendAfter #+4  dis'16 e'16~} e'16 cis'16 d'16 a16 g16 f16 a16 c'16~ 
      \bar "||" c'8~ c'32 a32 bes32 b32 c'16 d'16 es'16 gis16 a16 d'16 c'16 g16 r4 
      | \tuplet 6/4 {g16 a16 bes16 b16 d'16 e'16} \tuplet 6/4 {c'16 b16 bes16 a16 g16 ges16} \tuplet 6/4 {gis16 a16\glissando  d16 es16 cis16\glissando  d16~} \tuplet 7/8 {d16. c32 d32 c32 aes,32} 
      | \tuplet 3/2 {bes,8 c8 d8} \tuplet 6/4 {e16 a16 fis16 g8 a16} bes16 c'16 e'16 d'16 bes16 g16 gis16 a16 
      | r4 r8 e'16 d'16 e'16 d'16 bes16 g16 a16 fis16 g16 a16 
      | bes16 c'16 des'16 g16~ g8 des'16 c'32 b32 bes16 a16 aes16 g32 f32 e16 des16 c16 b,16 
      | bes,16 des16 a,16 fis,16 g,16 a,16 bes,16 c16 des16 dis16 e16 g16 bes16 des'16 bes16 b16 
      | c'16 a16 g16 f16 e16 c16 d16 e16 g16 f16 e16 f16 g16 a16 c'16 a16 
      | bes16 g8.~ \tuplet 6/4 {g8. g16 a16 bes16~} \tuplet 6/4 {bes16 c'8 cis'16 e'16 cis'16~} \tuplet 6/4 {cis'16 a16 b16\glissando  c'8.~} 
      \bar "||" \tuplet 6/4 {c'4~ c'16 des'16} \tuplet 6/4 {c'16 a16 bes8 c'16 des'16~} des'16 es'16 f'16 des'16 c'16 a16 e16 e'16 
      | d'16 bes16 b4 e'16 d'16 e'16 d'16 b16 bes16 b16 a16 f'16 es'16 
      | f'16 es'16 c'16 bes16 \tuplet 6/4 {c'8 bes16 a16 g16 g16~} g8. a16 g16 f16 des16 e16~ 
      | e8 e16 cis16 d16 e16 f16 g16 a16 b16 e'16 d'16 a16 g16 bes16 c'16 
      | \tuplet 3/2 {bes8 es4~} es8 b,16 des16 \tuplet 3/2 {f8 a8 c'8} bes8 cis16 d16~ 
      | \tuplet 6/4 {d16 f16 a16 dis'8\glissando  e'16~} e'16 d'16 des'16 e'16 \tuplet 3/2 {b8 a16 r8.} r8.. aes32~ 
      | \tuplet 6/4 {aes16 bes16 c'16 d'16 e'16 es'16~} es'8 es'16 d'16~ d'32 c'16 b16 bes16 g32~ g16 f16 a16 f16 
      | des16 a,16 e16 cis16 d16 e16 f16 g32 a32~ a16 bes16 e'16 d'16 \tuplet 3/2 {e'8 d'8 f'8} 
      \bar "||" \mark \default \tuplet 5/4 {es'16 b16 f16 aes16 c'16} bes8. es'16 \tuplet 6/4 {des'16 f16 g16 a16 c'16 bes16~} \tuplet 6/4 {bes8 e'16 d'16 ges16 gis16} 
      | a16 c'16 b4 b16 a16 f16 e16 d16 b,16 r4 
      | \tuplet 6/4 {dis16 e16 c16 des8 es16} f16 g16 a16 b16 e'16 c'16 des'16 e'16 f'16 fis'16 g'8~ 
      | g'8 g'16 f'16 des'16 a16 dis'16 e'16~ e'16 cis'16 d'16 a16 g16 f16 c'16 a16 
      | r4 \tuplet 6/4 {r16 a8 c'16 des'16 es'16} des'16 b16 a16 g16 f4 
      | e16 cis16 d16 e16 \tuplet 6/4 {f16 g16 a8 bes16 e'16~} \tuplet 5/4 {e'16 d'8 a16 g16} f16 e'16 f'16 es'16 
      | a16\glissando  bes8.~ bes16 bes16 c'16 bes16~ bes16 g16 f16 dis16 bes,16 a,16 e16 cis16 
      | d16 e16 f16 g16 a8 dis'16 e'16 \tuplet 6/4 {d'8 a8 g16 f16~} f8. es'16 
      \bar "||" des'16 bes16 a16 c'16 bes16 f16 gis16 a16 \tuplet 3/2 {g8 f8 es8} \tuplet 6/4 {des8 a,16 e8 cis16} 
      | d16 e16 f16 g16 \tuplet 6/4 {a8 b16 des'8 e'16~} \tuplet 6/4 {e'16 f'16 f'16 e'16 bes8} r4 
      | \tuplet 6/4 {c'16 des'16 c'16 a16 bes16 c'16} des'16 es'16 f'16 des'16~ \tuplet 6/4 {des'16 des'8 a8 f16} r4 
      | \tuplet 6/4 {r8. a8 f16} des16 a,16 dis16\glissando  e16~ e16 cis16 d16 b,16~ b,8. a,16 
      | bes,16 c16 des16 es16 f16 c16 des16 e16 a16 g16 a16 des16 dis16 e16 f16 g16 
      | a16 fis16 g16 a16 bes16 gis16 a16 b16 \tuplet 6/4 {e'8 cis'16 d'16 e'16 f'16} \tuplet 3/2 {ges'8 gis'8\glissando  a'8~} 
      | a'4. es'16 bes16 \tuplet 5/4 {a16 dis8 bes,16 a,16} r4 
      | \tuplet 6/4 {r8. e16 cis16 d16~} \tuplet 6/4 {d16 e8 f16 g16 a16~} \tuplet 6/4 {a16 bes8 e'16 d'16 c'16~} c'16 bes16 a8~ 
      \bar "||" a8 a16 bes16 c'16 d'16 es'16 a16 bes16 es'16 d'16 des'16 \tuplet 6/4 {c'8 b16 bes16 a16 c'16} 
      | a16 g16 ges16 a16 es16 c16 d16 a,16 c16 a,16 bes,16 c16 d16 e16 a16 fis16 
      | g16 a16 bes16 c'16 d'16 e'16 fis'16 g'16 \tuplet 3/2 {e'8 d'16 r8.} r4 
      | d'16 e'16 fis'32 g'32 ges'32 e'32 \tuplet 6/4 {d'8 bes16 d'16 bes16 g16} \tuplet 6/4 {a8 fis16 g8 a16} bes16 c'16 d'16 bes16 
      | a16 g16 c'16 a16 \tuplet 3/2 {bes8 ges16 r8.} r8 a16 fis16 g16 a16 bes16 e16 
      | \tuplet 6/4 {g16 a16 bes16 a16 aes8} g16 f16 e16 des16~ des16 b,16 bes,16 aes,16 bes,16 c16 d16 e16 
      | g16 f16 e16 f16 \tuplet 5/4 {g16 a16 dis'16 e'16 c'16} \tuplet 5/4 {d'16 e'16\glissando  fis'16 g'16 f'16} e'16 d'16 dis'16\glissando  e'16~ 
      | e'8 e8 \tuplet 6/4 {g16 gis16 a16 bes8 a16} bes16 bes16 a16 dis16~ \tuplet 6/4 {dis4 c16 cis16~} 
      \bar "||" \tuplet 6/4 {cis16 f16 a16 b16 c'16 c'16~} c'16 c'16 bes16 g16~ g8 gis8\glissando  a8. f16 
      | des16 bes,16 e8~ \tuplet 5/4 {e16 cis16 d16 e16 f16} g16 a16 b16 e'16~ \tuplet 6/4 {e'16 d'16 f'8 es'16 f'16~} 
      | f'16 es'16 bes8 r8. f'16~ \tuplet 6/4 {f'16 es'16 f'8 es'16 bes16~} bes16 g'16 e'16 g'16~ 
      | g'16 e'16 c'16\glissando  des'16 \tuplet 3/2 {e'8 d'8 a8} g16 f16 e16 d16~ d8. c32 des32~ 
      | \tuplet 6/4 {des16 es8 f16 gis16 a16} bes16 c'16 es'16 des'16~ \tuplet 6/4 {des'16 f16 g16 a16 c'8} \tuplet 3/2 {bes8 e'8 d'8} 
      | \tuplet 6/4 {f16 g16 a16 des'16 b8} r4 des'16 b16 a16 f16 e16 d16 es16 f16 
      | \tuplet 6/4 {g16 a16 bes8 g16 gis16~} \tuplet 6/4 {gis16 a4 a16~} \tuplet 6/4 {a16 bes16 a8 f16 dis16~} \tuplet 6/4 {dis16 a,16 e8 cis16 d16~} 
      | d32 e16 f16. g32 a32~ \tuplet 5/4 {a16 bes16 e'16 d'16 e'16} \tuplet 6/4 {d'16 b16 a16 e'16 d'16 e'16} \tuplet 6/4 {d'16 b16 a16 e'16\glissando  f'8} 
      \bar "||" es'16 a16\glissando  bes8 r2.\bar  ".."
    }
    >>
>>    
}
