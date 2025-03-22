\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Con Alma"
  composer = "Joe Lovano"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key c \major

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
      | e2:maj gis2:7/dis | cis2:min7 b2:7 | bes2:9- e2:13-.9+11+ | es2:maj es4:min7 aes4:7 | des2:maj f2:7/c | bes2:min7 aes2:7 | g2:7 des2:13-.9+11+ | c2:maj fis4:min7 b4:7 
      | e2:maj gis2:7/dis | cis2:min7 b2:7 | bes2:7 e2:13-.9+11+ | es2:maj es4:min7 aes4:7 | des2:maj f2:7/c | bes2:min7 aes2:7 | g2:7 des2:13-.9+11+ | c1:maj 
      | c1:min5-7 | f1:9- | fis1:min5-7 | b1:9- | e1:maj | s1 | f1:min7 | bes1:7 
      | e2:maj gis2:7/dis | cis2:min7 b2:7 | bes2:9- e2:13-.9+11+ | es2:maj es4:min7 aes4:7 | des2:maj f2:7/c | bes2:min7 aes2:7 | g2:7 des2:13-.9+11+ | c2:maj fis4:min7 b4:7 
      | e2:maj gis2:7/dis|
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

      \tempo 4 = 125
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r4 g16 e16 f16 g16~ \tuplet 6/4 {g16 aes16 ais8 b16 c'16~} \tuplet 5/4 {c'16 cis'16 d'16 e'16 f'16} 
      \bar "||" \mark \default g'16 gis'16 ais'16 c''16 ais'4~ ais'16 aes'16 g'16 f'16 \tuplet 6/4 {e'8 f'16 g'8 e'16} 
      | ges'4~^\markup{\left-align \small vib} ges'16 f'16 e'16 d'16 \tuplet 6/4 {dis'8 fis'16 dis'8 b16} \tuplet 3/2 {gis8 fis8 cis'8~} 
      | cis'8 aes16 ges16 \tuplet 3/2 {es8 aes8 ges8} r4 r8 g'16 f'16 
      | bes'16 g'16 d'16 g'16 f'8.^\markup{\left-align \small vib} c'16 \tuplet 6/4 {bes8 es'8 des'16 bes16} c'4~^\markup{\left-align \small vib} 
      | c'16 bes16 aes16 f16 \tuplet 6/4 {es16 aes16 f8 es16 c16~} \tuplet 3/2 {c8 es8 c8} r4 
      | r4 r16. f16. a32 c'32~ \tuplet 3/2 {c'8 c'8 bes8} \tuplet 3/2 {c'8 des'8 des'8} 
      | \tuplet 3/2 {dis'8 dis'8 f'8} \tuplet 3/2 {f'8 aes'8 g'8~} g'16 g'16 e'16 b16~ b16 g16 d'8~ 
      | d'8 c'8 b16 a16 g16 f16 e4 r8 fis'16 b'16~ 
      \bar "||" \tuplet 5/4 {b'16 gis'16 fis'16 e'16 gis'16} fis'8 dis'16 fis'16~ \tuplet 3/2 {fis'8 dis'8 e'8~} e'16 fis'8 dis'16 
      | dis'8 e'8 cis'16 cis'8 b16 \tuplet 3/2 {gis8 gis8 fis8} dis4~ 
      | \tuplet 5/4 {dis16 d''16 c''16 bes'16 aes'16~} aes'32 g'16 ges'16. f'32 e'32 \tuplet 3/2 {es'8 d'8 c'8} b16 ais16 g16 fis16 
      | es16 f16 e16 es16~ es32 f32 ges32 aes32 bes32 d'32 f'16 e'16 es'16 f'8 aes'16 bes'16 ges'16 f'16 
      | e'16 aes'8. \tuplet 5/4 {f'8 des'16 bes16 a16} \tuplet 3/2 {es'8 des'8 bes8} \tuplet 3/2 {gis8 a8 c'8} 
      | \tuplet 5/4 {a16 bes16 c'16 des'16 es'16} c''16 aes'16 f'16 d'16 bes'8 bes'8 r4 
      | r16 d''16 c''16 b'16 aes'16 g'16 ges'16 f'16 \tuplet 5/4 {e'16 d'16 c'16 b16 aes16~} \tuplet 6/4 {aes16 g16 fis16 e16 f16 g16} 
      | \tuplet 6/4 {b16 d'8. c'16 e'16~} \tuplet 6/4 {e'16 d'16 c'16 b16 c'16 f'16} \tuplet 6/4 {a'8 g'16 f'16 e'16 g'16} \tuplet 3/2 {d''8 c''8 g'8} 
      \bar "||" r2 \tuplet 3/2 {r8 dis'8 c'8~} \tuplet 6/4 {c'16 dis'8 c'8 f'16} 
      | ges'8\glissando  c'16 es'16~^\markup{\left-align \small vib} es'4 r4 \tuplet 5/4 {d''16\glissando  es''16 d''16 des''16 b'16~} 
      | b'16 b'8 a'16~ a'16 gis'16 a'16 gis'16 dis'16 gis'16\glissando  a'8 b'4 
      | fis''4.^\markup{\left-align \small vib} e''8 \tuplet 3/2 {dis''8 cis''8 b'8~} b'16 b'16 gis'16 fis'16~ 
      | fis'16 fis'8 fis'16~ \tuplet 3/2 {fis'8 cis''8 ais'8~} ais'8 cis''16 b'16~^\markup{\left-align \small vib} b'4 
      | \tuplet 5/4 {gis'16 fis'16 dis'16 gis'16 fis'16} dis'16 e'16 fis'16 dis'16~^\markup{\left-align \small vib} dis'8 cis'16 b16 gis16 fis16 e16 fis16 
      | e4 r8 f'16 g'32 aes'32 c''16 b'16 a'16 bes'16 g'16 aes'16 c'16 es'16 
      | g'16 ges'16 e'16 f'16 es'16 d'16 es'8 \tuplet 3/2 {bes'8 d''4~} d''16 c''16 bes'16 aes'16 
      \bar "||" g'16 fis'16 b'16 ges'16 f'16 e'16 d'16 dis'16 \tuplet 6/4 {fis'8 cis'8 b16 gis16} \tuplet 5/4 {dis'8 cis'16 gis16 fis16} 
      | \tuplet 6/4 {dis8 gis16 fis8 dis16~} \tuplet 5/4 {dis16 e16 fis16 dis16 gis16} dis'8 cis'16 dis'16 e'16 fis'16 g'16 gis'16~ 
      | \tuplet 6/4 {gis'16 a'16 ais'8 b'16 des''16} \tuplet 3/2 {bes'8 g'8 aes'8} g'4~ \tuplet 6/4 {g'16 ges'8\glissando  f'16 e'16 d'16} 
      | es'16. es'16 d'16 c'32~ c'16 bes16 g16 f16 \tuplet 7/8 {e32 es16. ges32 a32 des'32~} des'16 f'16 es'16 f'16 
      | \tuplet 3/2 {ges'8 aes'4~^\markup{\left-align \small vib}} \tuplet 6/4 {aes'8 f'8 des'16 bes16~} \tuplet 3/2 {bes8 es'8 a8} f'4~^\markup{\left-align \small vib} 
      | f'16 es'8 des'16~ des'8 bes4.^\markup{\left-align \small vib} r4 
      | r8 f'8 c'16 f'8 g'16~ \tuplet 3/2 {g'8\glissando  aes'8 g'8~} g'16 f'8 e'16~^\markup{\left-align \small vib} 
      | \tuplet 6/4 {e'4 g'16 b'16} d''16 b'16 d''16 b'16~^\markup{\left-align \small vib} b'8 g'16 b'16 g'16 e'8.^\markup{\left-align \small vib} 
      \bar "||" \mark \default e'16 fis'16 e'16 dis'16~ dis'16 fis'16 dis'16 b16 r2\bar  ".."
    }
    >>
>>    
}
