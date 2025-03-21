\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Adam's Apple"
  composer = "Wayne Shorter"
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
      
      | aes1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | ges1:7 | s1 | s1 | s1 | aes1:7 | s1 | s1 | s1 
      | aes1:min7 | des1:13.9 | bes1:min7 | es1:7 | aes1:min | s1 | bes1:min7/es | s1 
      | aes1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | ges1:7 | s1 | s1 | s1 | aes1:7 | s1 | s1 | s1 
      | aes1:min7 | des1:13.9 | bes1:min7 | es1:7 | aes1:min | s1 | bes1:min7/es | s1 
      | aes1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | ges1:7 | s1 | s1 | s1 | aes1:7 | s1 | s1 | s1 
      | aes1:min7 | des1:13.9 | bes1:min7 | es1:7 | aes1:min | s1 | bes1:min7/es | s1 
      | aes1:7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | ges1:7 | s1 | s1 | s1 | aes1:7 | s1 | s1 | s1 
      | aes1:min7 | des1:13.9 | bes1:min7 | es1:7 | aes1:min | s1 | bes1:min7/es|
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


      \tempo 4 = 174
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default aes'8 aes'8 ges'8 aes'8 r4 r8 es'8 
      | ges'8 ges'16 f'16~ f'8 ges'8~ \tuplet 3/2 {ges'8 f'8 es'8} des'4 
      | es'8 es'8 des'8 es'8 r2 
      | b8 b8 bes8 b8~ b16 bes16 aes16 ges16~ ges4 
      | aes8 aes8 c'8 aes8 r2 
      | r8 aes8 bes8 c'4 aes8 ges8 aes8~ 
      | aes8 aes16 c'16~ c'8 aes8 ges8 aes8 r4 
      | c'8 aes8 ges8 aes8 c'8 es'8 ges'8 aes'8~ 
      | aes'2 \tuplet 6/4 {e'4 bes16 des'16~} des'8 es'8 
      | r2 des'8 es'8 e'8 ges'8 
      | aes'8 b'8 bes'8 ges'8 aes'4 \tuplet 6/4 {e'4 f'16 es'16~} 
      | es'8 des'8 ges'8 f'8 e'8 es'8 des'8 es'8 
      | c'4 es'8 aes8 r4 r8 aes8 
      | ges8 aes16 bes16~ bes8 c'16 es'16~ es'4. b8 
      | \tuplet 3/2 {f'4 c'8} \tuplet 3/2 {ges'4 f'8} r2 
      | r2. r8 aes'8\glissando  
      | bes'2..^\markup{\left-align \small vib} bes'8~ 
      | bes'8 aes'8 b'16 des''16 bes'4 aes'8 ges'8 r8 
      | r1 
      | es''4 des''8 b'8 \tuplet 6/4 {aes'8. ges'8 es'16~} es'8 b8 
      | d'4 des'8 b4 b4 b8~ 
      | b4 b8 aes8 \tuplet 6/4 {b16 des'8 b8 aes16~} aes4 
      | r1 
      | r1 
      \bar "||" \mark \default \tuplet 3/2 {es'8 f'4} aes'4 aes'4. aes'8~ 
      | aes'8 aes'4.^\markup{\left-align \small vib} es'16\glissando  f'8. aes'4 
      | r2 \tuplet 3/2 {e'8 f'8 aes'8~} aes'8 aes'8~^\markup{\left-align \small vib} 
      | aes'2 bes'8 aes'8 bes'8 r8 
      | r2 \tuplet 3/2 {es'8\glissando  f'8 aes'8~} aes'8 aes'8~^\markup{\left-align \small vib} 
      | aes'4. f'16 aes'16~ \tuplet 6/4 {aes'16 bes'4 bes'16~} bes'8 r8 
      | r2 \tuplet 3/2 {es'8 f'8 aes'8~} aes'8 aes'8~^\markup{\left-align \small vib} 
      | aes'2 \tuplet 5/4 {aes'8 e'16 es'16 d'16} b8 r8 
      | r4 r8 bes8 ges8 aes8 bes8 des'8 
      | e'8 ges'8 aes'8 bes'8 des''8 aes'8 bes'8 ges'8 
      | aes'4^\markup{\left-align \small vib} e'8 des'8 r2 
      | e'8 es'16 des'16 b8 bes8 aes8 ges8 e8. d16 
      | es2 aes2^\markup{\left-align \small vib} 
      | f4.^\markup{\left-align \small vib} r8 r2 
      | r1 
      | r1 
      | bes'4 c''16 des''8. bes'4.^\markup{\left-align \small vib} a'8 
      | bes'8 bes'8 des''8 des''8 bes'8 bes'8 aes'8 r8 
      | r2 \tuplet 3/2 {bes'8\glissando  c''8 es''8~} es''4~ 
      | es''2 b'8 g'16 es'16 b8 a16\glissando  bes16~^\markup{\left-align \small vib} 
      | bes1~ 
      | bes2.. aes8 
      | bes4 r2. 
      | r1 
      \bar "||" \mark \default aes'8 aes'8 ges'8 aes'8 r2 
      | r2. \tuplet 6/4 {r8. es'8 aes'16~} 
      | aes'8 aes'8 ges'8 aes'8 r2 
      | r1 
      | aes'8 aes'8 ges'8 aes'4 es''8\glissando  f''4~^\markup{\left-align \small vib} 
      | f''1 
      | aes'4 ges'4 r2 
      | ges'8 e''8~ e''16 ges'8 f'16~ f'8. d''16 r4 
      | r2 des''8 r8 r4 
      | r8 des'8 b'8 r8 r4 \tuplet 6/4 {r4 r16 bes'16~} 
      | bes'8 r8 r2 aes'8 r8 
      | r4 r8 ges'8 f'4. f'8 
      | es'8. es'16~ es'2~ es'8 f'8 
      | c'4. es'8 bes8 es'16 aes16~ aes8 ges8 
      | r1 
      | r1 
      | r16 aes8 bes16 b8 aes'8 es'8 f'8~ \tuplet 3/2 {f'8 ges'8 aes'8} 
      | bes'8 des''4. bes'8 aes'8 ges'8 aes'8 
      | g'8 f'8 des'4 es'8 r8 r4 
      | des'8 es'4 aes'16 bes'16\glissando  c''4. es''8 
      | aes'2^\markup{\left-align \small vib} f'8 aes'4.^\markup{\left-align \small vib} 
      | f'8 aes'4.^\markup{\left-align \small vib} es'8 aes'4.^\markup{\left-align \small vib} 
      | c'8 aes'8 r2. 
      | r1 
      \bar "||" \mark \default es''8\glissando  f''8~ f''8. es''16~ es''4. r8 
      | r1 
      | \tuplet 3/2 {e''8\glissando  f''4~^\markup{\left-align \small vib}} f''8 es''8 r2 
      | e''8 es''8 e''8 es''8 r2 
      | r8 bes'8 aes'8 bes'8~^\markup{\left-align \small vib} bes'4. aes'8 
      | bes'8 aes'8 \tuplet 5/4 {bes'8 aes'8 bes'16} aes'8 bes'8 \tuplet 3/2 {aes'8 bes'8 aes'8} 
      | bes'4 aes'8 f'8\bendAfter #-4  r2 
      | r1 
      | \tuplet 3/2 {ges'4 aes'8} r4 r8 des'8 ges'8 aes'8 
      | r4 r8 des'8 e'8 ges'8 r4 
      | r8 des'8 ges'8 aes'8 r4 r8 des'8 
      | \tuplet 6/4 {e'8 ges'16 des'8 e'16~} e'8 ges'8 r2 
      | c'16 es'16 f'8 r4 r8 c'8 aes'8 bes'8 
      | r4 \tuplet 3/2 {r8 c'8 es'8} f'4 r4 
      | r16 es'16 aes'16 bes'16~ bes'8 c'8 es'16 f'8. aes'8 bes'8~ 
      | \tuplet 6/4 {bes'16 c'8 es'8 f'16} r2. 
      | a'16\bendAfter #+4  aes'16 bes'2..~ 
      | bes'8 aes'8 bes'8 aes'8 bes'8 aes'8 des''8 r8 
      | r1 
      | es'4 d''8 c''8~ \tuplet 6/4 {c''8 b'8. aes'16~} aes'8 b'8~^\markup{\left-align \small vib} 
      | b'1~ 
      | b'2 bes'8 b'16 bes'16~ bes'4~ 
      | bes'1 
      | r4 \tuplet 6/4 {r4 ges'16 aes'16~} aes'4 ges'8 r8\bar  ".."
    }
    >>
>>    
}
