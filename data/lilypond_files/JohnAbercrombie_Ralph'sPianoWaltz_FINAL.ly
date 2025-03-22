\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Ralph's Piano Waltz"
  composer = "John Abercrombie"
  tagline = ##f
}
global =
{

    \time 3/4
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

      | g2. | g2. | bes2. | s2. | es2.:maj11+.9 | s2. | s2. | s2. 
      | des2.:maj | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | a2.:min9 | s2. | f2.:maj75+ | s2. | a2.:min | f2. | a2.:min | f2. 
      | a2.:min | f2. | a2.:min | f2. | g2. | s2. | bes2. | s2. 
      | es2.:maj11+.9 | s2. | s2. | s2. | des2.:maj | s2. | s2. | s2. 
      | s2. | s2. | s2. | s2. | a2.:min9 | s2. | f2.:maj75+ | s2. 
      | a2.:min | f2. | a2.:min | f2. | a2.:min | f2. | a2.:min | f2. 
      | g2. | s2. | bes2. | s2. | es2.:maj11+.9 | s2. | s2. | s2. 
      | des2.:maj | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | a2.:min9 | s2. | f2.:maj75+ | s2. | a2.:min | f2. | a2.:min | f2. 
      | a2.:min | f2. | a2.:min | f2.|
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

      \tempo 4 = 197
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default d'4. e'4. 
      | \tuplet 3/2 {e'8 f'4~} f'8 e'4. 
      | d'2~ d'16 c'16 bes8 
      | a4 \tuplet 3/2 {bes4 c'8} es'4 
      | d'4. g4 a8~ 
      | a2. 
      | r4 c'4 d'4 
      | r4 es'4 f'4~ 
      | f'8 g'4. aes'4 
      | bes4. c'8~ \tuplet 6/4 {c'4~ c'16 des'16~} 
      | des'4. es'4.~ 
      | es'4\bendAfter #-4  f4 g4 
      | aes4. bes4. 
      | c'4 \tuplet 3/2 {des'4 es'8~} es'4~ 
      | es'8. f'16~ f'8 g'8 aes'8 bes'8 
      | c''8 des''8 c''8 aes'8 es'4 
      | r4 r8 c''8 b'8 g'8 
      | d'4. r8 r4 
      | r4 r8 b'8 a'8 e'8 
      | des'4 a8. g16~ g8 f8 
      \bar "||" e4. g4. 
      | f4. a4 f8 
      | g4. b4 g8 
      | a4 b8 c'4 f'8 
      | e'4. c'4. 
      | a2. 
      | r4 gis4 a4 
      | b4 c'8 d'8 e'4 
      \bar "||" \mark \default f'4 g'8 e'4 cis'8 
      | a4.. ais16~ ais16 d'8 f'16 
      | bes'8 d''8 c''8 bes'8 a'8 f'8 
      | c'8 b8 bes8 g8 f8 e8 
      | d4. es8~ es8. g16~ 
      | g8. bes16~ bes8 c'4 d'8~ 
      | d'8 es'4 f'4 g'8 
      | a'4 \tuplet 3/2 {bes'4 c''8} des''4 
      | c''4. aes'4. 
      | es'4. aes'4 c''8 
      | bes'4. f'4. 
      | des'4. es'4. 
      | f'8 g'8 aes'8 bes'8 c''8. bes'16 
      | des''8 bes'8 \tuplet 3/2 {d''4 b'8} es''8 des''8 
      | \tuplet 6/4 {c''8. bes'8 aes'16~} aes'8 f'8 es'8 des'8 
      | \tuplet 3/2 {c'4 bes8} es'8 b8 d'8. c'16~ 
      | c'8 e8 g8 c'8 b8 d8 
      | g8 b16 a16~ a8 e4 a8 
      | g8 des'16 b16~ b16 a8 g16~ g8 f8 
      | e8 d8 des4. r8 
      \bar "||" r4 f8 d16 g16~ g8. a16~ 
      | a4. b8~ \tuplet 3/2 {b8 g8 c'8~} 
      | c'8 d'4 e'4 a8 
      | f'8 f'8 e'8 es'8 d'8 c'8 
      | \tuplet 5/4 {b8 c'8 d'16~} d'8 f'8 e'4 
      | a8 f16 e16~ e8 r8 r4 
      | r4 \tuplet 3/2 {r8 g8 e8~} e4 
      | f4 g8 a8 b8 c'8 
      \bar "||" \mark \default d'4 \tuplet 3/2 {e'4 f'8~} f'8 g'8 
      | c''4 e''4 \tuplet 6/4 {e''4~ e''16 c''16~} 
      | c''4 e''4 \tuplet 3/2 {e''4 e''8} 
      | c''8 a'8 g'8 c''8 es''8. c''16 
      | \tuplet 3/2 {d''4 a'8} c''8. g'16~ g'8 e'8 
      | ges'4 f'4. es'8 
      | \tuplet 3/2 {d'4 a8} c'4. b8 
      | bes8 g8 f8 r8 r4 
      | r8 d8 \tuplet 3/2 {c4 es8} f4 
      | \tuplet 6/4 {g4~ g16 aes16~} aes4 bes8 c'8 
      | des'8 a8 des'8 f'8 es'4 
      | es'8 g'8 f'4 f'8 e'8 
      | es'2 es'8 g8 
      | bes8 es'16 d'16~ d'8 f8 a8 d'8 
      | des'8 f8 \tuplet 3/2 {aes8 des'8 g8~} g8 es'8 
      | des'8 a8 c'8 des'4. 
      | ais'16 b'8 ais'16 b'4 g'8 d'8 
      | e'4 e'4 d'8 cis'8 
      | \tuplet 3/2 {b4 a8} g8 f8 e8 d8 
      | cis8. d16~ d8 e8~ e16 g8 e16~ 
      \bar "||" e4. a8~ a8. b16~ 
      | b4. c'8~ c'8. d'16~ 
      | d'4 c'8 e'4 d'16 f'16~ 
      | f'4. d'8~ d'8. e'16~ 
      | e'4. c'4. 
      | d'4. b8~ b8. c'16~ 
      | c'4 b8 a4.~ 
      | a4 b4 c'4 
      | d'2.~ 
      | d'2.\bar  ".."
    }
    >>
>>    
}
