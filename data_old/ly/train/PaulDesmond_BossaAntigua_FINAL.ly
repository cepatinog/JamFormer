\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Bossa Antigua"
  composer = "Paul Desmond"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key aes \major
    \override Rest #'direction = #'0
    \override MultiMeasureRest #'staff-position = #0
}
\score
{
<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | s2 r2 
      | aes1:maj | aes1:maj | bes1:min7 | es1:7 | aes1:maj | f1:min7 | bes1:min7 | es1:7 
      | c1:min7 | f1:7 | bes1:min7 | es1:7 | aes1:maj | f1:min7 | bes1:min7 | d2:min7 g2:7 
      | c1:maj | a1:min7 | d1:min7 | g1:7 | e1:min7 | a1:min7 | d1:min7 | g1:7 
      | c1:min7 | f1:7 | bes1:min7 | es1:7 | aes1:maj | f1:min7 | bes1:min7 | es1:7 
      | aes1:maj | s1 | bes1:min7 | es1:7 | aes1:maj | f1:min7 | bes1:min7 | es1:7 
      | c1:min7 | f1:7 | bes1:min7 | es1:7 | aes1:maj | f1:min7 | bes1:min7 | d2:min7 g2:7 
      | c1:maj | a1:min7 | d1:min7 | g1:7 | e1:min7 | a1:min7 | d1:min7 | g1:7 
      | c1:min7 | f1:7 | bes1:min7 | es1:7 | aes1:maj | f1:min7 | bes1:min7 | es1:7|
      }
      }

    \new Staff
    <<
    \transpose c' c'

    {
      \global
  		%\override Score.MetronomeMark #'transparent = ##t
  		%\override Score.MetronomeMark #'stencil = ##f
  		
  		\override HorizontalBracket #'direction = #UP
  		\override HorizontalBracket #'bracket-flare = #'(0 . 0)
  		
  		\override TextSpanner #'dash-fraction = #1.0
  		\override TextSpanner #'bound-details #'left #'text = \markup{ \concat{\draw-line #'(0 . -1.0) \draw-line #'(1.0 . 0) }}
  		\override TextSpanner #'bound-details #'right #'text = \markup{ \concat{ \draw-line #'(1.0 . 0) \draw-line #'(0 . -1.0) }}
          \set Score.markFormatter = #format-mark-box-numbers


      \tempo 4 = 192
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2 c''4 aes'4 
      \bar "||" \mark \default es'2 r2 
      | r4 r8 f'8 g'8 aes'8 bes'8 des''8 
      | \tuplet 3/2 {c''4 aes'8~} aes'8 es'4 r8 r4 
      | r2 f''8 es''8 c''8 bes'8 
      | aes'8. es'16~ es'8 es'8~ es'2~ 
      | es'8 f'8 g'8 aes'8 bes'8 g'8 es'8 des'8 
      | \tuplet 3/2 {c'4 es'8~} es'4. r8 r4 
      | r8 c'8 es'8 f'8 ges'8 f'8 es'8 c'8 
      | des'4. c''4. bes'4~ 
      | bes'4 g'8 aes'8 bes'8 g'8 es'8 des'8 
      | c'4.. bes'16~ bes'4 aes'4~ 
      | aes'4 f'8 g'8 \tuplet 3/2 {aes'4 g'8} f'8 des'8 
      | c'4 r2. 
      | r8 d'8 f'8 a'8 b'8 c''8 des''8 d''8 
      | b'8 g'4 g'8~ g'4. a'8 
      | b'8 g'4 g'4. \tuplet 6/4 {a'8 b'8 c''16 a'16~} 
      \bar "||" a'8 a'4. b'8 c''8~ \tuplet 6/4 {c''16 des''4 d''16~} 
      | d''8. c''16~ c''8 b'4 a'8 b'4 
      | g'8. g'16~ g'4 r2 
      | r8 a'8 b'8 c''8~ c''16 b'8 a'16~ a'16 b'8 g'16~ 
      | g'8 g'4. e'8 d'8 e'8. g'16~ 
      | g'8. g'16~ g'4 e'4 c'4~ 
      | c'8 r8 r2. 
      | r2. f'4 
      | c''4 a'8. bes'16~ bes'8 c''8~ c''8. bes'16~ 
      | bes'4 fis'8 g'8 bes'8 a'8 aes'8 g'8 
      | es'8 c'8 es'8 f'4 es'4 f'8~ 
      | f'4~ \tuplet 6/4 {f'16 es'4 f'16~} f'4 es'4~ 
      | es'4 r2 r8 bes'8~ 
      | bes'4 c''8 es''8 c''8 bes'8 g'8 aes'8 
      | f'8 g'8~ g'16 es'8 es'16~ es'8 r8 r4 
      | r2. f''4~ 
      \bar "||" \mark \default f''8 f'8 g'4 aes'8. a'16~ a'8. bes'16~ 
      | bes'4. c''8 des''8. d''16~ d''8 f''8~ 
      | f''4 es''4 es'8. b'16~ b'8 c''8~ 
      | c''4 es''4 \tuplet 3/2 {c''4 bes'8} aes'8 f'8 
      | des'8 bes8 es'8. es'16~ es'4. r8 
      | r2 c'16 es'8 f'16 g'8 g'8 
      | f'8 f'8 g'8 g'8 f'8 f'8 g'4~ 
      | g'8 f'8~ f'16 g'8 g'16 f'8 f'8 es'8 es'8~ 
      | es'4. r8 r2 
      | r8 des'8 es'8 es'8 des'8 des'8 c'8 c'8~ 
      | c'8 r8 r2. 
      | r8 c'8~ c'16 ges'8 f'16 es'8 c'8~ \tuplet 3/2 {c'8 des'8 es'8~} 
      | es'8 des'8 \tuplet 3/2 {bes4 c'8} des'8 es'8 \tuplet 3/2 {e'4 des'8~} 
      | des'8 r8 r4 \tuplet 3/2 {e'4 d'8~} d'8 r8 
      | r4 r8 c'8 e'8 g'8 b'8 b'8 
      | g'8 g'8 e'8 e'8~ e'16 c'8 c'16 a4~ 
      \bar "||" a4. r8 r4 r8 a'8~ 
      | a'8. f'16~ f'8 d'8 b8 g4.~ 
      | g2 r4 \tuplet 6/4 {r4 e'16 fis'16} 
      | g'4~ g'16 e'8 c'16~ c'8 a8 e'4~ 
      | e'8 c'4 a8 e'4.. d'16~ 
      | d'8 c'8 b8 c'8 d'8 b8 c'4~ 
      | c'4. r8 r2 
      | r8 f'4 f'4. f'4~ 
      | f'4 r2 r8 bes'8~ 
      | bes'4 bes'4 bes'4 bes'4 
      | es'8 es'4. r4 r8. aes'16~ 
      | aes'4 aes'4 aes'4 \tuplet 6/4 {aes'4~ aes'16 des'16~} 
      | des'8 des'4 es'4 f'4 aes'8~ 
      | aes'4 g'8 bes'8 g'8 f'8~ f'16 es'8 c'16~ 
      | c'8 c'2..~ 
      | c'4. r8 r2\bar  ".."
    }
    >>
>>    
}
