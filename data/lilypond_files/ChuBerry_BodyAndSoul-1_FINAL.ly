\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Body and Soul"
  composer = "Chu Berry"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key c \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | d2:min7 a2:9- | d2:min7 des2:7 | c2:maj f2:7 | e2:min7 es2:dim7 | d1:min7 | b2:min5-7 e2:7 | a4:min7 d4:7 d4:min7 g4:7 | c2:6 a2:7 
      | d2:min7 a2:9- | d2:min7 des2:7 | c2:maj f2:7 | e2:min7 es2:dim7 | d1:min7 | b2:min5-7 e2:7 | a4:min7 d4:7 d4:min7 g4:7 | c2 aes2:7 
      | des2:maj es2:min7 | des2:/f ges4:min7 b4:7 | f4:min7 bes4:min7 es4:min7 aes4:7 | des1:maj | des2:min7 ges2:7 | b2:maj d2:min | des2:min7 ges2:7 | b4:7 bes4:7 a2:7 
      | d2:min7 a2:9- | d2:min7 des2:7 | c2:maj f2:7 | e2:min7 es2:dim7 | d1:min7 | b2:min5-7 e2:7 | a4:min7 d4:7 d4:min7 g4:7 | c2:6 r4 s4|
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

      \tempo 4 = 82
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r8 d8 \tuplet 3/2 {e4^\markup{\left-align \small vib} d8} \tuplet 3/2 {e4^\markup{\left-align \small vib} f8} \tuplet 3/2 {g4^\markup{\left-align \small vib} a8} 
      | e4~^\markup{\left-align \small vib} e16 g16 a16 b16 es2~^\markup{\left-align \small vib} 
      | es8 g8~^\markup{\left-align \small vib} g8~ g32 a16 b32 d'4.^\markup{\left-align \small vib} c'8 
      | b4^\markup{\left-align \small vib} \tuplet 3/2 {c'8 e'8 g'8} b'4.^\markup{\left-align \small vib} bes'16 a'16 
      | \tuplet 6/4 {gis'16 ges'16 f'4~^\markup{\left-align \small vib}} f'4. a'8\glissando  b'16 c''8^\markup{\left-align \small vib} b'16 
      | \tuplet 6/4 {a'16 aes'16 g'16 ges'16 f'16 e'16~^\markup{\left-align \small vib}} \tuplet 6/4 {e'8 d'16 b16 f16 fis16} a16 gis16 b16 d'16 \tuplet 6/4 {ges'16 f'16 e'16 d'16 c'16 a16} 
      | \tuplet 6/4 {ges16 f16 e16 e'8.~^\markup{\left-align \small vib}} e'4 d'4.^\markup{\left-align \small vib} c'8 
      | \tuplet 3/2 {b8 bes8 a8} \tuplet 3/2 {g8 ges8 f8} f4^\markup{\left-align \small vib} e4~^\markup{\left-align \small vib} 
      \bar "||" e4 \tuplet 3/2 {d8 e8 d8} e4^\markup{\left-align \small vib} \tuplet 3/2 {d8 e8 d8} 
      | es4~^\markup{\left-align \small vib} \tuplet 7/8 {es16 f16 g32 a32 b32} es'8 a'8~^\markup{\left-align \small vib} \tuplet 7/8 {a'16. g'32 a'32 g'32 e'32} 
      | b16 a8.~^\markup{\left-align \small vib} a4. g8~^\markup{\left-align \small vib} g16. a16 b16 d'32~^\markup{\left-align \small vib} 
      | d'4 c'4^\markup{\left-align \small vib} b4^\markup{\left-align \small vib} bes8 a8~^\markup{\left-align \small vib} 
      | a4~ a16. c'16. a32 c'32~^\markup{\left-align \small vib} c'4~ \tuplet 6/4 {c'16 a8. f16 e16~} 
      | e16 fis16 a16 gis16 b16 d'16 dis'16 f'16 f'16 e'8.~^\markup{\left-align \small vib} \tuplet 3/2 {e'8 d'8 c'8} 
      | a4~^\markup{\left-align \small vib} \tuplet 3/2 {a8 c'8 d'8} \tuplet 5/4 {e'8 f'16\glissando  g'16 f'16} \tuplet 3/2 {e'8 g8 c'8~^\markup{\left-align \small vib}} 
      | c'2~ c'8 des'16\glissando  es'16 es'8 es'8 
      \bar "||" \tuplet 3/2 {es'4 des'8} f'8 c'8~^\markup{\left-align \small vib} c'4. bes8 
      | \tuplet 3/2 {aes4^\markup{\left-align \small vib} des'8\glissando } es'16 f'8 es'16 fis'16 gis'8.~^\markup{\left-align \small vib} gis'8 ges'8 
      | f'16 aes8.~^\markup{\left-align \small vib} aes8 des'16 f'16 es'4~^\markup{\left-align \small vib} es'16 d'16 des'16 c'16~ 
      | c'8 aes2..~^\markup{\left-align \small vib} 
      | aes8 cis8 \tuplet 3/2 {dis4 e8} \tuplet 3/2 {fis8\glissando  gis4~^\markup{\left-align \small vib}} \tuplet 3/2 {gis8 fis8 dis'8~} 
      | \tuplet 10/8 {dis'16. dis'16. dis'16. dis'32~^\markup{\left-align \small vib}} dis'8. ais16 des'4.^\markup{\left-align \small vib} b8 
      | e4~^\markup{\left-align \small vib} \tuplet 5/4 {e16 gis16 ais16\glissando  b16 gis16} ais8.^\markup{\left-align \small vib} gis16 fis4~^\markup{\left-align \small vib} 
      | \tuplet 9/8 {fis8~ fis32 dis'16. es'32~} es'16 d'16 d'16 des'16 a'4^\markup{\left-align \small vib} \tuplet 6/4 {g'8 a'16 b'16 d''16 c''16~} 
      \bar "||" c''32 b'32 a'16. g'32 ges'32 f'32~^\markup{\left-align \small vib} f'2~ \tuplet 3/2 {f'8 e'8 d'8} 
      | dis'16\glissando  e'8^\markup{\left-align \small vib} d'16~ d'32 c'16 bes16 aes32 bes32 aes32 g4~^\markup{\left-align \small vib} g16 f16 dis16 e16 
      | g4.^\markup{\left-align \small vib} \tuplet 6/4 {e'8 b16~^\markup{\left-align \small vib}} b4. d'8 
      | b8^\markup{\left-align \small vib} c'8 e'16. g'16. a'32 b'4.^\markup{\left-align \small vib} bes'16 a'32 gis'32 ges'32 
      | f'4.^\markup{\left-align \small vib} a'8 c''4^\markup{\left-align \small vib} \tuplet 5/4 {b'16 a'16 aes'16 b'16 aes'16} 
      | \tuplet 6/4 {ges'16 f'16 e'16 d'16 f'16 e'16} f'32 e'32 d'32 b16 f32 fis32 a32 \tuplet 6/4 {gis16 b16 d'16 f'16 e'8~^\markup{\left-align \small vib}} e'8 d'32 e'32 d'32 c'32 
      | a4.^\markup{\left-align \small vib} e'16 f'32 g'32~^\markup{\left-align \small vib} \tuplet 12/8 {g'4~ g'32 f'32 g'32 f'32} e'8 g8 
      | c'8^\markup{\left-align \small vib} r8 r2.\bar  ".."
    }
    >>
>>    
}
