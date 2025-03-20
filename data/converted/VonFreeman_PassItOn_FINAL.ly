\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Pass It On"
  composer = "Von Freeman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \minor
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
      
      | c4:min7 r4 s4 s4 | es1 | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 
      | f1:min | des1 | f1:min | ges1:7 | c1:min7 | es1 | c1:min7 | es1 
      | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 
      | f1:min | des1 | f1:min | ges1:7 | c1:min7 | es1 | c1:min7 | es1 
      | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 | c1:min7 | es1 
      | f1:min | des1 | f1:min | ges1:7 | c1:min7 | es1 | c1:min7 | es1|
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


      \tempo 4 = 106
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r1 
      | r1 
      | r4 r8 d'8 d'4^\markup{\left-align \small vib} es'4 
      | aes16\glissando  a8.~ \tuplet 6/4 {a4~ a16 g16~} g2 
      \bar "||" g8\glissando  a4. g16 a16 g8 a4~ 
      | a16 a16 g8 d'8. a16~ a8 r8 r8. a16 
      | g8 a8 c'8 d'8~ d'8.. aes'32~ aes'16 g'16 aes'16 ges'16 
      | f'16 e'16 es'16 f'16 d'16 des'16 c'16 bes16 a16 g16 f8 r4 
      \bar "||" r4 d''16 c''16 bes'16 b'16 aes'16 bes'16 aes'16\glissando  ges'16 f'16 g'16 e'16 f'16~ 
      | \tuplet 6/4 {f'16 ges'16\glissando  f'16 d'16 f'8} \tuplet 6/4 {es'8 des'16 c'16 bes16 aes16} r2 
      | es''4~ \tuplet 5/4 {es''16\glissando  f''16 a''16 g''16 des''16~} \tuplet 10/8 {des''16\glissando  b'16. a'16 b'16 aes'32~} \tuplet 6/4 {aes'16 g'8 ges'16 f'16 a'16} 
      | f'16 es'16 es'16 fis'16 e'16 cis'8.~ \tuplet 3/2 {cis'8 aes'8 fis'8} \tuplet 3/2 {fis'8 es'4~} 
      \bar "||" es'8 b'16.\glissando  a''32 \tuplet 3/2 {b''8 bes''16 r8.} \tuplet 6/4 {r4 bes'16 b'16~} b'16. bes'8 a'32 
      | \tuplet 3/2 {bes'4^\markup{\left-align \small vib} g'8~^\markup{\left-align \small vib}} g'4 f'16 g'16 r8 r4 
      | r8. a16 \tuplet 3/2 {c'8 a8 c'8~} c'4 es'16 f'8 f'16~^\markup{\left-align \small vib} 
      | f'4 es'16 c'16 r8 r4 ges'16 f'16\glissando  f'16 es'16 
      \bar "||" \mark \default c'4 r4 a'16 b'16 a'16 fis'16~ fis'16 g'16 ges'8~ 
      | ges'16\glissando  f'16 e'16 g'16 f'16 e'16 ges'16 a'16 bes'16 b'16 c''16 d''16 c''16 aes'16 a'8 
      | r4 r8.. d''32~ d''16 c''16 bes'16. b'32 aes'8 bes'16 aes'16 
      | ges'16. f'16. bes32 a32~ \tuplet 7/8 {a16. e'16. g'32~} g'16 f'16 es'16 ges'16 d'16 des'16 b8 
      \bar "||" r4 r8. bes'16~ bes'16 d''16 bes'16 aes'16 b'8 a'8 
      | \tuplet 3/2 {ges'8 a'8 g'8} e'16 g'16 f'16 des'16 bes8 r8 r8 aes'16 g'16 
      | ges'16 aes'16 e'16 ges'16 es'32 aes'16 g'16. a'32 aes'32~ \tuplet 3/2 {aes'8 bes'8\glissando  b'8~} b'8 aes'16 g'32 ges'32~ 
      | ges'16 b'16 es'16 ges'16 es'16 a'16 aes'16 a'16 bes'16 des''8.~ \tuplet 3/2 {des''8 c''8 b'8} 
      \bar "||" aes'16 bes'16 es''16 g''16~ \tuplet 6/4 {g''16\glissando  b''8\glissando  e'''8 c'''16~} \tuplet 5/4 {c'''16\glissando  e'''16 d'''16 bes''16\glissando  b''16} c''16 d''16 b'8 
      | bes'16 b'16 aes'8 g'8 ges'8~ ges'8.. aes'32~ aes'16 g'16 ges'16 bes'16 
      | f'16 es'16 d'16 g'16 f'8 fis'16 g'16 aes'8.. aes'32~ aes'16 g'16 ges'16 b'16 
      | f'16 fis'16 e'16 fis'16 aes'16 bes'16 aes'16 b'16 aes'16 bes'16 aes'16 bes'16 b'16 bes'16 b'16 g'16 
      \bar "||" ges'16 bes'16 es'8 r4 c'8 d'4.^\markup{\left-align \small vib} 
      | c'16 des'16 c'16 a16~ a8 c'4. a8 g16 a16~ 
      | a8 c'16 a16 des'4~ \tuplet 3/2 {des'8 f'8\glissando  g'8~^\markup{\left-align \small vib}} g'4~ 
      | g'8.. e'32\glissando  g'8 r8 r8 fis'8~ fis'16 g'8 f'16\glissando  
      \bar "||" \mark \default fis'16 g'16 ges'16 e'16 \tuplet 6/4 {f'4~ f'16 d'16} es'8 c'8 c'8 r8 
      | r8 fis'16\glissando  g'16~ \tuplet 6/4 {g'4 fis'16 g'16} \tuplet 6/4 {f'16 g'16 f'16 es'8.} r4 
      | r8 fis'16\glissando  g'16~ g'8 ges'16 es'16 \tuplet 6/4 {f'8. es'8 d'16} es'8 c'8 
      | \tuplet 6/4 {g16 bes4 c'16~} c'8 r8 r8. e16 \tuplet 7/8 {bes32 c'32 e'32\glissando  g'32 bes'32 c''32 bes'32} 
      \bar "||" \tuplet 6/4 {a'16 f'''16 ges'''4~} ges'''16 c16 g32 bes32 c'32 es'32 \tuplet 10/8 {f'32 a'32 c''32 d''32 bes'32 c''32 d''32 bes''32~ bes''16} r4 
      | \tuplet 10/8 {r16. f32 bes16. d32 c32 bes'32} \tuplet 6/4 {des''8. es'16 bes'16 es'16} \tuplet 6/4 {bes'16 bes''16 d'''16 ges'''16 f'''16 des'''16~} \tuplet 7/8 {des'''32 f32 c32 g32 a32 c'32 a'32} 
      | f'16 es'16 a16 d''16 \tuplet 5/4 {des''16 bes'16 des''16 b'16 a'16} es''16 b'8 c16 f16 a32 aes32 g32 a32 d'32 b32 
      | \tuplet 6/4 {bes16 es'16 bes'8 bes'16 bes'16} \tuplet 6/4 {b'16 c''16 bes'16 c''16 b'16 a'16~} a'8 e'16 aes'16\glissando  e''16 aes''16 a''16 bes''16 
      \bar "||" \tuplet 3/2 {b''8 des'''4} \tuplet 3/2 {bes'8 des''8 c''8~} c''4 bes'16 b'16 aes'8~ 
      | aes'8 g'16\bendAfter #-4  f'16 \tuplet 3/2 {g'8 fis'8 g'8\bendAfter #-4 } fis'8 g'16\bendAfter #-4  ges'16 r4 
      | r16. f'32 g'32 ges'32 bes'32 b'32 g'32 b'32 g'16 g'32 f'32 e'32 es'32~ \tuplet 10/8 {es'32 des'32 c'32 bes32 aes32 ges32 f32 e32 d32 es32} f32 a32 des'32 c'32 b32 a'32 ges'16~ 
      | ges'32 fis32 a16 d'32 es'32 f'32 f'32 cis'4~ \tuplet 10/8 {cis'32 a'32 fis'32 a'32 b'32 bes'32 aes'32 f'16.~} \tuplet 12/8 {f'4~ f'16 fis'32 aes'32} 
      \bar "||" bes'16 es'16 f'16 a'16 g'16 e'16 es'4 d'8 d'8 es'8 
      | g4 \tuplet 3/2 {d'8 d'4~} d'8 bes8 c'8 c''16 c'16~ 
      | c'8 c'16 c'16 c'8 c'16 c'16~ c'8.. c'32~ c'8 d'8 
      | es'4 \tuplet 3/2 {f'8 g'4} ges'8 f'8 es'8 c'8\bar  ".."
    }
    >>
>>    
}
