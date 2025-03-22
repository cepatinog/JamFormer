\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Milestones"
  composer = "David Liebman"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble"
    \key f \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | f1:11+.95+ 
      | g1:min6/c | s1 | s1 | s1 | s1 | s1 | des1:11+.9 | s1 
      | g1:min6/c | s1 | s1 | s1 | s1 | s1 | c1:775+ | s1 
      | a1:min7 | s1 | s1 | s1 | s1 | s1 | c1:775+ | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | a1:min7 | s1 
      | g1:min6/c | s1 | s1 | s1 | s1 | s1 | f1:11+.95+ | s1 
      | g1:min7 | s1 | s1 | s1 | s1 | s1 | f1:775+ | s1 
      | g1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | a1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | g1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | a1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | s1 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | g1:min7 | s1 | s1 | s1 | s1 | s1 | s1 | s1 
      | r1|
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

      \tempo 4 = 312
      \set Score.currentBarNumber = #0

      | r4 r8 d'8 f'8 ges'8 a'8 bes'8 
      \bar "||" \mark \default c''2^\markup{\left-align \small vib} r2 
      | r4 a'4 bes'8. c''16~ c''8 r8 
      | r4 r8. a'16~ a'2\glissando  
      | aes'4 g'4 r4 f'8 e'8 
      | c'4.. d'16~ d'4 e'4~ 
      | e'8 e''4. a'4. e'8 
      | g'4. aes'4 bes'4.~^\markup{\left-align \small vib} 
      | bes'8 r8 r8 c'8 dis'8 e'4.~ 
      | e'16 c'8 d'16~ d'4 e'4 c''4 
      | a'4. g''4. f''4 
      | e''4. c''4. d''4 
      | g'4. c''4 a'4 f'8~ 
      | f'2~ \tuplet 3/2 {f'8 e'8 f'8} g'4 
      | a'2~ a'16 c'8 d'16~ d'8 e'8 
      | g'8 aes'8 g'8 f'8 des'2 
      | r2 \tuplet 3/2 {r8 es'8 des'8} c'8 bes8 
      | r2 c'4 d'4 
      | e'2 f'4 g'4~ 
      | g'8 a'4. b'4 c''4~ 
      | c''8 d''8~ d''8. e''16~ e''4 g''4~ 
      | g''8 d''2..^\markup{\left-align \small vib} 
      | r2. r8 gis''8~ 
      | gis''8 es''8~^\markup{\left-align \small vib} es''2~ es''8 r8 
      | r2. b''4 
      | ges''1^\markup{\left-align \small vib} 
      | r2 r8 c'''4.\glissando  
      | d'''4. r8 r2 
      | r2 aes'4. g'8 
      | ges''2 e''2 
      | aes'2 ges'4 e'4 
      | f'4 a'4 gis'4 c''4 
      | b'2 gis'4. e'8 
      | f'2 bes'2~^\markup{\left-align \small vib} 
      | bes'4. g'4. es'4 
      | \tuplet 3/2 {c'4 es'8\glissando } f'4. c''4.~^\markup{\left-align \small vib} 
      | c''8 r8 r2. 
      | r4 r8 es''4 g''8 \tuplet 3/2 {f''4 c''8~} 
      | c''8 es''4 bes'8 \tuplet 3/2 {f'4 es'8} c'4 
      | \tuplet 3/2 {cis'4 d'8~} d'8 f'8~ f'16 ges'8 a'16~ a'8 bes'8~ 
      | bes'16 b'8 d''16~ d''8 e''8~ e''16\glissando  d''8 es''16~ es''8\glissando  f''8 
      \bar "||" \mark \default e''8 d''16 c''16~ c''8 bes'8 r2 
      | bes'4. g'4 g'4 a'8~ 
      | a'8 bes'8~ bes'8. bes'16 r4 r8 bes'8 
      | r2 bes'4 bes'4 
      | bes'8 b'8 des''8 es''8 f''8 es''8 des''8 b'8 
      | bes'4.^\markup{\left-align \small vib} bes'8 r2 
      | r4 bes'4 bes'8 r8 r4 
      | bes'8 b'8 des''8 es''8 \tuplet 3/2 {f''8 es''8 des''8~} \tuplet 3/2 {des''8 b'8 bes'8~^\markup{\left-align \small vib}} 
      | bes'4 r2. 
      | r8 des'8 es'8 ges'8 e'8 ges'8 aes'8 b'8 
      | \tuplet 3/2 {des''8 e''8 f''8~} \tuplet 3/2 {f''8 e''8 f''8~} f''16 e''8 es''16~ es''16 des''8 bes'16~^\markup{\left-align \small vib} 
      | bes'4. r8 r2 
      | r4 bes'8 b'8 c''8 d''16 e''16~ e''8 c''8 
      | es''8 c''8 \tuplet 3/2 {des''4 dis''8} e''8 r8 r4 
      | ges''8 c''8 f''8 ges''8 \tuplet 3/2 {aes''8 ges''4} \tuplet 3/2 {f''8 des''8 e''8~} 
      | \tuplet 3/2 {e''8 des''8 es''8~} es''8. d''16~ d''16 bes'8 ges'16~ ges'4 
      | fis'8\glissando  g'8~ g'2\glissando  fis'4 
      | e'8 d'8 b8 r8 r2 
      | r1 
      | r4 r8 b8 e'8. a'16~ a'8 b'8 
      | c''4 e''8. a''16~ a''8 b''4 f''8 
      | a''8. e''16 f''4 c''8 e''8 b'8 f'8~ 
      | f'8 e'8 \tuplet 3/2 {gis'4 b'8~} b'8 dis''8 gis''4 
      | f''4 c''8 dis''8~ dis''16 b'8 f'16~ f'16 dis'8 fis'16\glissando  
      | gis'8 bes'8 b'8 c''4 des''4. 
      | c''4. a'4. gis'4 
      | a'4 gis'4 c''4. des''8~ 
      | des''8. c''16~ c''4 a'4 e''4 
      | fis''4. e''4. a'4~ 
      | a'8 fis''8\glissando  aes''4 g''2^\markup{\left-align \small vib} 
      | e''8 b'8 aes'16 g'16 fis'16 e'16 dis'8 r8 r4 
      | r1 
      | r2 f'8 bes'8 c''4 
      | es''8 r8 r4 f'8 r8 r4 
      | r2 r16 f'8 b'16 c''4 
      | es''8 bes''4.^\markup{\left-align \small vib} f''8 r8 r4 
      | r2 \tuplet 3/2 {f'4 bes'8} c''4 
      | es''8 r8 r2. 
      | r4 f'8 ges'8 \tuplet 3/2 {bes'8 b'8 d''8~} \tuplet 3/2 {d''8 f''8 ges''8} 
      | r4 r8 a''8 r2 
      \bar "||" \mark \default r4 r8. f''16~ \tuplet 3/2 {f''8 g''8 a''8~} \tuplet 3/2 {a''8 f''8 bes''8~} 
      | \tuplet 3/2 {bes''8 f''8 a''8~} \tuplet 3/2 {a''8 f''8 a''8~} a''8\glissando  d''8 e''4 
      | \tuplet 3/2 {aes''8 d''8 f''8~} \tuplet 3/2 {f''8 a''8 aes''8~} aes''16 ges''8 des''16~ \tuplet 3/2 {des''8 b'8 e''8~} 
      | \tuplet 3/2 {e''8 f''8 g''8~} g''8 ges''8 f''8 e''8 \tuplet 3/2 {es''8 d''8 cis''8~} 
      | cis''16 d''8 e''16~ e''8 cis''8 \tuplet 3/2 {d''8 bes'8 f'8~} f'8 d'8 
      | a'8 des''8 c''8 bes'8 a'8 ges'8 \tuplet 3/2 {f'8 e'8 es'8} 
      | d'4 des'8 ges'8 es'8 f'8 aes'8 bes'8 
      | \tuplet 3/2 {c''8 es''8 fis''8~} \tuplet 3/2 {fis''8 g''8 f''8~} f''16 e''8 es''16~ es''8 des''8 
      | \tuplet 3/2 {c''4 a'8} f'8 c'8~ c'16 a'16 f'16 c'16 f'8 a'8 
      | aes'8 g'16 bes'16 b'8 des''8 es''8 ges''8 \tuplet 3/2 {f''4 es''8} 
      | d''8 bes'8 g'8. e''16~ e''8 c''8 aes'8 f'8 
      | es''4 f'8 d'8 bes'2 
      | d''8 c''8 bes'8 g'8 \tuplet 3/2 {a'8 ges'8 d'8~} d'8 ges'8 
      | d'8 r8 r4 \tuplet 3/2 {e'8 des'8 dis'8} e'8 es'8~ 
      | es'16 f'8 g'16~ \tuplet 3/2 {g'8 bes'8 f'8~} f'8 r8 r4 
      | r8 c'8~ \tuplet 3/2 {c'8 es'8 f'8} aes4. bes8 
      | a4. c'4 d'4 e'8 
      | g'4 e'8. f'16~ f'8. c''16~ c''8. b'16~^\markup{\left-align \small vib} 
      | b'2 \tuplet 3/2 {a'8 g'8 e'8} \tuplet 3/2 {d'8 c'8 b8~} 
      | b8 r8 r2. 
      | r1 
      | r8. b'16~ b'8 b'8 \tuplet 3/2 {b'4 b'8} b'4 
      | b'8 b'4 b'8 \tuplet 3/2 {b'4 b'8} b'4 
      | \tuplet 3/2 {b'4 b'8~} b'8 b'8 b'8 b'4 b'8 
      | b'4. fis''4 b'4 e''8~ 
      | e''4 b'4 fis''4 b'4 
      | fis''8. b'16~ b'8 e''8 fis''4 d''8 b'8~ 
      | b'8 fis'8 \tuplet 3/2 {e'4 b'8} fis'8 d'4 b8~ 
      | b8 b'4 e'8 fis'4 e''4 
      | b'4 \tuplet 3/2 {fis''4 bes''8~^\markup{\left-align \small vib}} bes''4. r8 
      | r2 bes''8 a''8 a''8 f''8 
      | d''8 f''8 a''8 g''8 b''8 e'''4 c'''8 
      | es'''4. c'''8\glissando  e'''4.\glissando  c'''8~^\markup{\left-align \small vib} 
      | c'''4.. bes''16~^\markup{\left-align \small vib} bes''4.. f''16~^\markup{\left-align \small vib} 
      | f''4.. c''16 es''2 
      | bes'4. bes'8 es'16 bes'8 es'16 f'8 bes'8 
      | aes'8 bes'8 \tuplet 3/2 {c''4 es''8} g''16 a''8.\glissando  d'''4 
      | b''16 a''8.~ a''8 ges''8 f''8 e''8 es''8 cis''8 
      | d''8 f''8 ges''4 f''8. d''16~ d''8 des''8~ 
      | des''8 bes'8 \tuplet 3/2 {a'4 ges'8} \tuplet 3/2 {f'4 e'8} es'4 
      \bar "||" \tuplet 3/2 {cis'8 d'16 r8.} r4 d'2~ 
      | d'1 
      | c'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
