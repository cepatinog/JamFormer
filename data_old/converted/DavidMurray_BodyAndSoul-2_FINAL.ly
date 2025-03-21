\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul (Solo 2)"
  composer = "David Murray"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key des \major
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
      
      | d2:maj e2:min7 | d2:/fis g4:min7 c4:7 | fis4:min7 b4:min7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:7|
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


      \tempo 4 = 65
      \set Score.currentBarNumber = #-7
     
      \bar "||" r8 d16 d16 d16 e32 ges16 a32 a32 ges32 g16 a16 b16 des'16 d'16 e'16 ges'16 a'32 ges'32~ 
      | \tuplet 12/8 {ges'16 b'16. a'16 ges'16 e'16 ges'32~} \tuplet 11/8 {ges'16 des'32 b16 e'16 des'32 aes32\glissando  a32 ges32~} ges32 b16. g16\glissando  aes32^\markup{\left-align \small vib} a32 r4 
      | \tuplet 14/16 {r16 g64 a64 g32. ges32 a64 b64 d'64} \tuplet 9/8 {e'16 des'32 d'32 b32 des'16 a32 b32} \tuplet 3/2 {g8 a8 ges8~} \tuplet 10/8 {ges8 g32 ges32 e32 es32 d32 des32} 
      | \tuplet 6/4 {e8 d8 d16 d16} \tuplet 6/4 {e16 d16 des16 d16 e16 g16~} g32 d16 g32 b16 d'32 g'32~ \tuplet 6/4 {g'16 d'16 g'16 b'16 d''16 g'16~} 
      | \tuplet 6/4 {g'16 c''16 a'16 a'16 f'16 d'16} a16 c32 d16 f16 g32~^\markup{\left-align \small vib} g4. \tuplet 6/4 {g16 b16 e'16} 
      | \tuplet 3/2 {e'8 e'8 e'8} \tuplet 5/4 {e'16 e'16 a16\bendAfter #+4  b16 d'16} \tuplet 6/4 {d'8 d'16 e'16 d'16 b16~^\markup{\left-align \small vib}} b4~ 
      | \tuplet 10/8 {b16. a16 bes16 b16 c'32~} \tuplet 6/4 {c'8 c'16 des'16\glissando  d'16 d'16} \tuplet 6/4 {des'16 c'16 b16 g16 d8~^\markup{\left-align \small vib}} \tuplet 5/4 {d16 b,16 d16 g16 b16~^\markup{\left-align \small vib}} 
      | b8 d16 g16 b32 des'32 g'16 b'32 c''32\glissando  des''32 c''32~ c''32 b'32 bes'32 ges'32\glissando  g'32 e'32 ges'16 \tuplet 7/8 {e'32 es'32 d'32 f'32 d'32 des'32 c'32} 
      \bar "||" \mark \default bes16 f16 bes,16 es16~^\markup{\left-align \small vib} es8 es8 r2\bar  ".."
    }
    >>
>>    
}
