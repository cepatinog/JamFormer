\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Pop Tune #1"
  composer = "Chris Potter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key g \minor
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
      
      | g1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | bes1:min7 | s1 
      | g1:7 | s1 | bes1:min7 | s1 | g1:min7 | s1 | bes1:min7 | s1 
      | g1:min7 | s1 | bes1:min7 | s1 | g1:min7 | s1 | bes1:min7 | s1 
      | g1:min7 | s1 | bes1:min7 | s1 | g1:min7 | s1 | bes1:min7 | s1 
      | g1:min7 | s1 | bes1:min7 | s1 | g1:min7 | s1 | bes1:min7 | s1 
      | g1:min7 | s1 | bes1:min7 | s1 | g1:min7 | s1 | bes1:min7 | s1 
      | g1:min7 | s1 | bes1:min7 | s1 | g1:min7 | s1 | bes1:min7 | s1 
      | g1:min7 | s1 | bes1:min7|
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


      \tempo 4 = 109
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r4 r8 g8~^\markup{\left-align \small vib} \tuplet 6/4 {g8 g16 f8 a16} \tuplet 3/2 {bes8 f4~} 
      | f8 g16 f16~ f16 d16 f16 g16~^\markup{\left-align \small vib} g8 f8 bes8 r8 
      | r8 g8 \tuplet 3/2 {f8 d4} g8^\markup{\left-align \small vib} f8 a16 bes16 f8 
      | g8.^\markup{\left-align \small vib} f16 a16\bendAfter #+4  bes16 f8 g8^\markup{\left-align \small vib} f8 a16\bendAfter #+4  bes8.~ 
      | bes8 g8~^\markup{\left-align \small vib} \tuplet 7/8 {g16. f16. g32~^\markup{\left-align \small vib}} \tuplet 6/4 {g8. f8 bes16~} bes16 b16 c'8~ 
      | c'8 g8 \tuplet 3/2 {f8 d8 g8~} \tuplet 6/4 {g16 f8. d16 c'16~} c'8 bes8 
      | g4^\markup{\left-align \small vib} f16 g16 bes16 f'16~ f'16 d'8 g32 des'32~ \tuplet 6/4 {des'4 g16 c'16~} 
      | c'8 g8 \tuplet 6/4 {bes16\bendAfter #+4  b8. g16 bes16~} bes16 g16 f8~ \tuplet 3/2 {f8 a8 bes8~} 
      | \tuplet 5/4 {bes8 g8 g'16~} g'8.. bes32~ bes8 c'4 g8~ 
      | g8 g'8 f'8 bes'8 c'8 d'16 f'16 bes8 g8~ 
      | \tuplet 6/4 {g16 b8. f16 bes16~} \tuplet 6/4 {bes8 d8. g16~} g8 f8 c8 f8 
      | d8. g16 \tuplet 6/4 {f8 g16 bes16 cis'16 d'16} des'16 bes16 c'4 c''8~^\markup{\left-align \small vib} 
      | c''8 bes'16 bes'16 \tuplet 3/2 {bes'8 bes'4} \tuplet 3/2 {g'4 f'8~} f'8 a'8~ 
      | a'8 g'8 \tuplet 6/4 {d'8. g'8 e'16~} e'16 d'8 c'16~ \tuplet 6/4 {c'16 b8. g16 bes16} 
      | f'4 \tuplet 6/4 {r4 r16 a16} e'4 \tuplet 6/4 {r4 r16 aes16} 
      | es'8 r8 r4 aes'8 es'16 c'16~ c'16 aes16 es8 
      | \tuplet 3/2 {d8 g16 r8.} r2. 
      | r4 c'8 c''8~ c''16 g'8 bes'16~ bes'16 f'8 g'16~^\markup{\left-align \small vib} 
      | g'8 d'8 c'4^\markup{\left-align \small vib} c'4^\markup{\left-align \small vib} c'4^\markup{\left-align \small vib} 
      | c'4^\markup{\left-align \small vib} c'4^\markup{\left-align \small vib} c'8.^\markup{\left-align \small vib} c'16~ c'8 c'8~ 
      | c'8 bes16 a16 \tuplet 3/2 {bes8 g16 r8.} r2 
      | r4 r8 e'8 \tuplet 3/2 {e'4 e'8~} e'8 e'16 e'16 
      | e'16 f'16 f'16 f'16 f'16\glissando  e'16 e'16 e'16 e'4 d'8. c'16~ 
      | \tuplet 3/2 {c'8 bes8 c'8} d'8 c'8 bes8 a8 g8 f8 
      | d4 r8. g16~^\markup{\left-align \small vib} g8 f8 bes8 f8 
      | r4 r8. g16~^\markup{\left-align \small vib} g8 f8 bes8 r8 
      | r4 r16 g16 g16 g16 g8^\markup{\left-align \small vib} f8 bes8 bes8~ 
      | bes4 c'4~ \tuplet 6/4 {c'16 bes16 c'16 e'16 c'16 bes16} f8 bes8 
      | r1 
      | r2 \tuplet 6/4 {r8. f16 bes16 b16} \tuplet 6/4 {c'16 f'16 a'16 c''16 f''8~} 
      | \tuplet 12/8 {f''8.. c''32 a'32 e'32 c'32 bes32} f16 c16 bes,4 r8 r4 
      | r2 \tuplet 7/8 {r32 f32 a32 b32 g'32 b'32 es''32~} es''16\bendAfter #+4  a''8 g''16~ 
      | g''16 f''16 c''16\bendAfter #-4  g'16 a'32\bendAfter #-4  g'16. g'32\bendAfter #-4  ges'16 f'32~ \tuplet 6/4 {f'16\bendAfter #-4  es'8 d'16\bendAfter #-4  c'16 des'16} c'4~^\markup{\left-align \small vib} 
      | c'32 a32 bes16 c'32 d'16 a'32~ \tuplet 6/4 {a'16 c''16 bes'8 g'16 gis'16} a'8 f'8\bendAfter #-4  r4 
      | r4 r8. d'16 g'16 a'16 bes'16 c''16~ \tuplet 6/4 {c''16 bes'16 a'16 g'8 d'16} 
      | f'16 d'16 a'16 g'16~ \tuplet 3/2 {g'8 e'8 e'8~^\markup{\left-align \small vib}} e'8 d'8 r4 
      | r2 e'4 r4 
      | \tuplet 5/4 {r8 e'16 f'16 c''16} e''16 c''16 bes'16 c''16~ c''32 e'8. f'32~ f'8 bes'8~^\markup{\left-align \small vib} 
      | bes'4 r4 r16 bes'16\bendAfter #+4  b'16 c''16 b'16 bes'16 g'16 bes'16~ 
      | \tuplet 6/4 {bes'16 fis'16 g'8 f'16 ges'16} e'16 f'16 des'16 e'16 c'16 des'16 b16 c'16 bes8 r8 
      | r1 
      | r4 r16 e''16 f''16 ges''16 des''16 e''16 b'16 c''16 des''16 c''16 b'16 g'16 
      | bes'16 ges'16 bes'16 f'16 e'16 f'16 e'16 f'16 ges'16 b'16 f'16 ges'16 bes'16 ges'16 f'16 e'16 
      | g'16 f'16 des'16 e'16 c'16 des'16 b16 c'16 bes8. f16~ f8 ges8 
      | fis8 g8 r4 des'8. c'16~ c'8 bes16\bendAfter #+4  b16 
      | bes8 g8 g8 r8 r2 
      | r2 r16 g16 b32 d'32 f'32 aes'32~ \tuplet 5/4 {aes'16 c''16 a'16 f'16 d'16~} 
      | d'32 a'32 bes'32 aes'32 f'32 d'16 c'32~ \tuplet 5/4 {c'16 des'16 a16 c'16 bes16~} \tuplet 10/8 {bes16 d'32 f'32 a'16 aes'32 bes'32 g'32 fis'32~} \tuplet 6/4 {fis'16 g'8 a'16 b'16 des''16} 
      | fis''16\bendAfter #+4  g''8.~ g''8 f''16 bes'16 r2 
      | \tuplet 6/4 {r8 c''8 es''16\bendAfter #+4  f''16~} \tuplet 3/2 {f''8 es''8 aes'8~^\markup{\left-align \small vib}} aes'8 r8 r8. bes'16 
      | es''16 des''16 f'16 g'16 des''16 b'16 e'16 ges'16 b'16 aes'16 d'16 e'16 c''16 bes'16 d'16 f'16 
      | \tuplet 6/4 {g'8 bes'16 aes'8 des'16~} des'16 es'16 f'16 aes'16 ges'16 b8 des'16~ des'16 es'8 f'16~ 
      | f'16 ges'8 d'16~ d'16 g'8 f'16~ f'16 bes'8 f'16~ f'16 fis'8 g'16~^\markup{\left-align \small vib} 
      | g'8 f'8 bes'16 bes'16 f'8\bendAfter #-4  r2 
      | r2 \tuplet 5/4 {f''16 g''16 a''16 g''16 f''16} d''32 c''32 d''32 f''16 d''32 c''32 a'32 
      | \tuplet 6/4 {g'16 a'16 c''16 a'16 g'16 f'16} \tuplet 6/4 {d'16 f'16 g'16 c'16 d'16 f'16} \tuplet 6/4 {a16 c'16 d'8 a16 c'16} \tuplet 6/4 {f16 g16 a16 d16 f16 g16} 
      | f4^\markup{\left-align \small vib} d16 c16 d8 r2 
      | r4 \tuplet 6/4 {d16 e16 g16 c'16 a16 g16} f32 g32 a32 c'16 f'32 d'32 c'32 \tuplet 6/4 {bes16 c'16 d'16 f'16 bes'16 g'16} 
      | f'32 es'32 f'32 g'32 bes'32 g'32 a'32 bes'32 \tuplet 5/4 {b'16 c''16 es''16 c''16 b'16} \tuplet 6/4 {c''4~^\markup{\left-align \small vib} c''16 a'16} \tuplet 6/4 {g'16 f'16 g'8 a'16 c''16} 
      | bes'16 c''16 des''16 es''16 f''8. aes''16 cis''16\bendAfter #+4  d''16 r8 r4 
      | g''16 a''16 f''16 a''16 g''16 f''16 d''16 c''16~ c''8 bes'8 d''8 g'8~ 
      | g'8 g''16 a''16 f''16 a''16 g''16 f''16 d''16 c''8 c''16~^\markup{\left-align \small vib} c''8 bes'8 
      | d''4~ d''16 a''16 f''16 a''16 g''16 f''16 d''16 c''16~ \tuplet 10/8 {c''32 bes'16 b'16 c''32 des''32 c''32 b'32 bes'32} 
      | c''16 g'16 bes'16 c''16 g'16\bendAfter #+4  a'8 f'16~^\markup{\left-align \small vib} \tuplet 6/4 {f'4~ f'16 f'16} a'8 f'8~ 
      | f'8. ges''32 a''32~ \tuplet 5/4 {a''16 f''16 g''16 a''16 f''16~} f''32 g''32 f''32 d''32 c''32 b'32 c''32 b'32 a'8\bendAfter #-4  a'16 c''16 
      | \tuplet 3/2 {g'8 ges'8 bes'8\bendAfter #-4 } a'16 aes'16 g'16 ges'16 \tuplet 6/4 {f'8 d'16 e'16 f'16 g'16} \tuplet 3/2 {c''8 c''8 c''8} 
      | c''4 bes'8 bes'8 c''16 c''8 c''16 c''8 bes'16 bes'16~ 
      | bes'16 bes'16 bes'8 g'16 g'16 f'8 a'4 g'8 g'8 
      | \tuplet 3/2 {f'8 f'4} \tuplet 3/2 {g'8 g'4} \tuplet 3/2 {bes'8 f'4} c''8 r8 
      | r2 r32 bes,16 f32 bes32 f32 c32 g32 \tuplet 7/8 {c'32 g32 es32 bes32 es'32 bes32 f32} 
      | g16 c'16 f'8~^\markup{\left-align \small vib} \tuplet 6/4 {f'8 ges16 des'16 ges'16 des'16~} \tuplet 6/4 {des'16 es''16 g'16 es'16 bes16 es'16} \tuplet 6/4 {a'16 f'16 c'16 bes'16 g'16 e'16} 
      | bes'16 g'32 es''16 ges''32 bes''32 c'''32 es'''4~ \tuplet 7/8 {es'''32 g'32 c''32 aes'32 ges'32 es'32 c'32} bes32 g32 d32 c32 bes,8 
      | r2 \tuplet 6/4 {f'16 d'16 bes16 g'8.} r8. a'16~ 
      | a'16 f'8 g'16~ \tuplet 6/4 {g'8 d'16 f'16 e'16 d'16~} \tuplet 6/4 {d'16 c'8 g16 bes16 d'16} c'16 a16 f8 
      | e16 g16 f8 bes8 c'8 d'8 f'8 g'8 a'16\bendAfter #+4  bes'16 
      | g'8^\markup{\left-align \small vib} r8 r4 r16 g'16 a'16 bes'16 c''16 bes'16 a'16 g'16 
      | bes'16 g'16 bes'16 g'16 a'16 g'16 bes'16 bes'16~ \tuplet 6/4 {bes'8 a'8 g'16 bes'16} bes'16 g'16 a'16 g'16 
      | bes'16 bes'16 bes'16 g'16 bes'16 bes'16 bes'16 g'16 bes'16 bes'16 g'16 bes'16 bes'16 g'16 bes'8 
      | r4 e''16 b'16 g'16 b'16 g'16 a'16 e'16 aes'16~ \tuplet 5/4 {aes'16 b'16 f'16 ges'16 a'16~} 
      | \tuplet 6/4 {a'16 e'16 aes'8 es'16 g'16} d'16 f'16 ges'16 bes'16 f'16 f'16 f'16 d'16 f'16 f'16 f'8~ 
      | f'8 f'4 f'8 f'8.^\markup{\left-align \small vib} g'16 a'8 c''8~ 
      | c''8 f'8 f'4\bendAfter #-4  f'8.^\markup{\left-align \small vib} g'16 a'8 c''8 
      | f'4 f'8. g'32 f'32 d'16 f'16 g'16 a'16 c''16 bes'16 g'16 d'16 
      | f'16 g'16 a'16. f'32 g'8 f'16 g'16 r4 g'16 f'16 d'16 c'16 
      | g4. g'8 bes4. g'8 
      | bes16\bendAfter #+4  b8.~ b8 f'16 g'16 c'4~ \tuplet 6/4 {c'8 fis'16 g'8 f'16~^\markup{\left-align \small vib}} 
      | f'4. bes'8 des'8 r8 r4 
      | f'16 es'16 aes'16 f'16 es'16 des'16 bes16 aes16~ aes16 c''8 bes'16~ \tuplet 3/2 {bes'8 aes'8 f'8} 
      | bes16\bendAfter #+4  b8.~ b8 g'8 cis'16\bendAfter #+4  d'8.~ d'8 bes16 bes'16 
      | g'8 f'8 cis'16\bendAfter #+4  d'8 c'16~ c'8 c'4 f'8 
      | bes'8 aes'8 f'8. es'16~ es'16 f'8 des'16~ des'8 bes8 
      | r4 \tuplet 6/4 {r16 aes,16 bes,8 des16 es16} \tuplet 6/4 {ges8 aes8 a'16 g'16~} \tuplet 5/4 {g'16 es'16 ges'16 aes'16 bes'16~} 
      | \tuplet 6/4 {bes'16 b'16 d''8 a'16 b'16} g'16 f'16 d'16 c'16 bes8 r8 r4 
      | r8 g''16 a''16~ \tuplet 6/4 {a''16 f''16 d''16 c''8 bes'16} \tuplet 5/4 {b'16 bes'16 g'16 f'16 d'16} \tuplet 5/4 {f'8 gis'16 a'16 b'16} 
      | \tuplet 5/4 {fis'16 g'16 aes'16 ges'16 e'16} f'16 g'16 a'16 c''16 g'16 bes'16 b'16 d''16 des''16 es''16 f''16 aes''16 
      | ges''16 des''16 bes'16 ges'16 bes'16 des''16 es''16 ges''16~ \tuplet 6/4 {ges''16 c'''8. a''16 ges''16~} \tuplet 3/2 {ges''8 es''8 b'8} 
      | r4 g''8 r8 r4 bes''8 r8 
      | r8 g''32 f''32 d''32 des''32~ \tuplet 6/4 {des''16 a'16\bendAfter #+4  bes'16 c''8 g'16~^\markup{\left-align \small vib}} g'8 d'32 es'32 bes'32 g'32 a'16 cis''16 d''8 
      | r4 \tuplet 6/4 {r4 d''16 e''16} \tuplet 9/8 {f''32 e''32 es''32 d''32 des''32 c''32 b'32 g'32 bes'32} g'32 aes'32 c''32 aes'32 g'32 ges'32 a'32 f'32 
      | e'32 es'32 cis'32 d'32 f'32 e'32 d'32 es'32 des'32 c'32 bes32 aes32 bes32 c'32 es'32 aes'32 f'32 g'32 bes'32 ges'32 es'32 bes32 d'32 bes32~ \tuplet 7/8 {bes32 g32 c'32 es'32 g'32 bes'32 g'32} 
      | \tuplet 10/8 {f'32 es'32 d'32 c'32 b32 d'32 e'32 a'32 g'32 fis'32} g'32 a'32 b'32 des''32 g''4. e''32 es''32 e''32 es''32 d''32 des''32 c''32 b'32 
      | bes'8 g'8~ g'8. g'16 gis'16\bendAfter #+4  a'16 f'8 r8. f'16 
      | \tuplet 6/4 {bes'16 aes'16 f'16 es'16 f'16 des'16} \tuplet 6/4 {es'16 bes16 des'16 aes16 bes16 f16} \tuplet 6/4 {aes16 es16 f16 des16 es16 bes,16} bes,8 aes,8 
      | r4 r16 aes'16 c''16 aes'16 bes'16 aes'16 f'16 es'16 d'16 e'16 f'16 fis'16 
      | g'16 aes'16 g'16 aes'16 \tuplet 6/4 {c''8. a'16\bendAfter #+4  b'16 bes'16~} bes'16 g'8 c''16\bendAfter #+4  d''8 r8 
      | r8. g'16 \tuplet 6/4 {bes'8 g'16 bes'16\bendAfter #+4  b'16 g'16} bes'8 g'8 es''16\bendAfter #+4  f''8 d''16 
      | c''8. bes'16~ bes'8 gis'16\bendAfter #+4  a'16 aes'8 f'16 e'16 es'16 des'16 f'16 b'16 
      | f'16 b'16 ges'16 b'16 ges'16 b'16 g'16 b'16 g'16 b'16 aes'4 d'8 
      | cis''16 d''16 g'4 ges''8 c''16 des''16 g'8~ g'16 f''16\bendAfter #+4  g''8 
      | c''16\bendAfter #+4  d''16 c''16 g'16~ g'8 g''8 cis''16\bendAfter #+4  d''8.~ d''16 c''16 d''16 f''16~ 
      | f''16 bes'8 bes''32\bendAfter #+4  b''32~ b''16 bes'8 des''16~ \tuplet 3/2 {des''8 bes'8 f''8} aes''4 
      | g''16\bendAfter #+4  aes''16 g''16 f''16~ \tuplet 6/4 {f''8 es''8 d''16 des''16} c''16 cis''16 d''16 g''16 \tuplet 6/4 {e''16 es''16 d''16 r8.} 
      | r8 e''16 es''16 \tuplet 6/4 {d''8 es''16 e''16 a''16 g''16} es''4 f''16 e''16 es''16 b'16 
      | bes'16 a'16 bes'16 b'16 e''16 b'8 f'16 bes'16 f'16 a'16 es'16 aes'16 g'16 d''16 a'16~ 
      | a'8. fis'16 g'16 aes'16 des'16 aes'16~ aes'8 e'8 e'16 e'8 bes'16 
      | e'8 e'8 e'8 es'16 ges'16 \tuplet 5/4 {bes'8 ges'16 aes'16 bes'16} c''16 es''16 aes''8~ 
      | aes''8 g''16 ges''16 f''16 d''16 bes'16 f'16 a'16 aes'16 b'16 e''16~ \tuplet 6/4 {e''16 a'16 ges'16 d'8 a'16} 
      | aes'16 fis'16 g'16 f'16 \tuplet 3/2 {d'8 g8 c'8~} c'16 es'16 ges'16 a'16~ a'32 des''16 c'32 es'32 ges'32 a'32 b'32~ 
      | \tuplet 6/4 {b'16 gis'16 a'16 f'16 es'16 bes16} f'16 d'16 bes16 f16 \tuplet 3/2 {aes8 f8 aes,8~} aes,16. bes'32 aes'32 c''32 a'32 es'32 
      | \tuplet 6/4 {cis16 d16 bes16 f8.~} \tuplet 7/8 {f16 c''32 bes'32 aes'32 ges'32 es'32~} es'16 c'16 aes16 bes16 c'16 es'16 aes'16 b'16 
      | \tuplet 3/2 {g'8 d'8 g8~} \tuplet 6/4 {g8 d'16 f'16 g'16 a'16} bes'16 a'16 g'16 f'16 g'16 a'16 d'16 a'16 
      | \tuplet 6/4 {g'16 f'16 d'16 g'8 d'16} f'16 g'16 bes'16 b'16\bendAfter #+4  des''16 bes'16 c''4.~ 
      | \tuplet 6/4 {c''16 a'16 bes'16 bes'16 b'16\bendAfter #+4  c''16} bes'16 c''8.~ \tuplet 6/4 {c''8 a'16 bes'16 bes'16 bes'16} \tuplet 6/4 {a'8. a'16\bendAfter #+4  gis'16 a'16~} 
      | \tuplet 9/8 {a'32\bendAfter #+4  gis'16 a'32\bendAfter #+4  gis'32 a'32 a'32\bendAfter #+4  gis'32 a'32} \tuplet 6/4 {a'8 a'8 d''16 f''16} r4 r8 es''16 e''16 
      | \tuplet 3/2 {des''8 c''8 g'8~} g'8 f''16\bendAfter #+4  g''16~ g''4.. f''16~ 
      | f''8. es''32 f''32~^\markup{\left-align \small vib} f''8 d''8 c''8 d''8\bendAfter #-4  g'4~ 
      | g'8.\bendAfter #-4  es''16 f''8 bes''8~ bes''2~ 
      | bes''8. g''16\bendAfter #+4  aes''8 e''16\bendAfter #+4  f''16 es''8 f''8 bes'8 c''8 
      | cis''16\bendAfter #+4  d''16 des''16 g'16 \tuplet 3/2 {g'8 f''8\bendAfter #+4  g''8~} g''4.\bendAfter #-4  r8 
      | r8. e''16 f''8^\markup{\left-align \small vib} d'8 c''8 d''8\bendAfter #-4  g'4~ 
      | g'8.\bendAfter #-4  es''16 f''8 bes''8~ bes''4. r8 
      | r8. aes''16~ aes''8 e''16 f''16 es''8 f''8 bes'8 c''8 
      | d''8.^\markup{\left-align \small vib} g'16~ g'8 f''16\bendAfter #+4  g''16~ g''2~ 
      | g''8.\bendAfter #-4  f''16~^\markup{\left-align \small vib} f''8 d''8 c''8 d''8 g'4~ 
      | g'8.\bendAfter #-4  es''16\bendAfter #+4  f''8 bes''8~ bes''4. r8 
      | r8. aes''16~ aes''8 e''16\bendAfter #+4  f''16 es''8 f''8 bes'8 c''8 
      | cis''16 d''8 g'16~ \tuplet 6/4 {g'4 f''16 g''16~} g''2~ 
      | g''8. f''16~^\markup{\left-align \small vib} f''8 d''8 c''8 d''8 g'4~ 
      | g'8.\bendAfter #-4  es''16\bendAfter #+4  f''8 bes''8~ bes''4. r8 
      | r8. aes''16~ aes''8 es''16 f''16 es''8 f''8 bes'8 c''8\bar  ".."
    }
    >>
>>    
}
