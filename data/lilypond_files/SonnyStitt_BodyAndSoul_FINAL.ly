\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "Sonny Stitt"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key des \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | s2 r2 
      | es2:min7 bes2:9- | aes2:7sus4 aes2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 b2:7 | bes4:min7 es4:7 es4:min7 aes4:7 | des2:6 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 b2:7 | bes2:min7 d2:7 | des2:6 e4:min7 a4:7 
      | d2:maj e2:min7 | fis2:min7 g4:min7 c4:7 | fis4:min7 b4:7 e4:min7 a4:7 | d1:maj | d2:min7 g2:7 | c2:maj es2:dim | d2:min7 g2:7 | c4:7 b4:7 bes2:7 
      | es2:min7 bes2:9- | es2:min7 d2:7 | des2:maj ges2:7 | f2:min7 e2:dim7 | es1:min7 | c2:min5-7 b4:11+.9 f4:7 | bes4:min7 r4 s4 s4 | s4 s4 s4 s4 
      | s4 s4 s4 s4 | s4 s4 s4 s4 | des1:6|
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

      \tempo 4 = 68
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2. \tuplet 5/4 {r8 bes16 c'16 d'16} 
      \bar "||" \mark \default es'4.^\markup{\left-align \small vib} \tuplet 6/4 {bes'16 ges'16 es'16} bes16 d'8.~^\markup{\left-align \small vib} d'8~ d'32 bes'32 ges'32 d'32 
      | bes16 des'8.~^\markup{\left-align \small vib} \tuplet 9/8 {des'32 a'32 bes'16 c''32 bes'32 ges'32 es'32 bes32} des'16 c'8.^\markup{\left-align \small vib} r4 
      | r4 r16 f'32 ges'32 aes'32 bes'32 aes'32 ges'32 aes'4^\markup{\left-align \small vib} r4 
      | f'32 ges'32 aes'16 c''32 b'32 bes'32 a'32 aes'32 c'32 des'32 ges'32 f'32 ges'32 aes'32 bes'32 c''32 aes'32 f'32 c'32 es'32 c'32 d'32 f'32 \tuplet 6/4 {aes'16 bes'16\glissando  b'16 bes'16 e'8~} 
      | \tuplet 6/4 {e'16 bes'16 b'16 bes'16 es'8~^\markup{\left-align \small vib}} es'4.. c''32\glissando  des''32 c''32 des''32 c''32 bes'32 a'32 bes'32 a'32 g'32 
      | f'4~^\markup{\left-align \small vib} \tuplet 7/8 {f'32 e'32 es'32 aes32 bes32 des'32 c'32} \tuplet 3/2 {ges8 f4^\markup{\left-align \small vib}} r4 
      | r4 r8 c''32 d''32 es''32 des''32 c''32 bes'32 a'32 g'32 aes'32 g'32 ges'32 bes32~ bes16 f'16 bes16 aes16 
      | c'16\glissando  des'8.^\markup{\left-align \small vib} r4 r32 bes'32 b'16 g'32\glissando  aes'32 e'32\glissando  f'32 d'16\glissando  es'16 d'16 bes16 
      \bar "||" es'4~^\markup{\left-align \small vib} \tuplet 10/8 {es'8. f'32 ges'32 bes'32 d''32} f''16 es''8. bes4 
      | es'16 f'32 ges'32 aes'32 des''32\glissando  f''32 es''32 a4~ \tuplet 9/8 {a32 d'16 e'32 f'32 ges'32 a'32 b'32 e''32} d''8. aes16~ 
      | \tuplet 12/8 {aes16 des'8 es'32 f'32 aes'32 c''32 es''32 bes'32} r4 \tuplet 10/8 {r8 c''32 des''32 c''32 des''32 c''32 aes'32~} \tuplet 6/4 {aes'16 c''16 b'16 bes'16\glissando  b'16 a'16} 
      | \tuplet 6/4 {aes'16 f'16 ges'16 f'8 aes'16} \tuplet 6/4 {c''16 es''16 c''16 aes'8 f'16~} \tuplet 6/4 {f'8 des''16\bendAfter #+4  d''16 c''16 b'16} g'16 e'8.~^\markup{\left-align \small vib} 
      | e'32 des''16 c''32 b'32 bes'32 ges'32 f'32 \tuplet 6/4 {e'16 es'16 d'16 es'8.^\markup{\left-align \small vib}} r4 r16 aes'16 c''16 d''16\glissando  
      | es''32 d''16 c''16 a'32\glissando  bes'32 g'32 a'8 c''16 f'16~^\markup{\left-align \small vib} f'4 r4 
      | r4 \tuplet 5/4 {e''16 f''16 des''16 aes'16 f'16} \tuplet 10/8 {ges'4^\markup{\left-align \small vib} a'32 c''32~} \tuplet 6/4 {c''16 e''8 c''16 a'16 ges'16~} 
      | ges'16 es''16 des''16 des''16 c''8 bes'8~^\markup{\left-align \small vib} bes'32 bes'32 c''32 b'32 g'32 e'16 b32 \tuplet 3/2 {d'8 des'4^\markup{\left-align \small vib}} 
      \bar "||" r4 \tuplet 12/8 {r32 f'16\glissando  ges'8. a'32 des''32 e''32} b'4^\markup{\left-align \small vib} r4 
      | r16 des''16 ges'16 g'16 a'16 ges'16 e'16 d'16 c''16 bes'16 c''16 bes'16~^\markup{\left-align \small vib} bes'4 
      | \tuplet 6/4 {c''16 des''16 a'16 ges'8 e'16~} \tuplet 10/8 {e'32 es'16. c''32\bendAfter #+4  des''32 c''32 des''32 b'32 ges'32~} ges'32 a'32 bes'32 a'32 aes'32 d'32 b32 ges32~ ges16 ges'16 des'16 a16 
      | e'4.^\markup{\left-align \small vib} \tuplet 6/4 {e'16 d'16 des'16} a16 b8.^\markup{\left-align \small vib} r4 
      | r8 f32 g32 a32 b32 e'32 d'32 c'32 a32 b32 c'32 d'32 e'32 \tuplet 9/8 {f'16 a32 bes32 b32 e'32 d'32 c'32 a32~} \tuplet 10/8 {a32 b32 d'32 f'32 aes'16 f'32 e'32 aes'32 b'32} 
      | \tuplet 6/4 {d''16 c''16 b'16 g'16 a'8~^\markup{\left-align \small vib}} a'4 \tuplet 7/8 {bes'32 c''32 b'32 g'32 e'32 b32 d'32} \tuplet 6/4 {des'8 a'16\glissando  bes'8 a'16~} 
      | a'32 g'32 aes'32 g'32 f'32 c''16.~^\markup{\left-align \small vib} \tuplet 7/8 {c''16. a'32 f'32 c'32 a32~} \tuplet 6/4 {a16 e'16 g'16 e'8.~^\markup{\left-align \small vib}} e'4~ 
      | \tuplet 5/4 {e'8 c'16 e'16 g'16~} g'32 aes'16 b'16. a'32 e'32 \tuplet 6/4 {aes'8 aes8 c'16 es'16~} es'16 e'16 g'16 f'16 
      \bar "||" \tuplet 3/2 {bes8 es'4^\markup{\left-align \small vib}} r4 \tuplet 6/4 {r4 es'16 f'16} es'4~^\markup{\left-align \small vib} 
      | es'16 es'16 ges'16 aes'16 \tuplet 5/4 {a'16\glissando  bes'16 ges'16 es'16 bes16~} \tuplet 10/8 {bes32 a'16. ges'16 es'16 g'32 aes'32~} aes'8 ges'16 des'16~ 
      | \tuplet 6/4 {des'16 e'16 f'16 aes'16 aes'16 aes'16~^\markup{\left-align \small vib}} aes'4 r4 \tuplet 7/8 {r16 f'16 aes'32 bes'32 c''32} 
      | es''16. des''32 c''32 des''32 c''32 bes'32 \tuplet 6/4 {aes'8 c'8 des'16 ges'16~} ges'32 f'16 es'16 d'32 f'32 aes'32 b'16 des''16 bes'16 aes'16 
      | bes'16 ges'16 bes16 es'16 ges'16 f'16 es'4^\markup{\left-align \small vib} r8 r4 
      | \tuplet 6/4 {r8. a8 es'16~} \tuplet 10/8 {es'32 g'16. d'32 c'32 es'32 f'32 g'32 a'32~} a'32 des''8 a'32 f'32 es'32 c''4 
      | r4 \tuplet 10/8 {des''32 c''32 bes'32 ges'16 es'32 bes32 des'32 bes32 c'32~} \tuplet 10/8 {c'32 f'8.. des'32 bes32~} bes32 ges32 e'16 c'32 a32 ges32 es'32~^\markup{\left-align \small vib} 
      | es'4 es'32 f'32 ges'32 bes'32 des''32 bes'32 aes'32 ges'32 bes'32 d''32 f''32 c''32 es''32 e''32 bes'32 a'32 \tuplet 6/4 {aes'16 g'16 ges'16 f'16 es'16 bes16} 
      | \tuplet 7/8 {des'32 c'32 bes32 a32 g32 aes32 f32} \tuplet 6/4 {ges16 bes16 des'16 f'4.^\markup{\left-align \small vib}} es'8~ es'16 aes'32 bes'32 aes'32 ges'32 des'32 bes32 
      | ges16 e'8.^\markup{\left-align \small vib} c'16 aes16 ges16 f16~ \tuplet 7/8 {f32 aes32 c'32 es'32 des'32 c'32 aes32} bes4~^\markup{\left-align \small vib} 
      | bes2. r4\bar  ".."
    }
    >>
>>    
}
