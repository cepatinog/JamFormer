\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Processional"
  composer = "Steve Coleman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 5/4
    \clef "treble_8"
    \key f \minor
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
      
      | f1:min s4 | s1 s4 | s1 s4 | s1 s4 | des1:11+.9 s4 | s1 s4 | f1:min s4 | s1 s4 
      | ges1:11+.9 s4 | e1:11+.9 s4 | d1:11+.9 s4 | c1:13-.9+11+ s4 | f1:min s4 | s1 s4 | s1 s4 | s1 s4 
      | des1:11+.9 s4 | s1 s4 | f1:min s4 | s1 s4 | ges1:11+.9 s4 | e1:11+.9 s4 | d1:11+.9 s4 | c1:13-.9+11+ s4 
      | f1:min s4 | s1 s4 | s1 s4 | s1 s4 | des1:11+.9 s4 | s1 s4 | f1:min s4 | s1 s4 
      | ges1:11+.9 s4 | e1:11+.9 s4 | d1:11+.9 s4 | c1:13-.9+11+ s4 | f1:min s4|
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


      \tempo 4 = 104
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2 r8 es'4 aes16 f'16~ f'4~ 
      | f'8. es'16~ es'8. aes16~ aes8 r8 r4 r8 d'16 aes16 
      | d'4.. aes16~ aes16 d'16 aes'8 \tuplet 6/4 {d'16 g'16 c''8 bes'16 g'16} aes'8 f'8 
      | \tuplet 3/2 {d'4 c'8} r1 
      | r8. aes16~ \tuplet 5/4 {aes16 des'16 g'16 bes'16 des''16} \tuplet 3/2 {b'8 bes'4~} bes'2~ 
      | \tuplet 6/4 {bes'8 ges'8 es'16 b16~} \tuplet 6/4 {b16 fis'16 g'8. es'16~} es'32 aes'32 bes'16 aes'32 g'16 ges'32~ ges'8 es'32 b16 aes32~ aes16 des'16 aes16 des'16~ 
      | des'16 c'16 f16 aes16~ \tuplet 6/4 {aes16 g8 bes16 es'16 g'16~} \tuplet 6/4 {g'16 des'16 es'16 f'8 bes'16} des''16 g'16 bes'16 c''16 \tuplet 3/2 {es''8 f''8 g''8~} 
      | g''8 c''16 bes'16 aes'4 r2 r16. c''16 b'16 bes'32 
      | fis'16 bes'16 aes'16 fis'16 e'4 r4 r8. des'16 c'16 es'16 d'16. aes32~ 
      | aes16 d'16 b16 a16 bes16 a16 aes16 bes16 b16 aes'16 e'16 bes16 fis'8 aes'8 e'8 d'8 
      | \tuplet 5/4 {bes16 es'16 f'16 d'16 fis'16~} \tuplet 3/2 {fis'8 es'8 a'8} \tuplet 7/8 {e'32 a'16 fis'16 d'32 b32~} \tuplet 5/4 {b16 e'16 c'16 a16 c'16} aes4 
      | fis16 b16 e'16 des'16~ des'16 c'16 e'16 des'16 r4 r8 c'16 e'16 \tuplet 6/4 {es'8 des'8. des'16} 
      \bar "||" \mark \default c'16 des'16 es'8 a16 bes16 r8 r2 r8 d'8~ 
      | d'2~ d'8. bes16 g8 d'8 bes16 d'16 bes16 d'16~ 
      | \tuplet 3/2 {d'8 d'8 bes8} d'8 bes8~ bes16 d'16 b'16 des''16 c''16 a'16 aes'16 es'16 d'8. aes'16~ 
      | \tuplet 6/4 {aes'16 g'16 d'8 des'16 es'16} \tuplet 3/2 {c'4 bes8} r2 aes4~ 
      | aes4 \tuplet 6/4 {g16 e16 es16 des16 es16 e16} g16 aes32 b32 des'32 es'32 g'32 aes'32 b'32 des''32 es''32 e''32 des''32 b'32 bes'32 aes'32 g'32 es'32 e'32 bes32 b32 aes16 g32 
      | r2 \tuplet 5/4 {r16 b'16 bes'16 a'16 aes'16} \tuplet 6/4 {ges'16 f'16 e'16 es'16 d'16 des'16} \tuplet 5/4 {e'16 ges'16 des'16 bes16 ges16} 
      | \tuplet 6/4 {e'16 ges16 a16 des'16 bes16 a16} \tuplet 6/4 {aes16 bes16 b16 des'16 es'16 f'16} \tuplet 6/4 {aes'16 bes'16 b'16 des''16 es''8~} es''8 r8 r8 c''16 bes'16 
      | \tuplet 6/4 {aes'8 bes'8 b'16 c''16~} c''16 f'16 c''16 bes'16~ bes'8 g'16 es'16 c'16 g'8 ges'16 \tuplet 5/4 {f'8 es'16 bes16 f16} 
      | e'16 d'16 c'8 r1 
      | r8 es''8 \tuplet 5/4 {e''16 f''16 ges''16 f''16 e''16} \tuplet 6/4 {es''16 d''4 des''16~} \tuplet 5/4 {des''16 c''16 b'16 bes'16 a'16~} \tuplet 6/4 {a'16 aes'16 ges'8 f'16 d'16} 
      | \tuplet 3/2 {bes8 aes8 d'8} c'16 aes16 c'16 d'16~ d'16 d'16 fis'16 d'16 aes'16 fis'16 d'16 bes16 e'16 fis'16 g'16 bes'16 
      | b'16 des''16 es''16 e''16 f''16 e''16 c''16 b'16 bes'16 ges'16 e'16 c'16 g'16 e'16 bes'8~ bes'16 a'16 aes'16 f'16 
      \bar "||" \mark \default es'16 c'16 g'16 e'16 f'16 e'8 fis'16 g'16 f'16 d'16 bes16 g'4 c'16 d'16 es'16 c'16 
      | e'8. e'16 c'16 es'16 des'16 aes16 bes16 des'16 c'16 bes16 f16 bes16 f16 ges16 bes16 c'16 f'16 ges'16 
      | bes'16 c''16 f''8 es''8 c''8 bes'8 aes'8 ges'8 f'8 es'8 c'8 
      | bes8 r8 r4 \tuplet 7/8 {r16 es''32 des''32 c''32 b'32 a'32} aes'16 ges'16 f'8 \tuplet 5/4 {d'16 aes'16 e'16 c'16 aes16} 
      | es'16 des'16 bes16 b16 r4 r8 bes8~ bes8.. aes32~ \tuplet 6/4 {aes16 g16 bes8 b16 es'16} 
      | g'16 b'16 des''16 es''16 e''16 f''16 b'16 g'16 \tuplet 6/4 {es'8 b8 bes16 g'16} f'16 des'16 b16 aes16 e'8 b'16 des''16 
      | ges'16 c''16 bes'16 f'16 es'16 c'16 g'8 d'8. d'16~ d'8 bes16 d'16 es'16 f'16 es'16 g'16~ 
      | g'8. g'16 f'16 d'16 bes16 f32 c'32 r2 bes4~ 
      | bes4 \tuplet 6/4 {bes8 c'8. c'16} des'16 es'16 e'16 fis'16 \tuplet 3/2 {bes'8 des''8 c''8~} \tuplet 6/4 {c''16 fis'16 e'8. bes'16~} 
      | \tuplet 6/4 {bes'16 a'16 aes'8 ges'16 f'16} d'16 bes16 fis16 e'16~ e'16 e'16 es'16 es'16 d'8 d'16 d'16 b16 fis16 aes16 bes16 
      | b16 e'16 aes'16 e'16 c''16 des''16 aes'16 e'16 fis'8 r8 \tuplet 6/4 {r4 c'16 des'16} es'16 e'16 f'16 bes'16 
      | des''16 es''16 c''16 e''16 des''16 es''16 c''8 \tuplet 5/4 {d''8 des''16 es''16 c''16} des''8 b'16 c''16 es''16 bes'16 a'16 bes'16 
      \bar "||" \mark \default b'16 aes'16 es'16 c'16 aes'16 g'16 es'16 c'16~ c'32 g'16 f'16 c'16 bes32~ bes16 aes16 bes8 r4\bar  ".."
    }
    >>
>>    
}
