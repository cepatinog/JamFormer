\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "St. Thomas"
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

      | c1:9 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | e1:min5-7 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7 | f2:maj fis2:dim | c2:/g g2:7 | c1:9 
      | c1:9 | e2:min7 a2:7 | d1:min7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | e1:min5-7 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7/e | f2 fis2:dim | c2:/g g2:7 | c1:9 
      | c1:9 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | s1 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7/e | f2 fis2:dim | c2:/g g2:7 | c1:9 
      | c1:9 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | e1:min5-7 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7/e | f2 fis2:dim | c2:/g g2:7 | c1:9 
      | c1:9 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 | s1 | e2:min7 a2:7 | d2:min7 g2:7 | c1:9 
      | e1:min5-7 | a1:9+ | d1:min7 | g1:7 | c2:9 c2:7/e | f2 fis2:dim | c2:/g g2:7 | c1:9 
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

      \tempo 4 = 207
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r4 r8 g8 c8 r8 r4 
      | r4 r8 g8 cis8 r8 r4 
      | r8 g8 d8 g8 r2 
      | r8 g8 d8 g8 c8 g8 d8 g8 
      | c8 r8 r4 r8 g8 d8 r8 
      | r8 g4 e4 g8 r4 
      | r8 g8 d4. g8 d8 g8 
      | c4. g8 d8 g8 d8 g8 
      \bar "||" c8 r8 r4 r8 g8 e8 g8 
      | b8 d'8 f'8 cis'8~ \tuplet 3/2 {cis'8 e'8 ais8} g8 gis8~ 
      | gis16 a8 f16~ \tuplet 3/2 {f8 d8 g8} e8 f8 a8 c'8 
      | \tuplet 3/2 {e'4 f8} a8 c'8~ c'16 dis'8 b16~ b16 gis8 fis16~ 
      | \tuplet 5/4 {fis16 g8. c16~} c8 r8 r8 f'8 e4~ 
      | e8 g4 f4 a8 fis8 r8 
      | r4 r8 g8 d8 r8 r8 g8 
      | c4. g4 g8 d8 g8 
      \bar "||" \mark \default c4. g8 c4. g8 
      | c8 r8 r8 g16 cis16~ cis8 r8 r4 
      | r8 g8 d8 r8 r8 g8 d8 g8 
      | c4. g8 f8 r8 r8 a8 
      | \tuplet 3/2 {g4 c8~} c4 a8\glissando  b8 \tuplet 3/2 {cis'4 f'8} 
      | d'8 dis'8 e'16 f'16 es'16 d'16 cis'8 bes8~ bes16 a8 g16~ 
      | g8 e8 \tuplet 3/2 {f8 a8 c'8} e'8 g8 b8 d'8 
      | \tuplet 3/2 {c'4 g8~} g16 e8 a16~^\markup{\left-align \small vib} a4. r8 
      \bar "||" r4 r8 g8 bes8 d'8 \tuplet 3/2 {f'4 d'8} 
      | e'8 d'8 cis'16 e'16 g'8 \tuplet 3/2 {c''4 bes'8~} bes'16 a'16 g'8 
      | gis'16 a'8 f'16~ f'16 e'8 d'16~ \tuplet 6/4 {d'16 g'16 bes'16 aes'16 g'16 ges'16} f'8 e'8~ 
      | e'16 d'8 c'16~ \tuplet 3/2 {c'8 b8 e'8} f'8 a'8~ a'16 g'8 f'16~ 
      | f'16 e'8 fis16 \tuplet 3/2 {g8 ais8 g8} \tuplet 3/2 {d'4 c'8~} c'16 bes8 gis16 
      | a8 c'8~ \tuplet 3/2 {c'8 d'8 e'8} g'8 f'8~ f'16 e'8 d'16~ 
      | d'16 c'8 a16~ a16 g8 f16~ \tuplet 3/2 {f8 e8 g8} d8 g8~ 
      | g8 c8 r4 r8 g8 b8 c'8 
      \bar "||" \mark \default f'8 e'8 \tuplet 3/2 {c'4 g8} b4 c'8 r8 
      | r4 r8 ais'8\glissando  b'4. a'8~ 
      | a'16 g'8 c'16~ c'8 r8 r2 
      | r4 c'16 d'16 f'16 g'16~ g'8 fis'8 g'4~ 
      | g'8 r8 r8. f'16~ f'8\glissando  fis'4 g'8 
      | r2 r16 c'8 g'16~ g'4 
      | gis'8.\glissando  a'16~ a'4 g'4 f'4 
      | e'8 r8 r2. 
      | r8. ais'16~ ais'8. e'16~ e'8. cis''16 e''4~ 
      | e''8 d''8 cis''4 r2 
      | r1 
      | cis''8\glissando  d''8 c''8 a'8 b'8 aes'8 g'8 f'8 
      | e'8 g'8 d'8 des'8 c'8 b8 bes8 gis8~ 
      | gis16 a8 f16 e8 d8 \tuplet 3/2 {gis4 fis8} g8 f8 
      | \tuplet 3/2 {e4 g8} a8 b8~ b16 d'8 b16 c'8 c'8 
      | b8 c'8 e'8 g'8 b'8 a'8 g'8 b8 
      \bar "||" \mark \default c'8. f'16~ \tuplet 3/2 {f'8 e'8 c'8} \tuplet 3/2 {a4 aes8~} aes16 g8 f16 
      | e8 d'8~ \tuplet 3/2 {d'8 b8 g8} cis'8 ais8~ \tuplet 3/2 {ais8 fis8 d8} 
      | c'8. a16~ a16 f8 a16 b4.^\markup{\left-align \small vib} a8 
      | \tuplet 3/2 {g4 e8~} e8 r8 r2 
      | r4 \tuplet 3/2 {fis'8 gis'8 b'8} \tuplet 3/2 {ais'8 aes'8 g'8} r4 
      | r4 r8 a'8\glissando  bes'4 a'8 e'8 
      | g'8 ges'8 \tuplet 3/2 {f'4 a8~} a16 e'8 f'16~ f'16 d'8 b16~ 
      | b16 c'8 g16~ g16 e8 g16~ g16 f8 g16\glissando  \tuplet 3/2 {gis4 fis8\glissando } 
      \bar "||" g8. e16~ e4 r4 r8 bes,8~ 
      | bes,8 a,4 gis8 a4 g4 
      | \tuplet 3/2 {e4 f8~} f8 c8 aes,2 
      | r2 r8 gis16 c'16~ c'8 f'8 
      | f'8 f'8 f'8 f'8~ f'16 e'8 c'16 r4 
      | r2 gis'8 a'16 aes'16~ aes'16 g'8 e'16~ 
      | \tuplet 3/2 {e'8 f'8 ges'8} \tuplet 3/2 {f'8 e'8 d'8~} d'16 c'8 g16~ g8 r8 
      | r1 
      \bar "||" \mark \default r8 d'8 b8 c'4 g'8 \tuplet 3/2 {b'4 a'8} 
      | g'8 f'8 e'8 d'8 \tuplet 3/2 {cis'8 e'8 g'8} \tuplet 3/2 {ais'4 gis'8} 
      | a'8 f'8 e'8 d'8 g'8. f'16~ \tuplet 3/2 {f'8 e'8 d'8} 
      | \tuplet 3/2 {c'4 d'8} \tuplet 3/2 {e'4 f'8} g'4 a'16 b'8. 
      | c''8. b'16~ b'8 a'8 r4 r8 fis'8\glissando  
      | \tuplet 3/2 {g'4 f'8} e'4 d'8. c'16~ c'8. g16~ 
      | \tuplet 3/2 {g8 dis'8\glissando  e'8~} e'8 f'8 e'2 
      | \tuplet 3/2 {e'4 g'8~} \tuplet 3/2 {g'8 c'8 d'8~} d'16 e'8 g16~ g8. ais16~ 
      \bar "||" ais4 r4 r8 aes16 bes16 d'8 a'8 
      | c''4 ais'8 f'16 cis'16 dis'4 e'8 r8 
      | r8. g16~ g16 aes8 g'16~ g'8 f'4 bes'8~ 
      | bes'8. gis'16~ gis'4 dis'8. b16~ b16 cis'8 g16 
      | c'4 f'8. c'16 e'8 c'8~ \tuplet 3/2 {c'8 bes8 gis8~} 
      | \tuplet 3/2 {gis8 a8 c'8~} \tuplet 3/2 {c'8 d'8 e'8} f'16 g'8 f'16 \tuplet 3/2 {c''4 aes'8} 
      | g'8 f'8 e'8 d'8 c'8 r8 r4 
      | r4 r8 gis'8\glissando  a'4 aes'8 g'8 
      \bar "||" \mark \default f'8 g'8 r2.\bar  ".."
    }
    >>
>>    
}
