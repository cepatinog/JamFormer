\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Steeplechase"
  composer = "Charlie Parker"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key bes \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:6 es2:min7 | bes2:maj g2:7 | c4:min7 f4:7 bes2:maj 
      | bes2 g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:6 es2:min7 | bes2:maj g2:7 | c4:min7 f4:7 bes2:maj 
      | d1:7 | s1 | g1:7 | s1 | c1:7 | s1 | f1:7 | s1 
      | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj g2:7 | c2:min7 f2:7 | bes2:maj bes2:7 | es2:6 es2:min7 | bes2:maj g2:7 | c4:min7 f4:7 bes2:maj 
      | s2 g2:7|
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

      \tempo 4 = 175
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r8 c'8 bes16 a8 bes16 \tuplet 3/2 {c'4 bes8} a8 bes8 
      | \tuplet 3/2 {d'4 es'8~} es'16 d'8 bes16 \tuplet 3/2 {c'4 a8} \tuplet 3/2 {bes8 des'8 f'8} 
      | a'16 bes'8\glissando  f'16~^\markup{\left-align \small vib} f'4. r8 r4 
      | r4 a'16 g'16 fis'16 g'16 bes'16 g'16 es'16 d'16 \tuplet 3/2 {c'8 a8 c'8} 
      | es'16 ges'16 es'16 c'16 f'8 r8 r8 aes'16 g'16 \tuplet 6/4 {f'8 es'8 d'16 c'16} 
      | bes16 a16 aes16 c'16 g8 r8 r8 d''16 c''16 \tuplet 3/2 {bes'8 ges'8 es'8} 
      | c'16 d'8.~ \tuplet 6/4 {d'8. a8 bes16} \tuplet 6/4 {c'8. bes16 a16 bes16} \tuplet 3/2 {d'8 f'8 g'8} 
      | c''8 a'16 c''16 d''8\glissando  f''8 r2 
      \bar "||" r8 fis'8~ \tuplet 3/2 {fis'8 g'8 es''8} f''8 es''8~ \tuplet 3/2 {es''8 d''8 c''8~} 
      | \tuplet 6/4 {c''16 bes'8. c''16 bes'16} a'8 bes'8 c''8. bes'16 g'8 f'8~^\markup{\left-align \small vib} 
      | f'4. d'8 a'16 bes'16 a'16 f'16 d'8 a8~ 
      | a16 aes8 e'16~ e'16 es'8 g16~ g16 a8 d'16~ d'16 c'8 bes16~ 
      | \tuplet 5/4 {bes8 c'16 es'16 ges'16~} ges'16 f'8 es'16~ es'16 d'8 c'16~ c'16 bes8 aes16 
      | g4 r2. 
      | ges'4 c''8. bes'16~^\markup{\left-align \small vib} bes'4 \tuplet 3/2 {f'4 bes'8} 
      | c''8. bes'16~^\markup{\left-align \small vib} bes'4 r2 
      \bar "||" r4 r8. d'16~ d'16 fis'16 a'16 d''16~ \tuplet 6/4 {d''16 es''4 c''16~} 
      | c''4~ c''16 bes'8 c''16 bes'16 gis'8 fis'16~ \tuplet 6/4 {fis'16 es'4 c'16} 
      | a'8. d'16 e'8 f'4.^\markup{\left-align \small vib} r4 
      | r8. bes16 \tuplet 3/2 {b8 es'8 f'8} bes'8 gis'8 r4 
      | r4 r8. d'16~ d'16 fis'16 g'16 bes'16 es''16 f''16 es''16 e''16~ 
      | e''16 c''16 cis''16 d''16 \tuplet 6/4 {c''16 bes'16 a'8 g'16 f'16} e'16 g'16 bes'16 d''16 a'4~ 
      | a'8 c''8 b'16 bes'8.~ bes'8 a'8~ \tuplet 5/4 {a'16 g'16 a'16 g'16 f'16} 
      | es'8. g16 bes8. d'16 c'8 bes8 a16 c'16 es'16 ges'16 
      \bar "||" f'8 r8 \tuplet 6/4 {r4 r16 bes16} c'4..^\markup{\left-align \small vib} bes16 
      | d'4 c'16 es'8.~^\markup{\left-align \small vib} es'4. g'8 
      | \tuplet 3/2 {f'4 d'8~} \tuplet 5/4 {d'16 bes16 c'16 bes16 g16} c'2^\markup{\left-align \small vib} 
      | r1 
      | r8 f'8 aes'8 des''16 es''16~ es''16 g''8 ges''16 f''8 e''8 
      | es''4 c''8. cis''16~^\markup{\left-align \small vib} cis''4.. d''16~ 
      | d''16 es''8 d''16~ \tuplet 6/4 {d''8 bes'16 c''16 bes'16 f'16} a'8 bes'8 b'16 c''8 a'16 
      | bes'8 c''8 \tuplet 3/2 {bes'8 a'8 g'8} f'8 es'8 \tuplet 3/2 {d'4 c'8} 
      \bar "||" \mark \default d'8 c'8 g4.^\markup{\left-align \small vib} r8 r4\bar  ".."
    }
    >>
>>    
}
