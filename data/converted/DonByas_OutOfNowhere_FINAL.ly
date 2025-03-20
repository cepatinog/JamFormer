\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Out of Nowhere"
  composer = "Don Byas"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \major
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
      | g1:maj | g1:maj | bes1:min7 | es1:7 | g1:maj | s1 | b1:min7 | e1:9- 
      | a1:min7 | e1:9- | a1:min7 | s1 | es1:7 | s1 | r1|
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


      \tempo 4 = 56
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. r8 g8 
      \bar "||" \mark \default es16 f16 a16 c'32 d'32~ \tuplet 10/8 {d'16 e'16 g'16 f'32 g'32 f'32 d'32} e'16 c'16 a16 d'16~ d'8 ais16 f16~ 
      | \tuplet 5/4 {f16 a16 e16 g16 f16} d4~ \tuplet 6/4 {d8 f16 a16 c'16 d'16} e'16 g'16 f'16 c'16~ 
      | c'32 g'32 aes'32 g'32 aes'32 f'16 bes32 \tuplet 6/4 {d'16 es'16 d'16 es'16 des'8~} des'4~ des'32 g'32 aes'32 g'32 aes'32 f'16 bes32~ 
      | bes32 d'32 es'32 d'32 es'32 des'16. \tuplet 6/4 {a16 bes16 a16 bes16 aes16 des16} \tuplet 6/4 {e16 f16 e16 f16 es8~} \tuplet 7/8 {es16. des32 es32 bes32 aes32~} 
      | aes16 g16 g16 f16 c4~ \tuplet 10/8 {c16. a16. c'16 d'32 e'32~} e'32 g'16. e'32 f'16 a'32~ 
      | \tuplet 6/4 {a'16 cis''16 d''16 des''16 c''16 a'16~} a'32 e'32 g'32 f'32 d'16 e'32 c'32 a4~ \tuplet 7/8 {a16. g32 aes32 g32 aes32} 
      | g16 c'16\glissando  es'8~^\markup{\left-align \small vib} es'4. \tuplet 6/4 {d'16 c'16 bes16} \tuplet 6/4 {a8 g8 dis16 c16} 
      | d16 fis16 a4 g8~ g16 a16 c'16 d'16 es'16 d'8 c'16 
      | \tuplet 6/4 {ais16 fis16 a16 g16 es16 d16~} d8. es16 d16 gis16 ais4.~ 
      | ais16 cis16 e16 g16~ \tuplet 6/4 {g16 ais16 c'16 cis'16 ais16 e16~} \tuplet 6/4 {e16 des16 c16 a16 e16 a16} \tuplet 6/4 {e16 g16 e16 fis8.~} 
      | fis8 a16 fis16 g16 a16 ais32 c'16 d'32~ d'16 e'16 a'16 fis'16 g'16 d'16 ais16 g16 
      | cis'16 a16 c'8~ \tuplet 7/8 {c'8 gis32\bendAfter #+4  ais32 c'32~} \tuplet 6/4 {c'4 b16 ais16} f4~ 
      | f16 a16 c'16 d'16 e'16 c'16 a16 e16 es16 aes16 f'16 es'16 aes4~ 
      | aes16 g16 d'16 g16 f16 fis16 d'16 bes16 fis16 f16 d'16 bes16 f16 d32 f32 d32 f32 d32 e32~ 
      \bar "||" e16 c'16 a8~ a8. g16 \tuplet 20/16 {e64 f64 a64 c'64 d'64 e'64 g'64 f'64 g'64 f'64 d'64 c'64 a64 g64 e64 g64 e64 f32 es64} \tuplet 20/16 {c64 des64 es64 f64 aes64 bes64 des'64 es'64 f'64 bes'64 f'64 g'64 aes'64 f'64 f'64 es'64 des'64 aes64~ aes32} 
      | \tuplet 21/16 {fis64 aes64 bes64 des'64 es'64 g'64 aes'64 g'64 aes'64 fis'64 es'64 des'64 es'64 des'64 bes64 aes64 fis64 aes64 fis64 es64 des64} \tuplet 12/8 {fis32\bendAfter #+4  aes16 des32 es32 aes32 fis32 des32 dis16 e16\bendAfter #+4 } f4 r4\bar  ".."
    }
    >>
>>    
}
