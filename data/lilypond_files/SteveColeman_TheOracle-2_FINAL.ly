\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Oracle (Solo 2)"
  composer = "Steve Coleman"
  tagline = ##f
}
global =
{

    \time 3/4
    \clef "treble_8"
    \key bes \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | bes2.:min | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | es2.:min | c2.:min | b2.:maj11+.9 
      | bes2.:min | es2.:min | b2.:maj11+.9 | es2.:min | b2.:maj11+.9 | g2.:min7 | fis2.:maj | b2.:maj 
      | bes2.:maj11+.9 | bes2.:min7 | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | s2. | s2. | s2. | es2.:min 
      | c2.:min | b2.:maj11+.9 | bes2.:min | es2.:min | b2.:maj11+.9 | es2.:min | b2.:maj11+.9 | g2.:min7 
      | fis2.:maj | b2.:maj11+.9 | bes2.:maj11+.9 | bes2.:min|
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

      \tempo 4 = 104
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r2. 
      | r4 r8. c''16 \tuplet 3/2 {des''8 a'8 c''8} 
      | bes'16 f'16 es'16 bes16 g'16 bes'16 a'8~ a'16 f'8 a'16 
      | g'16 es'8 g'16 f'16 des'16 bes16 f16 es'16 c'16 a16 c'16 
      | g8 a8 f8 g8 r4 
      | r2. 
      | r4 \tuplet 3/2 {r8 des''8 f''8} es''8 des''16 c''16~ 
      | c''4~ \tuplet 3/2 {c''8 aes'8 c''8} bes'16 f'16 aes'16 g'16 
      | es'16 g'16 f'16 des'16 \tuplet 6/4 {bes16 f16 e'8 a'16 ges'16~} ges'16 d'16 b8 
      | e'16 d'16 b16 es'16~ es'16 d'16 a16 d'16 des'16 es'16 b16 a16 
      | aes8 f16 bes16~^\markup{\left-align \small vib} bes8. aes16 des'8 es'8~ 
      | es'8. des'16 es'16 f'16 aes'16 bes'16 \tuplet 6/4 {des''8 d''16 es''16\glissando  e''16 f''16} 
      | es''8 d''8~ d''16 e''16 c''8 des''16 b'16 ges'16 e'16 
      | a'16 c''16 b'8~ b'16 a'16 bes'16 a'32 aes'32~ aes'16 bes'16\glissando  b'16 bes'16 
      | \tuplet 6/4 {aes'16 f'8 es'16 bes16 g'16~} g'16 bes'16 aes'16 f'16 es'16 bes16 g'8 
      | \tuplet 3/2 {ges'8 d'16 r8.} r8. ges'16 f'16 e'16 es'16 des'16~ 
      | des'16 des'16 c'8 \tuplet 6/4 {des'8 bes16 f16 c'16 bes16~} bes8 aes16 g16 
      | bes32 des'32 f'16 des'32 es'16 f'32~ f'16 bes'16 des''16 g'32 bes'32~ bes'16 des''16 d''16\bendAfter #+4  e''16 
      | \tuplet 5/4 {f''16 e''16 es''16 d''16 des''16} r2 
      | r8 c''8~ c''8. b'16 bes'16 a'16 aes'8~ 
      | \tuplet 6/4 {aes'8 g'8. ges'16} f'16 e'16 es'16 d'16 des'16 g'16 des'16 bes16 
      | es'8 b16 bes16 a16 e'16 bes16 a32 aes32~ aes16 g16 e'8~ 
      | \tuplet 6/4 {e'8 bes8 a16 g16} aes16 g16 e'16 bes16 g16 ges16 f16 e16~ 
      | e16 d'16 b8 f16 e16 es4 des'8 
      | bes16 f16 es16 des16 des8 r8 r4 
      | r8. aes16 f16 aes16 e8 e'16 bes16 f16 a16 
      | g8 b8~ b16 e'16 des'16 a16~ a16 d'16 b16 ges16~ 
      | \tuplet 6/4 {ges8 a16 g8 b16\bendAfter #+4 } d'16 f'16 f''8~ f''16 e'16 d'8~ 
      | \tuplet 3/2 {d'8 c'8 d'8} es'16 ges'16 bes'16 bes'16 b'16 es''16 c''16 b'16 
      | bes'16 g'16 e'16 c'16 a'16\bendAfter #+4  bes'16 b'8~ b'16 bes'16 a'16 ges'16 
      | es'8 ges'16 a'16 b'16 des''16 bes'16 f'16 \tuplet 6/4 {c''8 f'16 b'16 f'16 bes'16~} 
      | bes'16 aes'16 f'16 es'16~ \tuplet 6/4 {es'8 f'16 aes'16 bes'16 es''16~} es''8 c''8 
      | bes'8. f'16~ \tuplet 6/4 {f'4 des'16 aes'16~} aes'16 es'16 bes'8~^\markup{\left-align \small vib} 
      | bes'16 a'16 aes'16 ges'16 f'16 e'16 es'8 des'4 
      | r8 f'8 c'4~ c'16 es'16 des'16 aes16~ 
      | \tuplet 6/4 {aes4 c'16 aes16} g16 des'16 g'4 des''8~ 
      | \tuplet 7/8 {des''16 des'8 g'32~} g'16 c''16 bes'16 f'16\bendAfter #+4  \tuplet 6/4 {a'16 b'16 f'16 e'8 b'16} 
      \bar "||" bes'16 ges'16 r8 r8 ges16 c'16 ges'16 c''16 e''16 bes'16 
      | \tuplet 3/2 {f'8 a'16 r8.} r4 bes'8 g'16\glissando  a'16 
      | aes'16\bendAfter #+4  bes'8. \tuplet 3/2 {aes'8 ges'8 es'8} des'16 b16 bes8 
      | aes4~ aes16 f16 bes16 a16~ a16 f'16 es'8~ 
      | es'4 \tuplet 3/2 {f'8 d'8 es'8} f'16 ges'16 aes'16 bes'16 
      | b'16 des''8 c''16~ c''8 b'16 b'16 bes'16. a'32 aes'16 ges'32 f'32~ 
      | f'16 e'16 es'16 bes16 des'16 bes16 aes16 ges16 r4 
      | r8 a8 des'16 f'16 des'16 es'16 \tuplet 6/4 {f'16 a'8 b'16 des''16 es''16~} 
      | \tuplet 6/4 {es''16 e''8 f''16 e''16 d''16} b'8\bendAfter #+4  a'8~ \tuplet 3/2 {a'8 aes'8 f'8} 
      | d'16 bes16 e'16\glissando  d'16\glissando  \tuplet 9/8 {des'16\bendAfter #+4  es'16 bes16 a16 aes32~} aes8. b16 
      | \tuplet 3/2 {des'8 es'8 f'8} aes'16 bes'16 b'16 des''16 \tuplet 9/8 {bes'16 aes'16 f'16 es'16 g'32} 
      | e'8 bes'8^\markup{\left-align \small vib} r2 
      \bar "||" \mark \default r2. 
      | r4 d''16\glissando  e''16 f''4 g'8~ 
      | \tuplet 10/8 {g'8.. d''32\glissando  e''32 f''32~} f''8 a'8~ \tuplet 6/4 {a'16 c''16\bendAfter #+4  es''16 f''8.} 
      | g'4~ \tuplet 3/2 {g'8 es''8 f'8~} f'8 des''8~ 
      | des''4. g'8~ \tuplet 6/4 {g'16 des''8 es''16 f''16 des''16~} 
      | des''8 es''16 c''16~ c''8 es''8 des''8 bes'16 des''16 
      | \tuplet 3/2 {c''8 b'8 bes'8~} bes'16 a'16 bes'16 a'16 aes'16 f'16 des'16 bes16 
      | g'16 bes'16 aes'16 f'16 des'16 bes16 c'16 es'16~ es'16 es'16 a8 
      | r2 f'4~ 
      | f'16 des'16 c'16 des'16 es'16 g16 bes16 des'16 c'16 b16 bes16 a16~ 
      | a16 bes16 b16 des'16 es'16 f'16 a'16 es'16 a'16 es'16 bes'16\glissando  a'16 
      | aes'16 f'16 des'16 bes16 g'16 ges'16 f'16 e'32 es'32~ es'16 bes8 des'16 
      | \tuplet 7/8 {g16. c'16. bes32~} \tuplet 7/8 {bes16. aes16. g32~} g16 bes16 des'16 f'16 
      | des'16 es'16 f'8 des''16 f''16 es''16 c''16~ c''16 c''16 es''8 
      | r4 r8 c''16 des''16 g'16 c''16 bes'16 f'16 
      | a'16 g'16 es'16 c'16 g'8 ges'4 d'16 ges'16 
      | e'16 a'16 ges'8~ ges'16 es'16 ges'16 a'16 g'16 ges'16 f'16 e'16 
      | es'8. d'16 des'16 es'16 c'16 des'16 b16 c'16 a16 bes16 
      | b8. bes16 a16 bes16 aes8 r4 
      | r2. 
      | r4 \tuplet 9/8 {r8 des''16. f''32\bendAfter #+4  es''32~} es''16 bes'16 aes'16 des''16 
      | c''4~ c''16 aes'8 c''16 bes'16 aes'16 f'16 es'16 
      | aes'16 g'16 des'16 bes16 c'16 es'16 bes16 f16~ f16 aes16 g16 aes16 
      | \tuplet 3/2 {bes8 c'8 f'8} des'16 es'16 g'16 bes'16 des''16 bes'16 f'16 es'16 
      | bes'16 aes'16 f'16 es'16~ es'4 es''8. c''16 
      | \tuplet 3/2 {bes'8 f'16 r8.} r4 bes16 des'16 f'16 des'16 
      | es'16 g'16 bes'16 des''16 es''16 f''16 c''16 es''16 des''16 f'16 bes'16 des''16 
      | bes'16 c''16 bes'8~ bes'16 aes'16 es'16 f'16 aes'4~ 
      | aes'16 c''16 bes'16 aes'16~ aes'16 es'16 d'8 f'4 
      | \tuplet 6/4 {b'16 bes'16 a'16 aes'8 ges'16} f'16 es'16 d'16 b16 bes16 a16 aes16 bes16 
      \bar "||" \tuplet 6/4 {ges8. bes16 es'16\bendAfter #+4  ges'16} bes'16 ges'16 es'8 aes'16 ges'16 r8 
      | \tuplet 6/4 {r4 r16 e''16~} e''16\bendAfter #+4  ges''16 e''16 es''16~ es''16. des''16 c''16 g'32~ 
      | \tuplet 6/4 {g'16 e'4 a'16} bes'16 b'16 des''16 bes'16~ bes'16 aes'16 ges'16 es'16 
      | a'8 bes'16 a'16 aes'16 ges'16 f'16 e'16 es'16 des'16 c'16 bes16 
      | a16 bes16 aes8 r2 
      | r2 ges16 a16 b16 es'16 
      | ges'16 a'16 b'16 es''16\glissando  e''16\bendAfter #+4  f''16 es''16 des''16~ des''8. b'16 
      | bes'16 a'8.~ a'8 f'16 es'16 b16 a16 es'16 des'16 
      | g16 aes8 d'16 \tuplet 6/4 {b8 aes16 g16 a16 b16~} b16 e'16 f'16 aes'16 
      | b'16 des''16 r8 r4 \tuplet 7/8 {c''16 des''32 bes'16 ges'32 es'32~} 
      | es'16 f'16 bes'8 \tuplet 10/8 {aes'16. f'16 es'16. b32 des'32~} des'16 aes8 des'16 
      | b16 ges16 aes4 a8 c'8 bes16 es'16~ 
      \bar "||" \mark \default es'8 c'16 es'16 des'8. des'16 c'8. a16 
      | c'16 bes16 aes16 g16 r2 
      | r2. 
      | r2 \tuplet 6/4 {r4 g16 aes16} 
      | f16 aes16 g16 aes16 bes16 c'16 des'16 es'16 f'16 g'16 aes'16 bes'16 
      | c''8 c''16 bes'16~ bes'16 bes'16 aes'16 f'16 \tuplet 6/4 {es'8 des'16 es'8 f'16~^\markup{\left-align \small vib}} 
      | f'2~ \tuplet 3/2 {f'8 des'8 c'8} 
      | r4 r8. c'16 \tuplet 10/8 {des'16 es'16 c'16. des'16 bes32~} 
      | bes32 aes16 f16 aes16 g32~ g16 bes16 c'16 g'16 des'16 es'16 g'16 bes'16 
      | des''16 g'16 bes'16 c''16 \tuplet 3/2 {a'8 c''8 bes'8~} bes'16 f'16 es'16 bes16 
      | g'8 f'8 g'8 f'4 g'8 
      | f'8 g'8 f'8 r8 r4\bar  ".."
    }
    >>
>>    
}
