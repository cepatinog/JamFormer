\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Oracle"
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
      | bes2.:min 
      | s2.|
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

      \tempo 4 = 98
      \set Score.currentBarNumber = #0

      | r4 r8. es''16 ges''16 c''8 f''16 
      \bar "||" \mark \default \tuplet 10/8 {des''8~ des''32 aes'16. c''32 bes'32~} bes'8 g'16 es'16 \tuplet 3/2 {a'8 b'4~} 
      | \tuplet 3/2 {b'8 ges'8 b'8} bes'16 g'16 es'16 c'16 f'16 aes'16 g'16 des'16~ 
      | des'8 c'16 es'16 r4 \tuplet 6/4 {r16 g16 des'8 bes16 f16~} 
      | f16 aes16 g16 des'16~ des'4 a16 es'8 g'16 
      | des'16 es'16 f'8 des''8 c''16 g'16~ g'16 c''16 bes'16 f'16~ 
      | f'16. aes'16 g'16 es'32~ \tuplet 6/4 {es'16 g'16 ges'8. des'16} ges'16 f'16 es'16 bes16 
      | des'16 f'16 e'16 es'16~ es'4. es'8 
      | es'8 des'16 bes'16~ bes'8 aes'4. 
      | r2 r8. aes'16 
      | aes'16 aes'8 aes'16 aes'16 aes'8 aes'16 aes'16 aes'8 aes'16 
      | a'16 aes'8 aes'16 aes'8 aes'8~ aes'16 aes'8 aes'16 
      | aes'4 aes'8 aes'16 aes'16 aes'4 
      | aes'8. aes'16 aes'8. aes'16 aes'16 aes'8 aes'16 
      | aes'8 aes'4 aes'8~ aes'16 aes'8 aes'16~ 
      | aes'16 aes'8 aes'16~ aes'8. aes'16 aes'8 aes'16 aes'16 
      | \tuplet 3/2 {f'8 aes'8 aes'8} f'8 r8 r4 
      | r4 \tuplet 3/2 {r8 f'8 f'8} \tuplet 3/2 {f'8 e'8 e'8~} 
      | e'8. f'16~ f'8 f'8~ \tuplet 6/4 {f'8 f'8. ges'16~} 
      | ges'8. f'16~ f'16 f'16 f'16 e'16~ e'16 e'16 f'8~ 
      | f'8. f'16~ f'16 e'16 f'16 ges'32 f'32~ \tuplet 10/8 {f'16 f'32~ f'8 e'16 f'32~} 
      | f'8 f'8~ f'8. e'16~ \tuplet 6/4 {e'8 f'8 ges'16 f'16} 
      | e'16 es'16 es'8~ es'16. f'16. f'32 e'32 f'16 ges'16 es'16 bes16 
      | des'8 aes16 c'16 bes8. bes16 aes16 bes8 es'16 
      | f'16 bes'16 b'16 des''16 aes'8 bes'16 f'16 es'8. b16 
      | \tuplet 3/2 {bes8 aes4} r2 
      | r2. 
      | r2. 
      | r2. 
      | e''16 f''16 ges''16 f''16 \tuplet 3/2 {f''4 es''8~} \tuplet 3/2 {es''8 es''8 des''8~} 
      | \tuplet 3/2 {des''8 f''8 es''8~} es''16 c''8 es''16 des''16 a'8 c''16 
      | bes'16 g'16 es'16 c'16 a'16 c''16 b'8~ b'8. g'16 
      | bes'16 a'16 aes'16 bes16 b16 aes'16 es'16 c'16 g'8 des''16 aes'16~ 
      | aes'8. c''16 bes'16 g'16 es'16 c'16 a'8. es'16 
      | es'8\bendAfter #-4  r8 r2 
      | r8 c'16 d'16 a16 d'32 bes16. b32 d'32~ d'16 ges'16 a'16 bes'16 
      | b'16 des''16 es''16 e''16 f''16 e''16 des''16 c''16 bes'16 a'8 c''16 
      | aes'16 c''16 bes'16 f'16 aes'16 g'16 es'16 c'16 g'8 f'16 des'16~ 
      | des'8 f'16 es'16~ es'8 bes16 es'16 des'8 g16 c'16 
      | bes8 f16 aes16 g16 f16 bes8 c'8 f8~ 
      | f4. r8 r4 
      | r2 r8 f8 
      | es8 f4. r4 
      | r2 r8 f8 
      | es8 f4. r4 
      | r2 r8 f'8 
      | es'8 f'4 r8 r4 
      | r4 bes'16 a'16 aes'16 g'16 ges'16 des'16 bes16 a16 
      | aes16 ges16 f16 c'16 aes8 c'4.~ 
      | c'4~ \tuplet 6/4 {c'4~ c'16 g16} c'8 g8 
      | \tuplet 6/4 {c'8. g8 c'16~} c'8 g4 bes16 c'16~ 
      | c'8 g16 c'16 f'16 c''16 g'8 c'8 f'16 c''16 
      | g'16 c''8 c''16 bes'16 f'16 c'16 g'16 c''16 bes'16 f'16 es'16 
      | a'8 d'16 g'16 e'8 aes'8 des'16 g'16 d'8 
      | ges'8 es'16 g'16 e'16 ges'16 des''16 des''16 a'16 b'8.~ 
      | b'16 a'16 bes'16 aes'16 \tuplet 3/2 {es'8 aes'8 g'8~} g'16 d'16 des'16 aes'16 
      | g'8 c'16 bes16 f'8 r8 r4 
      | r2. 
      | r2. 
      | r2 \tuplet 7/8 {r16. es''16 e''32 f''32} 
      | ges''4~ \tuplet 6/4 {ges''16 f''16 e''16 es''8.~} \tuplet 6/4 {es''8 e''16 f''16 ges''8} 
      | \tuplet 6/4 {f''16 e''16 es''4} r2 
      | r16 c''8 e''16 \tuplet 6/4 {f''16 e''16 d''8 d''16 d''16} des''8 des''8 
      | c''8 bes'16 es''16 des''16 a'16 bes'16 des''16 c''16 b'16 a'8~ 
      | a'16 b'16 bes'16 a'16 aes'16 f'16 des'16. g'32~ g'16 bes'16 a'16 f'16 
      | es'4. c'8~ \tuplet 6/4 {c'16 des'8 a16 c'16 b16~} 
      | \tuplet 3/2 {b8 g8 a8} b16 e'16 ges'16 es'16~ es'16 g'16 e'16 ges'16 
      | \tuplet 3/2 {aes'8 g'8 d'8~} d'16 e'16 g'16 a'16 aes'16 bes'16 a'8~ 
      | \tuplet 3/2 {a'8 b'8 a'8} c''16 bes'16 a'16 aes'16~ aes'16 ges'16 es'8 
      | ges'16 aes'16 g'8 \tuplet 6/4 {es'16 g'8 ges'8 d'16~} d'16 f'16 e'16 f'16~ 
      | f'16 ges'16 es'16 bes16 ges16 d'16 des'16 es'16 b8. a16 
      | \tuplet 7/8 {bes32 a16 aes16 bes32 b32~} b16 aes'16 es'16 b16 g'16 bes'16 a'16 ges'16 
      | d'16 b16 g'16 e'16~ e'16 ges'16 d'16 f'16 es'4 
      | r2. 
      | r2. 
      | r4 r16 c'8 c'16 c'4 
      | c'4 c'8. c'16~ c'16 c'8 c'16~ 
      | c'8 c'16 ges'16~ \tuplet 6/4 {ges'8. c'8 c'16~} c'8 r8 
      | r8 c'8~ \tuplet 6/4 {c'16 c'8. c'16 g'16~} g'8 c'8~ 
      | c'16 c'8 c'16 f'16 g'16 c''16 g'16 \tuplet 3/2 {ges'8 c'4~} 
      | c'8 c'8 c'4~ c'16 c'8 c'16 
      | c'16 f'16 g'16 b'16 \tuplet 10/8 {ges'16 c'8.. c'32~} c'8 c'8 
      | r2. 
      | r2. 
      | r2 r8. c''16 
      | des''8 bes'16 c''16 \tuplet 3/2 {a'4 c''8} bes'16 f'16 a'8~ 
      | a'16 g'8 es'16 g'16 f'16 des'16 f'16 es'8 c'16 des'16 
      | a8 c'16 a16~ a16 a16 f8~ f8. a16 
      | g8 a8 \tuplet 6/4 {r4 r16 a16~} a16 g8 a16~ 
      | a8. g16~ g8 a4 g16 a16 
      | r4 r8 f8~ f32 g16. a16. f32~ 
      | f16 g16. a16 f32~ \tuplet 3/2 {f8 g8 a8} f16 g8 a16 
      | \tuplet 3/2 {f4 g8~} g16 a16 f16 g16 a8. f32 g32~ 
      | g16 a16 f16 g16~ g16 a16 f16 g16~ g4 
      | \tuplet 3/2 {a8 f8 g8~} g16 a16 f16 g16 a8 f16 g16\bar  ".."
    }
    >>
>>    
}
