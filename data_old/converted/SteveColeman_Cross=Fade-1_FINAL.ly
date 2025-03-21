\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Cross-Fade"
  composer = "Steve Coleman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 9/4
    \clef "treble_8"
    \key c \major
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
      
      | r1 s1 s4
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


      \tempo 4 = 145
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8 des''8 \tuplet 3/2 {c''8 des''4~} des''4~ \tuplet 3/2 {des''8 b'8 c''8~} c''4~ \tuplet 6/4 {c''8 b'16 a'16 ges'16 e'16~} e'4 des'4.^\markup{\left-align \small vib} r8 
      | r2. des''8. b'16~ b'8 c''4. \tuplet 6/4 {b'8. a'8 ges'16~} ges'8 e'4 a'8 
      | \tuplet 6/4 {r4 r16 a'16} r2 a'8 b'8 \tuplet 6/4 {c''8. b'8 gis'16\glissando } a'4 g'2 fis'8 g'8 
      | r4 g'4 r8 a'8 \tuplet 3/2 {des''8 ges''8 e''8~} e''8 des''8~ des''8. c''16~ c''8 b'8~ \tuplet 6/4 {b'8. a'8 e'16~} e'8 ges'8 
      | e'8 a'8 \tuplet 3/2 {b'4 ges'8} e'8 a'8 \tuplet 6/4 {des'4~ des'16 e'16~} e'8 ges'8 r4 r8 a'8 b'8 des''8 c''8 des''8 
      | r4 r8 ges'8 r4 a'8 ges'8 r4 e'16 a'16 b'16 des''16~ \tuplet 3/2 {des''8 e''8 ges''8~} \tuplet 6/4 {ges''4~ ges''16 des''16~} des''8 c''8 
      | r4 r8 des''4 des''8 \tuplet 6/4 {b'4~ b'16 c''16~} c''8 b'4.^\markup{\left-align \small vib} a'8 e'4 ges'8 a'8 fis'16 g'16\glissando  
      | b'2 a'2^\markup{\left-align \small vib} ges'8 r8 r8 e'8 des'8 e'8~ \tuplet 5/4 {e'8 c'8 des'16~} des'4 
      | b8 r8 r4 a4~ \tuplet 6/4 {a4~ a16 ges16~} ges8 a8 f8 ges8 a8 b16 c'16~ c'8 des'8~^\markup{\left-align \small vib} des'8. ges'16 
      | r1 des''8 fis''4 g''4 ges''8 e''8 des''8 c''8 des''8 
      | b'8 r8 r4 \tuplet 6/4 {a'8. b'8 c''16~} c''8 b'4 a'8 e'8 ges'8 \tuplet 3/2 {a'8 b'8 a'8~} a'8 e'8 \tuplet 6/4 {des'4~ des'16 g'16~} 
      | g'8 ges'4 ges'8~ \tuplet 6/4 {ges'8. ges'8 a'16~} a'8 ges'8 r4 b'8 des''8 c''8 des''8~ \tuplet 6/4 {des''8. ges''8 e''16~} e''8 ges''8 
      | aes''4^\markup{\left-align \small vib} r1 r1\bar  ".."
    }
    >>
>>    
}
