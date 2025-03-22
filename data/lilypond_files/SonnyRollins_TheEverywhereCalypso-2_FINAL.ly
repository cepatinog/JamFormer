\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "The Everywhere Calypso (Solo 2)"
  composer = "Sonny Rollins"
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
      | r1 
      | c1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1 | f1 | g1:7 | c1 | a1:7 | d1:min7 | g1:7 | c1 
      | s1|
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

      \tempo 4 = 197
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r8 e'8 g'8 c''8 \tuplet 6/4 {a'8. g'8 f'16~} f'8 e'16 d'16~ 
      \bar "||" \mark \default d'8 c'8 e'8 d'8 c'4 g8 e8 
      | f4 a8 c'8 f'8 ges'8 a'8 g'8~ 
      | g'8 b'8 d''8 c''8~ \tuplet 3/2 {c''8 b'8 a'8~} \tuplet 6/4 {a'8 g'8. g'16~} 
      | g'8 g'8 fis'8 a'8 g'4 c''8 c''8 
      | b'8 a'8~^\markup{\left-align \small vib} a'4. g'8 f'8 e'8 
      | g'4. f'8~ f'8. a'16~ a'8 d''8 
      | b'4. a'8 g'4^\markup{\left-align \small vib} r4 
      | r8. g'16~ g'8 d'8 \tuplet 3/2 {b'4 d''8~} d''8 c''8 
      \bar "||" \mark \default b'8 a'8 g'2~^\markup{\left-align \small vib} g'8 d'8 
      | b'8 d''8~ \tuplet 6/4 {d''8 c''8. a'16~} a'8 f'4 a'8 
      | d''8 b'8 a'8 g'8~^\markup{\left-align \small vib} g'2 
      | r4 e'8 g'4 cis''8 \tuplet 3/2 {a'4 g'8~} 
      | g'8 f'8 e'8 d'8 \tuplet 3/2 {cis'4 d'8~} d'8 e'8 
      | f'8 d'4 a'8~ a'16 d''8 b'16~ b'8 a'8 
      | g'8 e'8~ e'16 a'8 g'16~ g'8 f'4 e'8~ 
      | e'8 g'8 c''4. e''8~ e''16 b'8 d''16~ 
      \bar "||" \mark \default d''8 c''8 a'8 g'4.^\markup{\left-align \small vib} r4 
      | r8 g'8 f'4 a'8 c''8 f''8 e''8~ 
      | e''16 d''8 c''16~ c''8 b'8 d''4~^\markup{\left-align \small vib} \tuplet 3/2 {d''8 c''8 b'8~} 
      | b'8 a'8 g'16 a'16 g'16 fis'16~ fis'16 a'8 g'16~ g'8 e'8 
      | cis''8 bes'16\bendAfter #+4  a'16 bes'8 a'8~ a'16 g'8 f'16~ f'8 e'8 
      | d'8 g'8 e'8 f'8 a'8. d''16~ d''8 b'8 
      | \tuplet 3/2 {c''4 b'8~} b'8 a'8 g'4 f'8 e'8 
      | r4 \tuplet 6/4 {r8 g'8. a'16~} a'4 e'4 
      \bar "||" \mark \default g'8. e'16~ e'8 c'4 g4. 
      | r4 a'2.~ 
      | a'1~ 
      | a'8 g'8 c''8 e''8 b'8 d''8 c''8 ais'8 
      | cis''8 bes'8 a'8 g'8 f'8 e'8 d'8 cis'8 
      | e'8 cis'8 d'8 f'8 a'8 f'8 d''8 g'16 a'16 
      | b'8 b'8 b'8 d''8 b'8 c''8 b'8 a'8 
      | g'8 a'8 g'8 e'8 g'4 a'8 r8 
      \bar "||" \mark \default r4 r8 g'8 g'4 g'8 f'8~ 
      | f'8 f'8 g'8 f'4 g'8 a'8 fis'8 
      | g'8. e'16~ e'8 f'4 f'8 e'8 d'8 
      | c'4 b8 a4 g8 f4 
      | \tuplet 3/2 {e4 d8~} d8 cis8 e4 cis8 d8~ 
      | d8 f4 a8 a4 g4 
      | r2 r8 fis'8 g'4~ 
      | g'1~ 
      \bar "||" \mark \default g'2. e'8 c''8 
      | a'16 b'16 a'16 f'16~ f'8 c'8 \tuplet 5/4 {a'16 bes'16 a'8 f'16~} f'8 c'8 
      | b'16 c''16 b'8 g'8 c''8 a'16 bes'16 a'8 f'8 a'8 
      | g'16 a'16 g'16 e'16~ e'8 c'16 g16~ \tuplet 3/2 {g8 c'8 e'8~} e'16 g'8 cis'16~ 
      | cis'8 e'8 bes8 r8 r2 
      | r8 a8 cis'8 d'8 e'8 f'8 e'8 d'8 
      | c'8 d'8 c'8 a8 b8 a8 g8 f8 
      | e8 g8 c'8 g8 d'8 g8 g8 e'8~ 
      \bar "||" \mark \default e'8 g8 c'8 g8 d'8 g8 \tuplet 3/2 {e'4 g'8} 
      | f'8. g16~ g8 f'8~ f'16 f'8\glissando  g'16~ g'8 fis'8\glissando  
      | g'4^\markup{\left-align \small vib} g8 g8\glissando  dis'16 f'8. g8 g8 
      | \tuplet 3/2 {e'4 g8~} g8 d'8 g8 g16 e'16~ e'8 g8 
      | cis'8 g8 d'8 g8 e'4 r4 
      | r8 f'8 e'8 f'8 d'8 e'8 f'8 a'16 g'16~ 
      | g'8 g8 c'8 g'8 f'8 d'8 b8 g8 
      | c'8 g8 e'8 c'8 g'4^\markup{\left-align \small vib} e'8 c'8 
      \bar "||" \mark \default g'8 e'8 c''8 g'8 e'4^\markup{\left-align \small vib} c'8 a8 
      | f'8 c'8 a'2^\markup{\left-align \small vib} g'8 r8 
      | r4 r8 g'8~ g'2~ 
      | g'4~ \tuplet 6/4 {g'8 e'8. g'16~} g'8 e'8 g'8 e'8 
      | g'8 a'8 b'8 d''16 cis''16~ cis''16 b'8 a'16~ a'8 g'8 
      | f'8 e'8 d'8 cis'8 d'8 e'8 f'8 a'8 
      | g'16 a'16 g'8 e'8 g'8~ g'16 f'16 g'16 f'16 d'8 f'8 
      | e'16 f'16 e'8 c'8 e'8 g'4^\markup{\left-align \small vib} e'8 a'8 
      \bar "||" \mark \default g'2.^\markup{\left-align \small vib} e'8\bendAfter #-4  dis'8 
      | r4 r8 f'4 d'8 f'4~^\markup{\left-align \small vib} 
      | f'4. d'8 \tuplet 3/2 {b4 b8~} b8 d'8~ 
      | d'8 c'4 e'4 c'8 g4~^\markup{\left-align \small vib} 
      | g8 r8 r4 cis8 e8 a8 g8~ 
      | g8 f4 a8 d'8 f'8~ \tuplet 3/2 {f'8 a'8 fis'8} 
      | g'8 e'8~ \tuplet 6/4 {e'8 c'8. f'16~} f'8 d'8 \tuplet 3/2 {b4 c'8~^\markup{\left-align \small vib}} 
      | c'4 g4 e4 g4 
      \bar "||" \mark \default e'4.\bendAfter #-4  dis'8 r4 r8 f'8 
      | d'8 d'4 d'8 e'8 e'8 f'4 
      | g'4\bendAfter #+4  ges'4 f'4. f'8 
      | e'8. d'16~ d'8 c'4 d'8 e'4 
      | des'4..\bendAfter #-4  c'16 r4 r8 e'8 
      | \tuplet 3/2 {f'4 e'8~} e'8 d'8 c'8 d'4 e'8 
      | b8 a4 g8 \tuplet 3/2 {f4 f8~} f8 f8 
      | e8. g16~ g8 c'8 d'4 c'4~ 
      \bar "||" \mark \default c'16 e'8 d'16~ d'8 c'8 d'8. e'16~ e'8 c'8~^\markup{\left-align \small vib} 
      | c'4. g8 c'4 e'8 r8 
      | r4 r8 f'8 f'8 d'8 b8 g8 
      | c'8 g8 c'8 e'8 \tuplet 3/2 {g'4 e'8} cis'8 g'16 f'16~ 
      | f'8 e'8 d'8 c'8 cis'8 bes8 a8 g8 
      | e8 f8 g8 a8 d4 r4 
      | r4 cis8 g16 a16 c8 a8 g16 b8 c'16 
      | \tuplet 3/2 {d'8 e'8 c'8} g8 f8 e8 f4 r8 
      \bar "||" \mark \default r8. e16 \tuplet 3/2 {g8 c'8 d'8} \tuplet 3/2 {e'8 f'8 fis'8} \tuplet 3/2 {g'4 e'8} 
      | f'8 a'8~ a'8. b'16\glissando  c''8 a'8 c''8 a'8 
      | f'8 d'8 a8 g8 b8 c'8 d'8 e'8 
      | c'8 d'8 e'8 f'8 g'4 e'8 g'8 
      | g'8 a'8\glissando  ais'8 g'8 fis'8 cis'8 ais8 fis8 
      | e'8 f'4 g'8 e'8 c'8 a8 f8 
      | \tuplet 3/2 {b4 a8} g8 e8 f8 d'8 b8 g8 
      | c'8 d'8 \tuplet 3/2 {e'4 g'8} r2 
      \bar "||" \mark \default a'8 g'8 a'8 g'8 e'8 c'8 ais8 f8 
      | a8 c'8 d'8 e'8 \tuplet 3/2 {g'4 f'8} c'8 d'8 
      | e'8 c'8 g8 e8 f8 g16 a16 b8 d'8 
      | c'8 g8 c'8 d'8 e'8 b8 c'8 e'8 
      | b8 e'8 ais8 cis'8 g8 ais8 e8 ais8 
      | bes8 a8 a8 g8~ g16 g8 f16 f8 e8 
      | \tuplet 3/2 {e4 d8} r4 r8 fis'16 g'16~^\markup{\left-align \small vib} g'4~ 
      | g'4. e'8 a'8 fis'8 \tuplet 3/2 {g'4 f'8} 
      \bar "||" \mark \default \tuplet 3/2 {e'4 g'8} c''8. g'16 ais'8 g'8 \tuplet 3/2 {aes'8 g'8 a'8~} 
      | a'8 a'8 f'8 e'8 g'8 f'8 c'8 g8 
      | e'8 g'8 g'8 e'8 f'8 d'8 b8 g8 
      | c'8 g8 c'8 e'8 g'4^\markup{\left-align \small vib} r4 
      | r8 g8 cis'8 g'8 f'8 e'8 cis'8 g8 
      | d'8 bes8 d'8 e'8 f'8 e'8 d'8 c'8 
      | b8 g'8 \tuplet 3/2 {g4 d'8} f'8 ges'8 f'4 
      | e'8 c'8 \tuplet 3/2 {g4 e8} f4 d'4 
      \bar "||" \mark \default r4 r8 gis'8 a'4 g'4 
      | c''4 c'4 dis'8 e'4 f'8~ 
      | f'8 fis'4 g'4 g8 b8 f'8 
      | e'8 c'8 g8 f8 c'8 d'8 e'8 g'8 
      | cis'8 e'8 \tuplet 3/2 {g'4 bes'8} a'4 dis'8 e'8 
      | \tuplet 3/2 {g'4 e'8} f'8 c''8 b'16 e'8 d'16~ d'8 c'8 
      | b8 d'8 \tuplet 3/2 {a4 g8} f4 e'8 f'8 
      | e'8 c'8 g8 e8 f4 g'8 e'8 
      \bar "||" \mark \default g'4 a'4 fis'16 g'8. e'8 c'8 
      | e'8 f'4 e'8\bendAfter #-4  es'4 r4 
      | r8 c'8 a4 g'4 a16 c'8 a16 
      | \tuplet 5/4 {e'4 d'16} e'8 e'8 c'8 g8~ g16 e16 fis16 a16 
      | \tuplet 3/2 {cis'4 a8} \tuplet 3/2 {cis'4 gis'8} e'8 cis'8 a8 e8 
      | a8 r8 r8 d'4 a8 f'4~^\markup{\left-align \small vib} 
      | f'8 d'8 \tuplet 3/2 {c'4 a8} b8 a8 g8 a8 
      | e8 g8 c8 f8 e'4 g'4 
      \bar "||" \mark \default c'4. c'8 e'4 g'4 
      | c''4^\markup{\left-align \small vib} \tuplet 3/2 {a'4 f'8~} f'8 d'8 a'8 c''8~ 
      | \tuplet 6/4 {c''16 b'8. ais'16 b'16} g'8 b'8 a'4^\markup{\left-align \small vib} f'8 a'8 
      | g'16 a'16 g'8 e'8 c'16 g16~ g8 c'8 e'8 g'8 
      | ais'8 e'8 d'8 b8 cis'8 bes8 a8 g8 
      | f8 r8 r8 a'8~ a'2~ 
      | a'4 g'8 e'8 f'8 d'8 b8 g16 c'16 
      | r4 r8 g'8 c'4 c''4 
      \bar "||" \mark \default c''4 c''2.^\markup{\left-align \small vib} 
      | a'8\bendAfter #-4  g'8 r8. a'16~^\markup{\left-align \small vib} a'8. f'16 g'8 r8 
      | r8 g'4^\markup{\left-align \small vib} e'8 g'4~ g'16 e'8 e'16~ 
      | \tuplet 3/2 {e'8 c'8 e'8~} e'8 c'8 e'4^\markup{\left-align \small vib} c'8 r8 
      | r8 e16 g16 \tuplet 3/2 {ais8 e'8 a'8} g'16 gis'16 a'16 g'16~ g'16 dis'16 e'16 g'16 
      | f'8 r8 r8 g8 \tuplet 5/4 {bes16 c'16 d'16 e'16 f'16~} f'16 fis'16 g'8 
      | d'16 dis'16 e'16 c'16~ c'16 a16 g16 e16 g8 c16 d16 \tuplet 3/2 {dis8 e8 c8} 
      | \tuplet 3/2 {dis8 e8 g8} \tuplet 6/4 {ais16 c'8 a16 ais16 c'16} \tuplet 3/2 {cis'8 dis'8 e'8} \tuplet 3/2 {f'8 fis'8 g'8} 
      \bar "||" \mark \default d'16 dis'16 e'8 c'16 aes16 g16 b16 c'16 d'16 e'16 c'16 ais8 g8 
      | a8. f16 es8 g8 \tuplet 5/4 {c16 f16 g16 a16 c'16~} \tuplet 6/4 {c'8. f'16 g'16 a'16} 
      | \tuplet 3/2 {c''8 g'4~} g'16 a'16 d'16 dis'16~ dis'8 e'8 f'8 fis'8 
      | g'8 c''8~ \tuplet 3/2 {c''8 g'8 f'8} e'4^\markup{\left-align \small vib} c'8 r8 
      | r8 a8 \tuplet 3/2 {b8 cis'8 f'8} e'8 cis'8~ cis'16 ais8 f16 
      | a8 g8 f8 d8 \tuplet 3/2 {g4 a8} c'8 e'8 
      | b4 \tuplet 3/2 {b4 a8~} a8 b4 c'8 
      | r4 r8 e'4 e'8 e'4 
      \bar "||" \mark \default e'4 r2.\bar  ".."
    }
    >>
>>    
}
