\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "You and the Night and the Music"
  composer = "Bob Berg"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key g \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | r1 | s1 
      | c1:min9 | d2:min5-7 g2:7 | g2:min5-7 c2:9- | f1:min6 | d1:min5-7 | g1:9- | c1:maj | d2:min5-7 g2:7 
      | c1:min9 | d2:min5-7 g2:7 | g2:min5-7 c2:9- | f1:min6 | d1:min5-7 | g1:9- | c1:maj | c1:7 
      | aes1:7 | a2:min5-7 d2:9- | g1:7 | s1 | aes1:7 | a2:min5-7 d2:9- | g2:7 aes2:7 | g2:7 des2:11+.9 
      | c1:min9 | d2:min5-7 g2:7 | g2:min5-7 c2:9- | f1:min6 | d2:min5-7 g2:9- | c2:min7 a2:min5-7 | aes2:7 g2:7 | c1:min9 
      | s1 | d2:min5-7 g2:7 | g2:min5-7 c2:9- | f1:min6 | d1:min5-7 | g1:9- | c1:maj | d2:min5-7 g2:7 
      | c1:min9 | d2:min5-7 g2:7 | g2:min5-7 c2:9- | f1:min6 | d1:min5-7 | g1:9- | c1:maj | c1:7 
      | aes1:7 | a2:min5-7 d2:9- | g1:7 | s1 | aes1:7 | a2:min5-7 d2:9- | g2:7 aes2:7 | g2:7 des2:11+.9 
      | c1:min9 | d2:min5-7 g2:7 | g2:min5-7 c2:9- | f1:min6 | d2:min5-7 g2:9- | c2:min7 a2:min5-7 | aes2:7 g2:7 | c1:min9 
      | s1|
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

      \tempo 4 = 167
      \set Score.currentBarNumber = #-1

      \bar "||" \mark \default r16 a8 c'16 bes16 f'16 aes'16 f'16 bes'16 bes'16 c''16 aes'16 f'16 e'16 es'16 g'16 
      | f'16 es'16 d'16 c'16 b16 f16 aes16 c'16 b16 c'16 f'16 aes'16 g'16 d'16 es'16 f'16 
      \bar "||" \mark \default g'4^\markup{\left-align \small vib} r2 \tuplet 3/2 {aes'8 g'4} 
      | aes'16 g'8 g'16 r2 aes'16 g'8 aes'16 
      | g'4 g'8 g'8 \tuplet 3/2 {g'4 c''8~} c''8 g'8~ 
      | \tuplet 6/4 {g'16 f'4 f'16} r2 f'16 g'8. 
      | e'16 f'8. f'4 r8 ges'16 e'16 f'16 g'16 aes'16 b'16 
      | \tuplet 6/4 {g'8 bes'8 aes'16 f'16~} f'16 g'16 ges'16 f'16 \tuplet 6/4 {e'16 es'16 des'8 bes16 aes16} \tuplet 3/2 {g8 a8 b8} 
      | \tuplet 6/4 {d'16 b16 c'8 e'16 g'16} \tuplet 3/2 {b'8 d''8 c''8} \tuplet 6/4 {g'16 a'16 f'8 e'16 d'16} g'16 ges'16 f'16 e'16 
      | es'16 des'16 bes16 aes16 g16 a16 b16 es'16 g'16 ges'16 f'16 e'16 es'16 cis'16 b16 gis16 
      \bar "||" c'8^\markup{\left-align \small vib} r8 r2 e'16 g'8.\glissando  
      | f'16 g'16 aes'16 f'16 a'16 a'16 gis'16 a'16 g'16 ges'16 f'16 e'16 es'16 cis'16 bes16 aes16 
      | g16 a16 b16 d'16 b16 c'16 e'16 g'16 es'16 e'16 g'16 bes'16 es''4~ 
      | es''8 c''8~ \tuplet 6/4 {c''8 aes'8 g'16 ges'16} \tuplet 6/4 {bes'8 aes'8 e'16 des'16} g'16 ges'16 f'16 e'16 
      | es'16 c'16 aes16 f16 bes16 f16 bes,16 f16 d16 bes,16 aes,4^\markup{\left-align \small vib} r8 
      | r1 
      | r16 g16 a16 d'16 b16 c'16 e'16 g'16\glissando  c''16 d''16 c''16 g'16 a'16 f'16 e'16 d'16 
      | g'16 ges'16 f'16 e'16~ \tuplet 6/4 {e'16 es'16 des'8 b16 aes16~} \tuplet 5/4 {aes16 g16 aes16 b16 a16} b16 c'16 e'16 g'16 
      \bar "||" c''8 c''8 r4 \tuplet 5/4 {r8 bes'16 c''16 bes'16~} \tuplet 6/4 {bes'16 bes'16\glissando  c''16 es''8.~} 
      | es''2. d''8 a'8\glissando  
      | c''8 bes'8 \tuplet 3/2 {f'8 d'8 c'8} bes4^\markup{\left-align \small vib} r4 
      | r8 f16 bes16 bes16 f16 a16 bes16 bes8 a16 b16 a'16 bes'16 c''16 gis'16 
      | ges'16 e'16 es'16 g'16 f'16 des'16 bes16 aes16 f'16 des'16 bes16 g16 aes16 des'16 b16 a16 
      | g16 a16 b16 des'16 aes'16 ges'16 f'16 e'16 \tuplet 6/4 {es'8 f'16 aes'16 c''16 es''16} g''4~ 
      | g''4 f''8 cis''8\glissando  b'4 g'8 f'8~ 
      | f'8 cis'8 b8. g16~^\markup{\left-align \small vib} g8 r8 r4 
      \bar "||" r8 aes'16 aes'16 \tuplet 6/4 {g'8. aes'8 aes'16} g'8 aes'16 aes'16 g'8 aes'16 g'16 
      | g'8 aes'16 g'16 g'8 aes'16 g'16 g'8 aes'16 g'16~ g'16 gis'16 bes'16 bes'16~ 
      | bes'16 aes'16 bes'16 bes'16 \tuplet 3/2 {aes'8 bes'8 bes'8} gis'16 a'16 bes'16 bes'16 \tuplet 3/2 {aes'8 bes'8 bes'8} 
      | aes'16 bes'16 c''16 c''16 aes'16 bes'16 c''16 c''16 aes'16 bes'16 c''16 bes'16~ bes'16 bes'16 aes'16\glissando  g'16 
      | r2 \tuplet 6/4 {r8 a,16 es8 aes16} es16 f16 aes16 d'16 
      | b16 d'16 f'16 aes'16 \tuplet 6/4 {g'8 gis'16 a'16 es'16 c'16} f'16 e'16 es'16 g'16 f'16 es'16 d'16 c'16 
      | bes16 f16 aes16 des'16~ \tuplet 6/4 {des'16 b16 des'8 f'16 aes'16~} \tuplet 5/4 {aes'16 gis'16 c''16 gis'16 b'16} cis''16 cis''16 b'16 cis''16 
      | bes'16 ges'16 des'16 b16 f'16 e'16 es'16 g'16 f'16 es'16 d'16 c'16~ \tuplet 6/4 {c'16 b16 c'16 es'16 g'16 b'16} 
      \bar "||" \mark \default es''16 g''16 r8 r4 r8. f''16 g''8\glissando  g''8 
      | g''4 r4 r8 f''16 g''16~ g''8 g''8 
      | g''8 e''16 c''16~^\markup{\left-align \small vib} c''4. f''16\glissando  g''16~ g''8 g''8 
      | g''8 es''8 c''8 aes'16 g'16~ \tuplet 3/2 {g'8 f'8 e'8} a'16 a'16 aes'16 g'16 
      | fis'16 g'16 aes'16 fis'16 g'16 ges'16 f'16 e'16 es'16 f'16 g'16 e'16 \tuplet 6/4 {f'16 e'8 es'16 f'16 g'16} 
      | f'16 es'16 d'16 c'16 b16 ges16 aes16 f'16 b16 c'16 ges'16 aes'16 \tuplet 5/4 {g'16 a'16 f'16 fis'16 g'16} 
      | f'16 d'16 b16 g16 a8^\markup{\left-align \small vib} r8 r2 
      | \tuplet 6/4 {r8 g16 aes8 d'16~} \tuplet 5/4 {d'16 b16 d'16 f'16 aes'16} \tuplet 3/2 {g'8 gis'8 a'8} f'8 g'8 
      \bar "||" r4 fis'16\glissando  g'8.~ \tuplet 5/4 {g'16 es'16 f'16 g'16 g'16} es'16 f'16 g'16 g'16 
      | f'16 g'16 aes'16 g'16 c''16 g'16 aes'16 g'16 \tuplet 6/4 {f'8 g'8 aes'16 g'16} f'8 r8 
      | r4 r16 f16 aes16 bes16 b8 f'16 aes'16 e'16 f'16 g'16 e'16 
      | f'16 g'16 aes'16 bes'16 \tuplet 5/4 {c''8 aes'16 g'16 bes'16} aes'16 f'16 g'16 ges'16 f'16 e'16 es'16 d'16 
      | c'16 d'16 es'16 f'16 d'16 c'16 aes16 f16 bes16 f16 bes,16 f16 d16 bes,16 a,16 aes,16~^\markup{\left-align \small vib} 
      | aes,8 r8 r4 \tuplet 6/4 {r16 g'16 a'8 b'16 g'16} a'16 f'16 e'16 d'16 
      | g'16 ges'16 f'16 e'16 es'16 cis'16 bes16 g16~ g16 a16 b16 d'16 b16 c'16 e'16 g'16 
      | c''1~^\markup{\left-align \small vib} 
      \bar "||" c''1~ 
      | c''4. r8 \tuplet 6/4 {r4 a'16\glissando  c''16~^\markup{\left-align \small vib}} c''4~ 
      | c''2~ c''4~ c''16 a,16 f16 a16 
      | a16 f16 bes16 b16 a'16 f'16 a'16 f'16 a'16 bes'16 c''16 a'16~ \tuplet 6/4 {a'16 bes'16 c''8 a'16 c''16} 
      | d''8 r8 r4 \tuplet 3/2 {r8 d''8 des''8} f''4~ 
      | f''2 \tuplet 3/2 {es''8 e''4} \tuplet 3/2 {b'8 g'8 e'8} 
      | \tuplet 6/4 {bes'4 a'16 bes'16~} bes'16 g'16 g'16 g'16 \tuplet 6/4 {aes'16 ges'16 f'16 e'8 es'16} f'16 g'8 f'16 
      | \tuplet 3/2 {e'8 es'8 g'8} fis'16 e'16 es'16 c'16 b8 b16 es'16 g'16 es'16 b16 g16 
      \bar "||" c'16 es'16 g'16 c''16 es''4^\markup{\left-align \small vib} r4 r8 f''8~ 
      | f''8 es''8 d''8 c''8 bes'8. aes'16 \tuplet 3/2 {g'4 f'8} 
      | e'16 f'16 g'16 e'16 bes16 c'16 e'16 g'16 b'16 es''8.~ es''8 des''8 
      | b'16 c''16 aes'16 f'16~^\markup{\left-align \small vib} f'4 r4 \tuplet 3/2 {r8 g'8 e'8} 
      | \tuplet 3/2 {f'4 g'8} e'16 f'16 f'16 g'16~ \tuplet 3/2 {g'8 e'8 f'8~} \tuplet 3/2 {f'8 g'8 aes'8} 
      | g'4 g'8\glissando  a'8~ a'16 a'16\glissando  b'8 c''8 d''8 
      | es''4^\markup{\left-align \small vib} r4 r8 g'8 es''8\glissando  b'8 
      | d''8 c''8 \tuplet 3/2 {g'8 es'8 c'8~} \tuplet 6/4 {c'16 bes'8 aes'16 e'16 b16} \tuplet 3/2 {bes8 aes4} 
      \bar "||" e16 g8.^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
