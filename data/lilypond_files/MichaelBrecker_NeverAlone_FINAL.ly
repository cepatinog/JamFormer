\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Never Alone"
  composer = "Michael Brecker"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key aes \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | s4 aes2. 
      | aes1 | bes2:/aes c2:/aes | ges2:/bes es2:/g | c2:/aes f2:min/aes | aes2.:sus4 a4:maj11+.9/aes | aes2:13.9- des4:min9/aes des4:min9/des | ges2:13sus4.9 es4:min11.9 e4:min11.9 | des2.:13sus4.9 g4:13.9+ 
      | c2:min11.9 g2:13.9 | c2:min11.9 g2:13.9 | es2:min7+maj bes2:9+ | es2:min7+maj d2:9+5+ | g2:min11.9 d2:9+5+ | g2:min11.9 g2:9+5+ | c2:min11.9 g2:13.9 | c2:min11.9 g2:13.9 
      | es2:min7+maj bes2:9+ | \time 5/4 es2:min7+maj d2.:9+5+|
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

      \tempo 4 = 49
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2 r8. f16 \tuplet 6/4 {aes16 bes16\glissando  c'16 es'16 f'16 aes'16} 
      \bar "||" \mark \default bes'16\glissando  c''8.~ c''8 bes'4. r4 
      | \tuplet 6/4 {r16 c'16 d'16 f'16 c''16 d''16} c''16 bes'8.~ \tuplet 12/8 {bes'4~ bes'16 g'32 aes'32} g'8 es'16 c'16 
      | aes16\glissando  bes8. r2 \tuplet 9/8 {r16. es32 f32 g32 aes32 bes32 c'32~} 
      | \tuplet 10/8 {c'32 d'32 e'32 f'32 g'32 aes'32 bes'16 c''32 bes'32} aes'16 g'8 f'32 e'32 g'16 c'8.~ \tuplet 9/8 {c'8. es'16 des'32} 
      | c'16\bendAfter #+4  des'16 c'16\bendAfter #+4  des'16~ des'8 r8 r8. aes'32 g'32\bendAfter #+4  aes'16 g'16\bendAfter #+4  aes'16 des'16~ 
      | des'8 fis32 a32 d'32 es'32 \tuplet 6/4 {fis'16 a'16 d''16 c''16 b'8~} b'16 a'16 aes'16 fis'16 e'8 es'16 des'16~ 
      | des'4 es32 fis32. b64 d'64 es'8 b64 \tuplet 3/2 {es'8 ges'4~} \tuplet 6/4 {ges'16 d'16 a16 fis'8.} 
      | \tuplet 6/4 {es'16 ges'16 aes'4} r4 r32 des''32 c''32 b'32 bes'4 aes'32 g'32 bes'32 g'32 
      | \tuplet 6/4 {es'16 f'16 g'4~} g'16 bes'16 g'8~ \tuplet 14/16 {g'16 g'64 aes'64 g'64 bes'64 g'64 a'64 g'64 aes'64 b'64 bes'64~} \tuplet 6/4 {bes'4 g'16 es'16} 
      | bes32\bendAfter #+4  b32 bes32 b32\bendAfter #+4  bes16 f32 c32 r4 aes,32 aes32 f32 des32 f32 aes32 es'32 b32 es'32 f'32 g'32 aes'32 bes'32 c''32 des''32 es''32 
      | c''32 des''32 c''32 b'32 bes'8~ \tuplet 10/8 {bes'8.. bes'32 ges'32 d'32} \tuplet 13/16 {ges'64 e'16 d'64 b64 aes64 ges64 aes64 b64 d'64 bes64} \tuplet 10/8 {des'32 d'32 f'32 aes'32 des''32 b'32 bes'16 aes'32 bes'32} 
      | es'16 ges'8.~ \tuplet 13/16 {ges'16 bes,64 es64 d64 ges64 a64 bes64 c'64 d'64 e'64} \tuplet 20/16 {d'8~ d'32 c'32 bes64 fis32 d32 es64 fis64 g64} a64 bes64 c'64 d'64 es'64 fis'64 g'64 bes'64 c''64 d''64 c''64 bes'64 a'64 bes'64 c''32 
      | d''8 bes'32 g'32 d'32 c'32 bes16 g8.~ \tuplet 7/8 {g16\bendAfter #-4  fis32 a32 es'32 fis'32 aes'32} c''32 bes'32 f'16 aes'32 es'32 c'32 aes32 
      | \tuplet 14/16 {d'32 g'32 a'32 bes'32 c''32 d''32 c''64 bes'64} \tuplet 6/4 {a'16 g'16 d'16 c'16 bes8~} bes16 g'16 bes'32 a'32 aes'32 b'32 \tuplet 7/8 {g'32 aes'32 b'32 es''32 f''32\glissando  fis''32 g''32~} 
      | \tuplet 6/4 {g''4~ g''16 f''16} e''16 f''8. \tuplet 10/8 {es''16 d''16 es''8 d''32 des''32} \tuplet 6/4 {d''4 c''16 g'16} 
      | \tuplet 6/4 {f'8. es'16 f'16 g'16} f'8 es'8~ \tuplet 10/8 {es'8.. b,32 es32 aes32~} \tuplet 9/8 {aes32 des32 f32 aes32 es'32 bes32 des'32 c'32 bes32} 
      | \tuplet 10/8 {ges'32 es'32 ges'16 bes'32 c''32 des''32 c''32 b'32 bes'32~} \tuplet 6/4 {bes'4~ bes'16 bes,16} \tuplet 17/16 {e64 d64 ges64 a64 b64 e'64 d'64 b64 aes64 ges64 aes64 bes64 des'64 bes64 fis64 g64 bes64} \tuplet 12/8 {b32 des'32 e'32\glissando  f'32 bes'32 b'32 des''32\glissando  b'32 bes'32 d''32 b'32\glissando  bes'32} 
      | \time 5/4 es''32 d''32 c''32 b'32 bes'8~ bes'16 bes'32 ges'32 f'32 es'32 d'32 ges'32 \tuplet 6/4 {bes'16 c''16 des''16\glissando  d''16 bes'16 es''16} f''4.^\markup{\left-align \small vib} r8\bar  ".."
    }
    >>
>>    
}
