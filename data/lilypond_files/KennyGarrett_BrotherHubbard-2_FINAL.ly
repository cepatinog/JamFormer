\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Brother Hubbard (Solo 2)"
  composer = "Kenny Garrett"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key d \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | a2:7 es2:7 
      | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 
      | aes1:maj | g1:min7 | aes1:maj | e2:7 a2:7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 
      | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 
      | aes1:maj | g1:min7 | aes1:maj | e2:7 a2:7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 
      | s2 a2:min7 | d1:min7 | g2:min7 a2:min7 | d1:min7 | g2:min7 a2:min7 | d1:min7 | g1:min7 | a2:7 bes2:maj 
      | s1 | a1:11+.9 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 
      | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 
      | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g1:min7 | d1:min11.9 | g2:min7 r2|
      }
      }

    \new Staff
    <<
    \transpose c' c'

    {
      \global
  		%\override Score.MetronomeMark #'transparent = ##t
  		%\override Score.MetronomeMark #'stencil = ##f

          \set Score.markFormatter = #format-mark-box-numbers

      \tempo 4 = 143
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r16 gis'16 a'8~ a'2 c''16 cis''8 d''16~ 
      \bar "||" \mark \default d''1~ 
      | d''4. c''8 des''16 c''8 a'16~ \tuplet 3/2 {a'8 f'8 g'8~} 
      | g'16 gis'16\bendAfter #+4  a'16 gis'16\bendAfter #+4  \tuplet 3/2 {a'8 g'8 fis'8\bendAfter #+4 } g'16 f'8 d'16 des'8 c'8 
      | \tuplet 3/2 {a8 aes8 f8} e8 es8 r4 fis'16\bendAfter #+4  g'16 aes'16 g'16 
      | c''8 g'8 f'8 d'8 d'4 c'4 
      | r4 r16 gis'16\bendAfter #+4  a'16 c''16~ \tuplet 6/4 {c''16 aes'16 g'16 aes'16 g'8} aes'8 aes'8 
      | g'8 f'8 d'8 f'4 e'8\bendAfter #+4  r4 
      | r8 d'8 d'4 f'8 d'8 e'16 f'16\bendAfter #+4  f''16 d''16 
      | r2 f'8 f'8 f'8 e'8~ 
      | e'8 d'8 d'8. d'16~ d'8 d'8 f'8 e'8~ 
      | e'8 b8 d'8 d'8 d'8 d'8 f'4~ 
      | f'16 b16 d'8 d'4 d'4 f'4~ 
      | \tuplet 3/2 {f'8 b8 d'8} d'8 d'8 d'4 f'4~ 
      | f'16 b16 d'8 d'8 d'8~ d'16 d'8 b16 f'4~ 
      | f'16 b16 d'8~ d'16 b8 d'16~ \tuplet 3/2 {d'8 b8 d'8} f'4~ 
      | \tuplet 3/2 {f'8 b8 d'8} d'8 d'8 d'8 d'8 \tuplet 6/4 {g'16 gis'16 a'4~} 
      \bar "||" a'16 b16 d'8~ d'32 d'8 g'32 gis'32 a'32 g'8 f'8 d'8 des'8~ 
      | des'8 b8 \tuplet 3/2 {d'8 es'8 b8} f'4 g'16 gis'16 a'8~ 
      | a'8 d'8 \tuplet 3/2 {g'8 aes'8 f'8~} f'16 g'16 aes'16 f'16 g'16 ges'16 aes'16 f'16 
      | g'8 g'8 g'8 f'8 g'8 f'8 g'8 f'8 
      | g'8 f'8 g'8 f'8 g'8 g'4 f'8 
      | gis'16 a'16 bes'16 c''16 c''8 d''8~ d''16 aes'16 g'8 g'4 
      | f'8 d'4 d'8~ d'32 d'8 gis'32 a'32 bes'32 r4 
      | r8. d'16 c''8 d''8~ \tuplet 6/4 {d''16 dis''16 e''8.\bendAfter #+4  f''16~} f''4~ 
      | f''1 
      | d''16 des''16 c''8~ \tuplet 6/4 {c''16 aes'16 g'16 fis'8.} g'8 f'8 g'4~ 
      | g'16 f'8 f'16~ f'8 f'8 e'16 d'16 r8 r4 
      | r4 \tuplet 3/2 {a'8 c''8 d''8} f''8 g''8 gis''16 a''16 g''8~ 
      | \tuplet 6/4 {g''16 ges''8 f''8 d''16~} \tuplet 3/2 {d''8 c''8 d''8~} d''8 c''8~ c''16 a'16 aes'8~ 
      | aes'16 g'16 g'16 f'16 g'8 f'8 aes'8 g'8 f'8 f'8~ 
      | f'8 d'4 d'8 r2 
      | r8 dis''16 e''16 f''8 d''8 e''4\bendAfter #+4  \tuplet 3/2 {f''4 d''8} 
      \bar "||" e''8 f''8 ges''8 d''4 d''8~ d''32 d''32\bendAfter #+4  dis''32\bendAfter #+4  e''32\bendAfter #+4  f''16 es''32 d''32~ 
      | \tuplet 3/2 {d''8 d''8 cis''8~} \tuplet 6/4 {cis''16 d''16 cis''8. d''16~} d''8 d''8 \tuplet 6/4 {d''16 dis''16 e''16 f''16 e''16 es''16~} 
      | \tuplet 3/2 {es''8 d''8 cis''8} d''16 cis''8 d''16~ \tuplet 3/2 {d''8 d''8 cis''8} d''8 d''8~ 
      | d''8 d''8 d''8 d''8 d''8 d''8 \tuplet 6/4 {dis''16 e''16 f''16 e''8.~} 
      | e''16 d''16 c''8 d''16 c''8 d''16 d''4 d''8 d''16 cis''16~ 
      | cis''8 d''8 d''8 d''8 d''4 e''16 g''16 ges''16 f''16~ 
      | f''16 d''16 des''8 \tuplet 6/4 {es''8 d''8 d''16 des''16~} des''16 des''16 c''4 d''16 c''16~ 
      | c''8 e''8 bes''8 c'''8~ c'''4~ \tuplet 6/4 {c'''8 b''16 bes''16 gis''16\bendAfter #+4  a''16~} 
      | a''8 aes''8\bendAfter #+4  r4 \tuplet 6/4 {r8. b''16 bes''16 c'''16~} \tuplet 6/4 {c'''8 b''16 a''16 g''16 gis''16} 
      | a''8 aes''8 r4 g''4 f''16 b''16 c'''8 
      | \tuplet 6/4 {f''16 a''8. aes''16 g''16} r4 \tuplet 6/4 {c'''8 b''16 bes''16 gis''8} a''4 
      | g''8 f''8 d''8 c''8 aes'8 g'8 g''8 f''8 
      | a'16 bes'16 d''8 \tuplet 3/2 {aes''8 g''8 f'8} g'8 f'8 g'8 f'8 
      | g'8 f'8 g'8 f'8~ f'16 aes'8 g'16 f'16 cis'16 d'16 c'16 
      | d'8 f'8~ \tuplet 3/2 {f'8 f'8 e'8} r4 \tuplet 3/2 {a'8 c''8 bes''8} 
      | c'''8 a''8 \tuplet 3/2 {c'''4 ges''8~} \tuplet 6/4 {ges''8 c'''8 cis'''16\bendAfter #+4  d'''16~} d'''4 
      | c'''8 bes''8 gis''16 a''16 g''8 f''8 d''8 d''8 c''8 
      | aes'8 f'8 g'8 f'4 c'''4 des'''8 
      \bar "||" \mark \default bes''8 g''8 f''8 d''8 d''4 c''8 aes'16 g'16~ 
      | g'8 f'8 g'8 f'8 \tuplet 3/2 {g'8 aes'8 g'8} f'8 d'8~ 
      | d'8 f'4 f'8 e'4 \tuplet 3/2 {d'4 b8} 
      | d'8 b8 \tuplet 3/2 {d'4 b8} g'8 f'8 d'8 d'8 
      | d'8 d'4 d'8 r4 g'16 fis'16 g'16 f'16 
      | g'8 f'8 \tuplet 3/2 {d'4 c'8} d'4\bendAfter #+4  dis'16 e'8. 
      | \tuplet 3/2 {f'4 d'8~} d'8 d'8 d'8 r8 r4 
      | c'8 b8 c'4. f'16\bendAfter #+4  fis'16 g'8 f'8~ 
      | f'8 c'16 d'16~ d'8 d'8 d'4 r4 
      | \tuplet 6/4 {c'16 des'16 c'4} c'4 r4 r8 f8 
      | \tuplet 3/2 {c'8 d'4~} d'8 d'8 d'2 
      | c'4 c'4 r2 
      | \tuplet 3/2 {c'8 d'4~} d'8 d'4 r8 r4 
      | c'4 c'4 r2\bar  ".."
    }
    >>
>>    
}
