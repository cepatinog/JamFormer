\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Imagination"
  composer = "Woody Shaw"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key es \major
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
      
      | es2:maj e2:dim7 | f2:min7 bes2:7 | es2:maj aes2:9 | g2:min5-7 c2:7 | f2:min c2:775+ | f2:min7 bes2:7 | g2:7 c2:7 | f2:min7 bes2:7 
      | es2:maj e2:dim7 | f1:min7 | es2:maj aes2:maj | g2:min5-7 c2:7 | f2:min c2:775+ | f2:min7 bes2:7 | es1:maj | bes2:min7 es2:9 
      | aes2:maj f2:min7 | a2:min7 d2:7 | g1:min7 | e2:min5-7 a2:9- | d2:min7 g2:min7 | c2:min7 f2:7 | s1 | bes1:775+ 
      | es2:maj e2:dim7 | f2:min7 bes2:7 | es2:maj aes2:9 | g2:min5-7 c2:7 | f2:min7 c2:775+ | f2:min7 bes2:7 | g2:7 des2:11+.9 | c1:7 
      | f2:min b2:11+.9 | bes2:9sus4 bes2:7 | es2:6 es2:sus4 | es2:6 es2:sus4 | es2:6 es2:sus4 | es2:6 es2:sus4|
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


      \tempo 4 = 60
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default \tuplet 10/8 {r16. bes'32 c''16 d''16 es''32 d''32} bes'4~ bes'16 g'16 aes'16 g'16~ \tuplet 6/4 {g'4 bes'16 g'16} 
      | aes'8 f'8 r8. bes'16 a'16 d''16 r8 r8. c''32 d''32~ 
      | \tuplet 6/4 {d''16 f''16 e''16 es''16 d''16 c''16} bes'8. g'16 bes'2~ 
      | bes'4~ \tuplet 12/8 {bes'8.. a'32 b'32 c''32 d''32 es''32} des''16 aes'16 e'16 es'16~ es'4 
      | g'16 c'16 es'8 r2 g'16 c'16 es'16 f'16 
      | g'16 c'16 es'8 r4 r8. bes'16~ \tuplet 6/4 {bes'16 d''8. c''16 bes'16} 
      | aes'16 g'8.~ g'8 f'16 d'16 e'16 des'4..~ 
      | \tuplet 15/16 {des'16 bes32 a64 aes64 bes64 des'32 es'64 f'64 e'64 es'64~} \tuplet 14/16 {es'64 c'64 es'64 f'32 g'64 a'64 bes'64 a'64 aes'32 bes'64 b'64 des''64} b'16 ges'16 d'16 e'16 f'8. es'16 
      \bar "||" f'16 g'8. r4 r16 d''16 bes'16 aes'16 g'16 e'16 des'16 es'16 
      | c'8 r8 r4 \tuplet 12/8 {c''16 d''8 es''16. d''16 c''32~} \tuplet 6/4 {c''16 f''16 e''16 es''16 d''16 c''16} 
      | bes'16 g'8 bes'16~ bes'8 r8 r4 r8 bes'16 aes'16~ 
      | \tuplet 10/8 {aes'32 bes'32~ bes'8 des''32 bes'32 f'32 aes'32~} aes'8. bes'16 aes'32 bes'32 aes'32 g'32 aes'32 bes'32 aes'32 g'32 \tuplet 6/4 {aes'16 bes'16 aes'16 g'16 es'8} 
      | es'8 f'16 g'16~ g'4 r4 r8. bes'16 
      | g'16\glissando  aes'16 g'16 bes'16~ bes'4. r8 \tuplet 6/4 {r4 bes'16 aes'16} 
      | g'16 es'16 es'4. r4 r8 r32 f''32 es''32 f''32 
      | \tuplet 9/8 {g''32 f''32 es''32 d''32 des''32 c''32 bes'32 aes'32 g'32} \tuplet 10/8 {f'32 es'32 b32 es'32 f'32 g'32 bes'32 a'32 g'32 aes'32} \tuplet 11/8 {f'32 des'32 b16 g'32 f'32 es'32 des'32 aes16 bes32~} bes16 aes16 bes16 g16~ 
      \bar "||" g8 bes'8 \tuplet 6/4 {es''16 d''16 des''16 c''4.} es''8 a'4 
      | r4 r32 f''32 e''32 es''32 d''32 c''32 a'32 fis'32~ \tuplet 6/4 {fis'16 es'16 d'16 c'16 e'16 f'16~} f'8. es'16 
      | g'8 g'8 g'8 g'8 g'8 g'8 g'8.^\markup{\left-align \small vib} bes'32 b'32 
      | \tuplet 3/2 {a'4 aes'8} a'8 r8 r2 
      | \tuplet 6/4 {r8. f'16 g'16 a'16} bes'16 c''16 d''16 es''16 f''4. r8 
      | r4 \tuplet 6/4 {r16 f''8 g''16 a''16 g''16} f''16 d''8.~ \tuplet 6/4 {d''4 c''16 d''16} 
      | bes'8. bes'16~ bes'4 r4 \tuplet 6/4 {r8. bes'16 b'16 e''16} 
      | \tuplet 12/8 {b'16. bes'16 aes'16. e'16 fis'32 g'32} \tuplet 15/16 {aes'64 a'64 bes'32 e'64 f'64 fis'64 g'32 aes'64 a'64 bes'64 e'64 f'64 fis'64} \tuplet 6/4 {g'16 aes'16 a'16 bes'8.} r4 
      \bar "||" \tuplet 6/4 {r16 bes'16 c''16 d''16 f''16 es''16} d''16 bes'16 c''32 g'16 bes'32~ bes'8 e'4 g'8 
      | f'16 c'16 es'16 f'16~ \tuplet 11/8 {f'8~ f'32 g'16. a'16 ges'32~} ges'8 r8 r4 
      | bes'8 es'8 r2 bes'16 es'16 bes'16 es''16 
      | bes'8 es'8 r2 r8 g''8 
      | r4 r32 f''32 e''32 es''32 d''16 es''16 \tuplet 6/4 {c''16 d''16 bes'4~^\markup{\left-align \small vib}} \tuplet 14/16 {bes'16.. g'32\glissando  aes'32 g'32 es'64~} 
      | es'16 c'16 aes8 bes16\bendAfter #-4  aes16 r8 r4 \tuplet 6/4 {r4 bes'16 c''16} 
      | des''16 c''16 des''16 c''16~ c''4 r4 \tuplet 6/4 {r4 aes'16 bes'16} 
      | b'16 bes'8 aes'16 g'4^\markup{\left-align \small vib} r4 r16 bes'16 aes'16 g'16 
      | es'8 r8 r8 r32 bes'32 aes'32 g'32 es'8 r8 \tuplet 6/4 {r8. bes'16 aes'16 g'16} 
      | es'8 r8 r8. es'16 bes'8 r8 r4 
      | \tuplet 10/8 {r16. fis''16 g''32 aes''32 a''32 bes''32 aes''32~} aes''4. r8 r4 
      | ges''8 es''16 des''16 es''8. des''16~ des''2 
      | b'16 des''8 bes'16~ bes'8 aes'16 ges'16~ ges'4 r4 
      | \tuplet 6/4 {bes'4~ bes'16 es''16~} \tuplet 6/4 {es''8 aes'16 bes'16 des''16 aes'16} \tuplet 6/4 {bes'16 des''16 aes'16 bes'16 ges'16 aes'16} es'16 ges'16 des'8~ 
      | des'1\bar  ".."
    }
    >>
>>    
}
