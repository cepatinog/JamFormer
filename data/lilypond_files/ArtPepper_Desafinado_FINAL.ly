\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Desafinado"
  composer = "Art Pepper"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key f \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | c1:13-.9+11+ 
      | f1:maj | f1:maj | g1:13-.9+11+ | s1 | g1:min7 | c1:7 | a1:min5-7 | d1:9- 
      | g1:min7 | a1:9- | d1:7 | d1:9- | g1:9- | s1 | ges1:maj | s1 
      | f1:maj | s1 | g1:13-.9+11+ | s1 | g1:min7 | c1:7 | a1:min5-7 | d1:9- 
      | g1:min7 | bes1:min | a1:min7 | b2:min5-7 e2:9+ | a1:maj | bes1:dim7 | b1:min7 | e1:7 
      | a1:maj | fis1:min7 | b1:min7 | e1:7 | c1:maj | cis1:dim7 | d1:min7 | g1:7 
      | g1:min7 | a2:min5-7 d2:9- | g1:min7 | c1:13-.9+11+ | f1:maj | s1 | g1:13-.9+11+ | s1 
      | g1:min7 | c1:7 | a1:min5-7 | d1:9- | g1:min7 | a1:9- | d1:7 | d1:9- 
      | g1:9- | s1 | ges1:maj | s1 | g1:min7 | bes1:min | a1:min7 | b2:min5-7 e2:9+|
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

      \tempo 4 = 141
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default \tuplet 5/4 {r8. e'16 c'16} bes8 d'8~ d'16 c'16 bes16 des'16~ \tuplet 6/4 {des'16 es'16 des'8 c'16 bes16} 
      \bar "||" \mark \default a4 r4 c'8 a16 c'16 \tuplet 3/2 {e'8 g'16 r8.} 
      | r8. e'32 c'32~ \tuplet 3/2 {c'8 e'8 g'8} \tuplet 3/2 {e'8 f'8 a'8} \tuplet 3/2 {d''8 c''16 r8.} 
      | r2 g'4 \tuplet 6/4 {r8. a'8 b'16} 
      | es''4\glissando  b'4 \tuplet 3/2 {d''4 b'8} d''8 g'8 
      | r2 r8 bes'16 a'16 g'16 f'16 e'8 
      | \tuplet 6/4 {r4 r16 g'16~} g'16 f'16 e'16 d'16 c'16 c'8 d'16 g8 c'8 
      | r2 \tuplet 3/2 {a8 c'16 r8.} r4 
      | r4 es'16 d'16 c'16 bes16 gis16 a16 c'16 a16 \tuplet 3/2 {bes8 g8 a8} 
      | r4 r8 a'8 c''8 bes'8 r4 
      | r4 \tuplet 3/2 {a'4 g'8} bes'8 a'8 dis'8 e'8 
      | fis'4 \tuplet 3/2 {a'4 fis'8~} fis'4 d'16 e'16 cis'16 d'16 
      | e'16 ges'8 a'16 e'4^\markup{\left-align \small vib} r2 
      | r4 aes'8 g'8 f'8 r8 r8 d'16 c'16 
      | b8 f'16 g'16 aes'16 f'8 c'16 g'8. f'16 g'8 f'8 
      | r2. g'8 c''8~ 
      | c''2 bes'16 c''16 es''16 c''16~^\markup{\left-align \small vib} c''4~ 
      \bar "||" c''4. a'8~ \tuplet 3/2 {a'8 e'8 g'8} \tuplet 3/2 {f'4 c'8~} 
      | c'8 a8 c'8 e'8 \tuplet 3/2 {g'4 f'8} r4 
      | r2 d'4 c'16 d'16 e'16 cis'16 
      | d'16 e'16 f'16 g'16 a'4 \tuplet 6/4 {e''16 es''8 d''16 des''16 e''16} d''8 a'8 
      | r2 \tuplet 6/4 {r8. d''8\glissando  f''16~} f''8 d''8 
      | r4 g'16 bes'16 g'16 f'16 e'8 g'8 es''8 des''8 
      | r2 es''8 d''8 des''16 c''8 bes'16~ 
      | \tuplet 6/4 {bes'16 a'8. bes'16 a'16} g'8 a'16 g'16 ges'8 es'8 d'8 c'8 
      | bes4.^\markup{\left-align \small vib} c''8 bes'8 a'4 g'8 
      | bes'4^\markup{\left-align \small vib} r4 r8 a'8 \tuplet 3/2 {g'4 f'8} 
      | r4 g'16 aes'16 g'16 f'16 g'4.^\markup{\left-align \small vib} r8 
      | r2 e'4 e'4~^\markup{\left-align \small vib} 
      \bar "||" e'4. fis'8 r4 r8 e'8 
      | a'4. bes8 \tuplet 3/2 {cis'4 e'8} r4 
      | r4 r8 d'4 fis'8 a'8 b'8 
      | gis'4 e'16 f'16 e'16 d'16 e'2^\markup{\left-align \small vib} 
      | r4 r8 e'16 fis'16 gis'8 a'8 r4 
      | r4 b'8 a'8~ \tuplet 3/2 {a'8 cis'8 d'8~} d'8 e'8~ 
      | e'8 fis'8 e'4^\markup{\left-align \small vib} r2 
      | r4 e'16 gis'16 c''16 e''16 cis''4 e''4^\markup{\left-align \small vib} 
      \bar "||" r2 r8 c''16 dis''16 e''16 f''16 e''16 d''16 
      | c''4 g'8 a'8~ a'16 g'16 e'16 d'16 cis'8 a8 
      | r2 \tuplet 6/4 {e'8 cis'8 d'16 e'16} f'16 g'16 a'16 f'16 
      | d'4~ \tuplet 6/4 {d'16 g'16 aes'16 g'16 f'16 g'16} aes'16 g'16 f'16 bes'16~^\markup{\left-align \small vib} bes'4 
      | r4 r8 g'16 fis'16 \tuplet 6/4 {g'16 a'8 fis'16 g'16 a'16~} a'16 bes'16 c''16 d''16 
      | r1 
      | \tuplet 6/4 {r16 f''8. d''16 bes'16} g'4 \tuplet 6/4 {e''4 c''16 g'16} \tuplet 3/2 {f'8 d''8 bes'8} 
      | r4 c''16 b'16 bes'16 g'16 \tuplet 5/4 {f'8 dis'16 e'16 g'16} bes'16 es''16 des''16 bes'16 
      \bar "||" \mark \default c''8 r8 r8 c'16 d'16~ d'16 e'8 f'16 r4 
      | r4 r8 e'16 d'16 cis'8 d'4.~^\markup{\left-align \small vib} 
      | d'4 f'4 des'4^\markup{\left-align \small vib} r4 
      | r4 r8 e'8~ \tuplet 6/4 {e'8. d'8 f'16~^\markup{\left-align \small vib}} f'4~ 
      | f'2 d'8 e'8 f'8 g'8 
      | f'4.^\markup{\left-align \small vib} r8 r4 r8 e'8 
      | d''8 des''8 c''8 r8 r2 
      | r8 bes'8 a'16 b'16 c''8 \tuplet 6/4 {b'16 bes'16 a'8. g'16} ges'8 d'8 
      | r4 r8 g'8 bes'8 d''8 f''4~ 
      | f''4~ \tuplet 5/4 {f''8 des''16 c''16 bes'16} es''8 des''8 r4 
      | \tuplet 6/4 {r4 r16 c''16~} c''8 a'8 e'4^\markup{\left-align \small vib} r4 
      | r4 r8 b'8 \tuplet 6/4 {d''4 des''16 c''16} b'8 r8 
      | r2 g'8 r8 r4 
      | \tuplet 3/2 {r8 g'8 a'8} b'16 c''16 d''16 des''16 c''16 b'8 g'16 a'8 g'8 
      | r4 r8 bes'16 c''16 des''16 c''16 bes'8 r4 
      | \tuplet 3/2 {es''4 des''8} \tuplet 6/4 {dis''4 e''16 es''16} des''8 es''8 r4 
      | r4 r8 g'16 a'16 b'8 d''16 des''16 c''16 b'16 g'8 
      | r4 r8 c''16 e''16 bes'16 d''16 c''16 aes'16 e'16 c'16 bes8 
      | r4 c'16 a8 c'16 f'8 g'8 a'8 f'8 
      | c'4 c'4 dis'4.^\markup{\left-align \small vib} cis'16 dis'16 
      | c'4^\markup{\left-align \small vib} r2.\bar  ".."
    }
    >>
>>    
}
