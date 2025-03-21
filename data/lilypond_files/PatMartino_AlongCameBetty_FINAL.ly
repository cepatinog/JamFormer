\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Along Came Betty"
  composer = "Pat Martino"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key aes \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | bes1:min7 | b2:min7 e2:7 | bes1:min7 | b2:min7 e2:7 | a1:maj | aes1:7 | g1:maj | ges1:7 
      | ges1:min7 | g2:min7 c2:7 | ges1:min7 | g2:min7 c2:7 | f1:maj | a1:7 | d1:min7 | g1:7 
      | c1:min7 | f1:7 | a2:min5-7 d2:7 | g1:min7 | e1:min5-7 | a1:7 | f1:min7 | bes1:7 
      | bes1:min7 | b2:min7 e2:7 | bes1:min7 | b2:min7 e2:7 | c1:min5-7 | f1:7 | bes1:min5-7 | es1:7 
      | aes1:maj | b2:min7 e2:7 | bes1:min7 | b2:min7 e2:7 | bes1:min7 | b2:min7 e2:7 | a1:maj | aes1:7 
      | g1:maj | ges1:7 | ges1:min7 | g2:min7 c2:7 | ges1:min7 | g2:min7 c2:7 | f1:maj | a1:7 
      | d1:min7 | g1:7 | c1:min7 | f1:7 | a2:min5-7 d2:7 | g1:min7 | e1:min5-7 | a1:7 
      | f1:min7 | bes1:7 | bes1:min7 | b2:min7 e2:7 | bes1:min7 | b2:min7 e2:7 | c1:min5-7 | f1:7 
      | bes1:min5-7 | es1:7 | aes1:maj | b2:min7 e2:7|
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

      \tempo 4 = 133
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default \tuplet 6/4 {r4 r16 c'16} es'4 c'16 es'16 c'8 aes8 f8 
      | r4 r8. des'16~ des'16 e'8 des'16 a8 fis8 
      | c'16 es'16 c'8 r2 r8 c'8 
      | r4 fis16 a16 des'16 c'16 b16 des'16 d'16 e'16 f'16 g'16 e'16 d'16 
      | c'16 des'8 fis'16~ fis'16 a'16 aes'16 fis'16 e'16 des'16 b16 a16 \tuplet 3/2 {aes8 fis8 e8~} 
      | e8 b'16 a'16 aes'16 ges'8 des'16 es'16 des'16 bes16 b16 c'16 es'16 fis'16 g'16 
      | fis'16 e'16 d'16 b16 a16 g16 fis16 e16 \tuplet 3/2 {b8 b4} r4 
      | r8 a'16 g'16 fis'16 e'16 d'16 b16 des'16 b16 aes16 a16 e16 f16 a16 d'16 
      \bar "||" des'16 b16 a16 f16 aes16 f16 fis16 aes16 a16 b16 des'16 e'16 g'16 aes'16 fis'16 e'16 
      | aes'16 a'16 g'16 f'16 e'16 d'16 c'16 a16 bes16 d'8. d'16 e'16 des'16 b16 
      | a16 des'16 e'16 aes'16 b'16 bes'16 a'16 des'16 r2 
      | r4 r8 c''16 b'16 bes'16 a'16 g'16 f'16 e'16 d'16 c'16 bes16 
      | a16 a16 c'16 d'16 e'16 e'8 d'16 e'16 e'16 d'16 e'16 r4 
      | \tuplet 3/2 {r8 g'8 f'8} e'8. d'16 \tuplet 3/2 {des'4 bes'8} a'8. g'16 
      | f'8 a16 d'16 e'16 g'16 e'16 es'16 d'16 c'16 a16 bes16 b16 d'16 f'16 a'16 
      | g'16 e'8 g16 a16 f8 d16 e16 f16 d16 e16 d16 f16 a16 c'16 
      \bar "||" bes16 b16 d'16 aes'16 g'16 es'16 d'8 f'16 e'16 es'16 f'16 d'16 c'16 bes16 g16 
      | a16 c'16 f16 e16 es4 r4 r8 d''16 des''16 
      | c''16 bes'16 a'16 g'16 ges'16 es'16 d'16 c'16 a16 g8 f16 a16 c'16 d'16 es'16 
      | \tuplet 6/4 {d'16 c'8 b16 a16 bes16~} \tuplet 7/8 {bes32 d'16 e'16 ges'32 a'32~} a'16 fis'16 g'16 a'16 bes'16 c''16 d''16 des''16 
      | c''16 a'16 e'16 c'16 d'16 bes16 a16 aes16~ aes16 a16 bes16 c'16 des'16 d'16 f'16 d'16 
      | e'16 d'16 c'16 b16 bes16. a16. fis32 g32~ g16 a16 bes16 c'16 d'16 f'16 e'8 
      | r4 a'16 bes'8 a'16 aes'16 g'16 f'16 es'16 d'16 c'16 bes16 aes16 
      | g16 d16 f16 d16 f16 g16 aes16 bes16 b16 des'16 d'16 e'16 f'16 g'16 aes'16 bes'16 
      \bar "||" c''16 c''16 bes'16 aes'16 g'16 f'16 es'16 c'16 des'16 f'16 c'16 b16 bes16 g16 f16 c16 
      | b,8. des'16 r4 r8.. e32~ e16 a16 des'16 b16 
      | c'8. aes16~ \tuplet 3/2 {aes8 f8 des8~} des16 des16 f16 aes16 c'16 c'16 bes8~ 
      | \tuplet 6/4 {bes4 a16 des'16~} des'16 c'16 b16 a16~ a16 aes16 c'16 d'16 fis'16 aes'16 f'16 es'16 
      | des'16 d'16 f'16 b'16 bes'16 aes'16 g'16 f'16 fis'16 bes16 des'16 es'16 f'16 aes'16 f'16 e'16 
      | es'16 des'16 bes16 b16 c'16 es'16 ges'16 aes'16 b'16 a'16 aes'16 ges'16 e'16 c'16 b16 a16 
      | g16 aes8.~ aes4 des'16 es'16 e'16 fis'16 aes'16 b'16 bes'16 fis'16 
      | aes'16 e'16 es'16 des'16 ges'16 f'16 e'16 es'16 des'16 b16 bes16 aes16 fis16 g16 b16 e'16 
      | es'16 c'8 aes16 \tuplet 6/4 {g4 es'16 g'16~} g'16 aes'16 g'16 f'16 es'16 c'16 bes16 aes16 
      | des16 d16 fis16 a16 des'16 d'16 b16 des'16~ \tuplet 6/4 {des'16 e'8 f'16 fis'16 a'16} fis'8 r8 
      \bar "||" \mark \default r8. c''16 r4 r8 es''8 c''8 aes'8 
      | e''4 des''16 b'16 aes'16 fis'16 e'16 es'16 d'16 b16 des'16 bes16 b16 des'16 
      | bes16 ges'16 f'16 es'16 des'16 a16 c'16 a16 bes16 c'8 es'16 f'16 aes'16 c''16 des''16 
      | b'16 a'16 aes'16 fis'16 e'16 des'16 d'16 fis'16 des'16 c'16 b16 a16~ a8 c'16 fis'16 
      | e'16 e'8 des'16 b16 b8 a16 b16 b16 a16 b16~ b16 b8 fis'16 
      | e'16 des'8. c'16 c'8 a16 b16 b16 a16 b16~ \tuplet 3/2 {b8 b8 aes8} 
      | g8 r8 r4 \tuplet 6/4 {r8 a'8 g'16 fis'16~} fis'16 e'16 d'16 b16 
      | \tuplet 6/4 {a16 bes8 des'16 e'16 g'16~} \tuplet 6/4 {g'16 a'16 fis'8 e'16 des'16~} des'16 b16 aes16 a16 bes16 g16 fis16 e16 
      \bar "||" des8 es16 f16 aes16 f16 fis16 aes16 a16 b16 des'16 b16 e'16 des'16 es'16 des'16 
      | \tuplet 6/4 {g4 d'16 f'16} e'16 d'16 c'16 b16 bes16 ges16 a16 fis16 g16 e16 f16 d'16 
      | des'16 b16 a16 e16 aes16 f16 fis16 aes16 a16 b16 des'16 e'16 g'16 aes'16 fis'16 e'16 
      | aes'16 a'16 g'16 f'16 e'16 d'16 c'16 a16 bes16 d'8. es'16 e'16 g'16 d''16 
      | c''16 a'16 g'16 f'16 e'16 f'16 a'16 c''16 e''16 es''16 d''16 des''16 c''16 a'16 g'16 ges'32 e'32 
      | des'16 es'16 e'16 d'16~ d'16 des'16 e'16 g'16 bes'16 bes'16 a'16 g'16 e'16 d'16 des'16 bes16 
      | a8\glissando  b16 des'16 e'16 des'16 d'16 e'16 f'16 g'16 aes'16 a'16 c''8 b'16 a'16 
      | g'16 ges'16 f'4 e'16 es'16 d'16 c'16 a16 bes16 b16 g16 a16 f16 
      \bar "||" es8. des'32 d'32~ d'8 r8 r4 r8 g16 bes16 
      | d'16 es'16 c'16 d'16 r4 r8 g16 bes16 d'16 es'16 d'16 des'16 
      | c'16 bes16 a16 g16 ges16 es8. \tuplet 3/2 {des8 d8 fis8} a16 fis16 g16 a16 
      | bes16 c'16 des'16 d'16 f'16 d'16 e'16 d'16 c'16 b16 bes16 g16 \tuplet 3/2 {a8 d4} 
      | a16 fis16 g16 a16 bes16 fis16 g16 a16 bes16 c'16 d'16 e'16 f'16 a8 c'16 
      | d'16 e'16 f'16 g'16 a'16 a'16 g'16 f'16 e'16 es'16 d'16 des'16 \tuplet 6/4 {c'16 des'16 bes16 a8.~} 
      | a16 e16 f16 g16 aes16 bes16 c'16 es'16 c'16 des'16 d'16 f'16 aes'16 c''16 b'16 g'16 
      | bes'16 g'16 d'16 bes16 c'16 c'16 r8 r4 r8 es''16 d''16 
      \bar "||" des''16 f'16 g'16 bes'16 c''16 es''16 c''16 b'16 bes'16 aes'16 g'16 f'16 es'16 c'16 des'16 ges'16~ 
      | ges'4\glissando  des'16 bes16 b16 des'16 d'16 e'16 fis'16 a'16 c''16 des''16 b'16 a'16 
      | b'16 c''8 c''16 aes'8 aes'16 f'16~ f'16 f'16 des'8 des'16 c''8 c''16 
      | des''8 des''16 a'16~ a'16 a'16 fis'8 fis'16 d'8 d'16 des'8 des'16 b16~ 
      | b4 c''16 des''16 c''16 b'16 bes'16 ges'16 f'16 e'16 es'16 des'16 bes16 b16 
      | c'16 es'16 ges'16 aes'16 b'16 a'16 b'16 a'16 aes'16 ges'16 e'16 des'16 es'16 c'16 a16 g16 
      | aes4 des'16 es'16 e'16 fis'32 aes'32~ \tuplet 6/4 {aes'16 b'16 bes'8 fis'16 aes'16~} aes'16 e'16 es'16 d'16 
      | des'16 es'16 e'16 ges'16 es'16 des'8. ges'8. e'16 es'16 des'16 b16 g16 
      | bes16 g16 a16 bes16 c'16 es'16 g'16 f'16 es'16 c'16 bes16 aes16 g16 f16 es16 des16 
      | \tuplet 6/4 {d16 fis8 a16 des'16 b16~} b16 des'16 d'16 e'16 des'16 a16 fis8~ fis16 d16 des16 b,16\bar  ".."
    }
    >>
>>    
}
