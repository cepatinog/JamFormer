\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Stardust"
  composer = "Art Pepper"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | s2. r4 
      | aes1:6 | aes1:6 | aes1:min6 | s2 des2:7 | es2 f2:min7 | g2:min7 c2:7 | f2.:min7 e4:dim7 | f1:min7 
      | bes2:7 bes2:dim | f2:min7 bes2:7 | es1:maj | g2:min7 c2:min7 | f1:9 | c2:min7 f2:7 | bes2:7 bes2:7sus4 | bes2:dim7 bes4:7 es4:775+ 
      | aes1:6 | s1 | aes1:min6 | s2 des2:7 | es1 | g2:min7 c2:7 | f2.:min7 e4:dim | f1:min7 
      | aes1:min7 | des1:13.9 | es2:maj c2:min7 | g2:min7 c2:7 | f1:min7 | bes1:7 | es1:6 | bes2:min7 es2:7 
      | aes1:6 | s1 | aes1:min6 | s2 des2:7 | es1 | g2:min7 c2:7 | f2.:min7 e4:dim7 | f1:min7 
      | bes2:7 bes2:dim | f2:min7 bes2:7 | es1 | c2:min7 g2:min7 | f1:9 | c2:min7 f2:7 | bes2:7 bes2:7sus4 | bes2:dim7 bes2:7 
      | aes1:6 | s1 | aes1:min6 | s2 des2:7 | es1:6 | g2:min7 c2:7 | f1:min7 | s1 
      | aes1:min7 | des1:7 | es2:maj c2:min7 | g2:min7 c2:7 | f1:min7 | bes1:7 | es1:maj | bes2:min7 es2:7 
      | aes1:6|
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


      \tempo 4 = 61
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r2. \tuplet 3/2 {r8 d'8 es'8~} 
      \bar "||" \mark \default es'16 e'16 c'16 f'16~^\markup{\left-align \small vib} f'8 es'8 c'4~^\markup{\left-align \small vib} \tuplet 6/4 {c'4 g16 aes16} 
      | f2^\markup{\left-align \small vib} r4 r8 aes32 c'16 es'32~ 
      | \tuplet 6/4 {es'4~ es'16 es'16~} \tuplet 6/4 {es'16 f'16\glissando  g'16 f'16\glissando  g'8~^\markup{\left-align \small vib}} g'4.. ges'16~ 
      | ges'8 f'4^\markup{\left-align \small vib} es'16 b16 \tuplet 3/2 {aes8 g8 f8~} f8 r8 
      | \tuplet 14/16 {r8. fis64 g64~} \tuplet 6/4 {g16 bes16 c'16 bes16 es'8} es'4.^\markup{\left-align \small vib} r8 
      | r4 r16 d'16 g'8~ g'16 d'16 bes16 g16~ g8 des'8 
      | r4 \tuplet 5/4 {r8 c'16 es'16 c'16} aes8 bes8~ bes16 g16 aes16 g16 
      | ges16 f8.~^\markup{\left-align \small vib} f4 r4 r16 g16 f16 e16 
      | f16 bes16 aes16 bes16~^\markup{\left-align \small vib} bes4 r2 
      | \tuplet 6/4 {r16 es16 d8. bes16} aes4 d'32 des'32 b32 bes16. aes32 ges32~ \tuplet 6/4 {ges8 aes16 bes16 aes16 des'16~} 
      | des'4 bes16 g32 a32 c'16 g32 bes32 c'8^\markup{\left-align \small vib} r8 r4 
      | r4 \tuplet 3/2 {bes8 c'8 bes8~} bes16 bes16 es'16 f'16 \tuplet 6/4 {cis'16 d'16 bes4~^\markup{\left-align \small vib}} 
      | \tuplet 6/4 {bes8. c'16 es'16 f'16~} \tuplet 6/4 {f'16 es'16 f'16\glissando  g'8.~} \tuplet 7/8 {g'8 f'32 es'32 c'32~^\markup{\left-align \small vib}} c'8 r8 
      | r4 \tuplet 3/2 {d'8\glissando  fis'8 g'8} d'16 bes16 des'8~ \tuplet 3/2 {des'8 g'8 des'8} 
      | r4 r8 bes8~ \tuplet 10/8 {bes32 bes8.. b32 c'32} f'8 b8 
      | a16 bes8.~^\markup{\left-align \small vib} bes8 r8 r4 \tuplet 6/4 {r8 d'8 es'16 e'16~} 
      \bar "||" e'16 es'16 f'4^\markup{\left-align \small vib} es'8 c'4~^\markup{\left-align \small vib} \tuplet 6/4 {c'4 g16 aes16} 
      | f4.^\markup{\left-align \small vib} r8 r4 r16 aes16 c'16 es'16~ 
      | \tuplet 6/4 {es'4~ es'16 c'16\glissando } \tuplet 6/4 {aes'16 bes'16\glissando  aes'16 bes'8.~} bes'8. aes'32 bes'32 \tuplet 6/4 {aes'16 ges'16 aes'8.^\markup{\left-align \small vib} ges'16} 
      | \tuplet 3/2 {es'8 des'8 es'8~^\markup{\left-align \small vib}} es'8 r8 r8. aes16 \tuplet 6/4 {c'16 es'16 ges'16 es'16 aes'16 ges'16} 
      | \tuplet 5/4 {es'16 d'16 f'16\glissando  g'16 bes'16~^\markup{\left-align \small vib}} bes'4. r8 \tuplet 15/16 {r8. g'32 bes'64~} 
      | bes'8. g'32 bes'32 \tuplet 3/2 {d''8 d''8 g'8~} \tuplet 6/4 {g'16 bes'16 c''16 bes'16 c''16\glissando  des''16~} des''4 
      | c''2~^\markup{\left-align \small vib} c''8 es''16 c''16~ c''32 aes'16 bes'16. g'32\glissando  aes'32 
      | f'4.^\markup{\left-align \small vib} r8 r8. g'16 \tuplet 9/8 {f'32 e'8 g'16 f'32 e'32~} 
      | e'32 f'32~ f'8 aes'32\glissando  bes'32~ \tuplet 6/4 {bes'4 a'16 es'16} aes'4^\markup{\left-align \small vib} r4 
      | r4 r8 bes'16 aes'16~ aes'8 des''16 bes'16~^\markup{\left-align \small vib} \tuplet 7/8 {bes'16 aes'32 ges'32 es'32 bes32 aes32} 
      | g4.^\markup{\left-align \small vib} bes8 es'8^\markup{\left-align \small vib} r8 \tuplet 14/16 {r8 r32 g'64 aes'64 bes'64 d''64} 
      | f''16 d''8.~^\markup{\left-align \small vib} d''8 r8 \tuplet 7/8 {r16. b'32 des''32 c''32 c''32~} c''4 
      | es''8^\markup{\left-align \small vib} r8 r4 \tuplet 6/4 {r8 c''16 aes'16 bes'16 g'16} aes'8^\markup{\left-align \small vib} r8 
      | r4 g'16 a'16\glissando  bes'8~ \tuplet 6/4 {bes'16\glissando  fis'16 g'16 aes'8 g'16~} g'32 es'32 bes32 aes16. bes32 aes32 
      | \tuplet 12/8 {fis32 g8.. g32\glissando  a32 es'32 bes32} des'16 es'4.^\markup{\left-align \small vib} bes16 aes16 es'8.^\markup{\left-align \small vib} 
      | r8.. g32~ \tuplet 10/8 {g8 g32 aes32 bes32 fis32 g32 a32} \tuplet 12/8 {des'16 f'32 e'16 d'32 es'16. des'32 es'32 d'32} \tuplet 10/8 {cis'32 d'32 f'32 aes'32 c''32 bes'32 b'32 g'32 es'32 d'32} 
      \bar "||" \mark \default \tuplet 6/4 {des'16 f'16\glissando  e'16 c'16 es'8~^\markup{\left-align \small vib}} es'8 r8 r8. es'16 f'8. ges'16 
      | f'16 es'8.~ \tuplet 6/4 {es'16 es'16 aes'16 bes'16 b'16\glissando  c''16~} \tuplet 9/8 {c''8~ c''32 aes'16. es'32} \tuplet 3/2 {bes'8 aes'8 aes'8~^\markup{\left-align \small vib}} 
      | \tuplet 6/4 {aes'4 b'16 bes'16} aes'4 \tuplet 6/4 {r8. b'16 bes'16 aes'16} es''4~^\markup{\left-align \small vib} 
      | es''4. des''8\bendAfter #+4  b'32 des''32~ des''8 bes'32 c''32 \tuplet 6/4 {bes'16 aes'16 bes'8.^\markup{\left-align \small vib} aes'16} 
      | bes'16 fis'16\glissando  g'8~^\markup{\left-align \small vib} g'2 \tuplet 5/4 {bes16 c'16 es'16 f'16 g'16} 
      | bes'16 d''16 bes'16 d''16~^\markup{\left-align \small vib} d''8 r8 \tuplet 12/8 {r4 f'32\glissando  g'16 bes'32} c''16 bes'16\glissando  c''16 des''16 
      | \tuplet 3/2 {c''8 f'8 f'8~^\markup{\left-align \small vib}} f'8 r8 r8.. c'32 \tuplet 3/2 {e'8 c''4~^\markup{\left-align \small vib}} 
      | c''8. c'16 g'32 aes'32 g'32 f'32 g'8^\markup{\left-align \small vib} r4 r8 c'16 d'16~ 
      | \tuplet 6/4 {d'4 bes16 d'16} cis'16\glissando  d'16 f'8 \tuplet 6/4 {r4 r16 bes16} \tuplet 3/2 {c'8 es'8 g'8} 
      | \tuplet 3/2 {bes'8 aes'8 c'8} \tuplet 9/8 {c'8.^\markup{\left-align \small vib} g'32 aes'32 g'32~} \tuplet 10/8 {g'16 ges'8. d'32 bes32} \tuplet 3/2 {aes8 bes4^\markup{\left-align \small vib}} 
      | r4 \tuplet 10/8 {r8. bes32 c'32 d'32 f'32} \tuplet 10/8 {d'32 es'32 d'32 g'32 aes'32 bes'32 fis'32 g'32 aes'32 bes'32} \tuplet 10/8 {d''32 c''16 d''32 c''32 bes'32 g'16 d'32 bes32} 
      | f'16 bes'16 f'8^\markup{\left-align \small vib} r4 \tuplet 12/8 {r8.. g'32 aes'32 f'32 es'32\glissando  e'32} \tuplet 12/8 {g'32 bes'32 des''32 c''32 b'32 c''32 d''32 g''32 e''32 f''16.} 
      | r4 r8 c'''4^\markup{\left-align \small vib} g''8 \tuplet 6/4 {f''8 f''8.^\markup{\left-align \small vib} es''16~} 
      | \tuplet 10/8 {es''8.. d''32 e''32 d''32} c''16 d''8 g''16 cis''16\glissando  d''8^\markup{\left-align \small vib} c''16 \tuplet 3/2 {d''8 c''8 es''8~^\markup{\left-align \small vib}} 
      | \tuplet 6/4 {es''8. c''16 aes'16 f'16} r4 r8 cis''4\bendAfter #+4  d''8 
      | c''4.^\markup{\left-align \small vib} aes'16 g'16~ g'16. bes'32 c''32 bes'32 aes'32 bes'32 ges'32 d'32 bes32 aes32 c'16 g32 bes32 
      \bar "||" aes4 \tuplet 13/16 {r16.. c'32. es'32 aes'64~} \tuplet 11/8 {aes'8. c''32 des''32 c''32 aes'32 bes'32} c''16 aes'16 es'8 
      | r2 \tuplet 6/4 {r8 es'16 aes'16 bes'16 bes'16} aes'16\glissando  bes'16 c''16 es''16~^\markup{\left-align \small vib} 
      | es''4~ es''16 es'16 aes'8~ \tuplet 15/16 {aes'16~ aes'64 es'32. aes'32. bes'32. bes'64~} \tuplet 14/16 {bes'32 c''64 bes'64 aes'32. bes'64~ bes'16 c''64 bes'64} 
      | aes'4 \tuplet 6/4 {aes'16 b'16 es''4~} es''16 des''32 c''32 b'32 bes'16.~^\markup{\left-align \small vib} bes'8 r8 
      | r4 r8 r32 g'32 bes'32 c''32 \tuplet 3/2 {g'8 bes'4^\markup{\left-align \small vib}} \tuplet 3/2 {g'8 f'8 bes'8^\markup{\left-align \small vib}} 
      | r4 r16 d'16 es'8~ \tuplet 7/8 {es'16. d'32 e'32 f'32 es'32} e'8^\markup{\left-align \small vib} r8 
      | r4 \tuplet 6/4 {r16 f'8 aes'16\glissando  b'16 c''16} bes'4~^\markup{\left-align \small vib} \tuplet 5/4 {bes'8 g'16 e'16 des'16~^\markup{\left-align \small vib}} 
      | des'8 r8 \tuplet 6/4 {r4 c'16 d'16~} \tuplet 12/8 {d'16 g'16 aes'32 g'32 f'16. e'16 g'32~} g'16 e'16 f'16 g'16 
      | f'16 aes'16\glissando  bes'8~^\markup{\left-align \small vib} bes'8. a'16 r2 
      | r8 r32 aes'32 g'32 f'32~ \tuplet 6/4 {f'8. ges'16 f'16 es'16~} \tuplet 12/8 {es'16 des'32 es'32 des'32 c'32 bes32 a32 aes32 c'16 g32} \tuplet 7/8 {f32 bes32 g32 aes32 bes32 des'32 b32} 
      | \tuplet 7/8 {bes32 aes32 g32 c'32 f32 c'32 es32~^\markup{\left-align \small vib}} es8 r8 r4 \tuplet 12/8 {bes32 aes32 c'32 es'32 f'16. es'32 g'32 bes'32 d''32 bes'32~} 
      | bes'8.. bes'32 d''16 f''8.~^\markup{\left-align \small vib} f''4 g''16 aes''8.^\markup{\left-align \small vib} 
      | \tuplet 3/2 {g''8 es''8 es''8~^\markup{\left-align \small vib}} es''8 r8 r4 c'''8^\markup{\left-align \small vib} r8 
      | \tuplet 6/4 {r4 r16 bes''16~} bes''4 aes''16 f''16\glissando  ges''8^\markup{\left-align \small vib} es''16\glissando  c''16 des''8~ 
      | des''8~ des''32. bes'32 c''64 bes'64 aes'64~ \tuplet 10/8 {aes'16 fis'32\glissando  g'16. d'32 bes32 aes32 bes32} fis16\glissando  g16 es'8^\markup{\left-align \small vib} r4 
      | r8 bes16 es'16~ es'16 des'32 es'16. bes32 des'32 es'8 des'16 es'16~ \tuplet 12/8 {es'32 bes32 des'16 es'16 c''16. bes'32 b'32\glissando  c''32~} 
      \bar "||" \mark \default \tuplet 5/4 {c''16 bes'16 c''16 aes'16 es'16} es'8^\markup{\left-align \small vib} r8 r2\bar  ".."
    }
    >>
>>    
}
