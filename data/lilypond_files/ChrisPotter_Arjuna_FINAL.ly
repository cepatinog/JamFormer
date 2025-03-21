\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Arjuna"
  composer = "Chris Potter"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key d \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | d1
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

      \tempo 4 = 118
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r2. r8 g'16 f'16 
      | g'8. g'16~ g'8 g'4 g'8 g'8. g'16~ 
      | g'8 g'8 g'4 g'4 r8 g'16 f'16 
      | \tuplet 3/2 {g'4 g'8~} g'8 g'4 g'8 g'8. g'16~ 
      | g'8 g'4 g'8 g'4 r8 gis'16 fis'16 
      | \tuplet 3/2 {g'4 g'8~} g'8 g'4 g'8 \tuplet 3/2 {gis'4 g'8~} 
      | g'8 g'4 g'8 g'4 r8 gis'16 fis'16 
      | g'8. fis'16~ fis'8 f'16 d'16~ d'8 g'8 fis'16 f'8 d'16~ 
      | d'8 f'16 fis'16~ fis'8 g'8 gis'16 a'8 g'16~ g'16 fis'16 g'16 fis'16~ 
      | \tuplet 3/2 {fis'8 f'8 fis'8} g'16 f'8 fis'16~ fis'16 f'16 d'16 f'16~ f'16 f'8 fis'16 
      | g'16 f'8 fis'16~ fis'16 f'16 d'16 f'16~ f'16 f'8 fis'16 g'16 f'8 fis'16~ 
      | fis'16 f'16 d'16 f'16~ f'16 f'8 fis'16~ fis'16 g'8 gis'16 a'8 g'16 gis'16~ 
      | gis'16 g'16 fis'16 g'16~ g'16 fis'16 f'16 fis'16~ fis'16 f'16 d'16 f'16~ f'16 d'8 cis'16 
      | c'16 cis'8 d'16~ d'16 c'16 cis'16 c'16~ c'16 d'8 c'16 cis'16 d'8 c'16~ 
      | c'16 cis'16 c'16 d'16~ d'16 cis'8 d'16 cis'16 c'8 cis'16~ cis'16 c'16 cis'16 c'16~ 
      | c'16 cis'8 d'16 cis'16 f'8 d'16~ d'16 cis'16 d'16 cis'16~ cis'16 c'8 cis'16 
      | c'16 b16 r8 r8 c'32 cis'32 d'32 f'32 \tuplet 5/4 {cis'16 d'16 f'16 fis'16 f'16} cis'32 d'32 f'32 d'16 c'32 cis'32 c'32~ 
      | c'8 d'8~^\markup{\left-align \small vib} d'16 c'32 cis'32 d'32 f'32 c'32 d'32 dis'4 r4 
      | \tuplet 6/4 {r8 c'16 cis'16 d'16 c'16} \tuplet 7/8 {cis'32 d'32 f'32 cis'32 d'32 f'32 cis'32} d'16 f'8.~^\markup{\left-align \small vib} \tuplet 5/4 {f'16 d'16 cis'16 f'16 c'16} 
      | \tuplet 6/4 {cis'16 d'16 f'16 d'16 f'16\bendAfter #+4  g'16} f'32 fis'32 g'32 g'16 gis'32 fis'32 g'32 f'16 g'16 gis'16 cis''16 c''32 b'16 gis'16 cis''16 c''32~ 
      | \tuplet 6/4 {c''16 gis'16 e'16\bendAfter #+4  fis'16 f'16 c'16} \tuplet 6/4 {cis'16 d'16 fis'16 f'16 c'16 cis'16} \tuplet 7/8 {d'32 e'16 d'32 cis'32 b32 a,32~} a,8 r8 
      | r4 \tuplet 7/8 {r16 c'32 cis'32 d'32 f'32 fis'32} \tuplet 6/4 {g'16 f'16 fis'16 f'16 d'16 f'16} \tuplet 6/4 {c'16 cis'16 d'16 c'16 cis'16 c'16} 
      | \tuplet 10/8 {a16 gis32 a16 g16 f32 g32 gis32} \tuplet 6/4 {f8 c16 cis16 d16 a,16~} a,8 r8 r4 
      | r4 \tuplet 6/4 {r16 c'16 cis'16 d'16 c'16 c'16} \tuplet 6/4 {gis16 c'16 gis16 a16 g16 f16} \tuplet 6/4 {a16 f16 d16 f8 c16} 
      | \tuplet 6/4 {cis16 e16 d16 f16 d16 f16} g16 fis16 a32 ais32 d'32 a32 \tuplet 9/8 {gis32 d'32 b32 c'32 cis'32 d'32 dis'32 d'32 e'32} f'16 g'32 f'32 d'16 c'32 a32~ 
      | a4~ \tuplet 5/4 {a16 cis'16 d'16 f'16 d'16} cis'16 a16 r8 r4 
      | r4 g'16 gis'16 fis'16 g'16~ g'16 fis'16 g'16 gis'16 \tuplet 3/2 {fis'8 g'8\bendAfter #+4  gis'8} 
      | r2 g'8. g'16 \tuplet 3/2 {gis'8 fis'8 g'8} 
      | r2 fis'16 g'16 fis'16 g'16 gis'16 fis'16 g'16 gis'16 
      | r2 g'16 gis'16 fis'16 g'16 gis'16 fis'16 g'16 gis'16 
      | fis'16 gis'16 fis'16 g'16 gis'16 fis'16 g'16 gis'16 g'16 gis'16 fis'16 g'16 gis'16 fis'16 g'16 gis'16 
      | r2 g'16 gis'16 fis'16 g'16 gis'16 fis'16 g'16 gis'16 
      | r2 g'16 gis'16 fis'16 g'16 gis'16 fis'16 g'16 gis'16 
      | r2 g'16 gis'16 fis'16 g'16 gis'16 fis'16 g'16 gis'16 
      | fis'16 g'16 gis'16 fis'16 g'16 gis'16 fis'4 cis''8 \tuplet 3/2 {b'8 c''8 a'8} 
      | r1 
      | r8 e''2..~^\markup{\left-align \small vib} 
      | e''4. \tuplet 6/4 {d''8 f''16~} \tuplet 6/4 {f''16 g''16 e''8 d''16 b'16} a'16 b'16 g'16 a'16 
      | e'16 g'16 d'16 e'16 b16 cis'16 a16 b16 g16 a16 e16 g16 d8 r8 
      | r2. r16 g''8 a''16~ 
      | \tuplet 6/4 {a''16 e''16 g''16\bendAfter #-4  fis''16 d''16 e''16} b'16 d''16 a'16 b'16 g'32 gis'32 e'16 g'16 d'32 e'32 b16 d'16 a16 b16 
      | \tuplet 6/4 {g16 a16 e16 g8 d16} e16 b,16 d16 a,16~ a,16 b,8 d16~ d8 e8 
      | r1 
      | \tuplet 5/4 {r16 gis'16 b'16 cis''16 gis'16} \tuplet 6/4 {b'16 fis'16 e'16 gis'16 fis'8} \tuplet 6/4 {cis'16 fis'16 dis'16 b8 cis'16} gis16 b16 fis16 e16 
      | fis16 cis16 b16 e16 \tuplet 6/4 {fis16 e16 cis16 b16 fis8} e16 fis16 cis16 b16~ \tuplet 6/4 {b16 e16 gis16 fis16 dis16 b16} 
      | \tuplet 6/4 {fis8 e16 gis16 fis16 e16} b16 fis16 e16 gis16 e16 b16 fis16 e16 gis16 fis16 f16 b16~ 
      | \tuplet 3/2 {b8 cis'8 b8} cis'4 r2 
      | r2. \tuplet 5/4 {r16 d'16 f'16 g'16 a'16} 
      | \tuplet 6/4 {g'16 a'16 f'16 c''8.~} \tuplet 6/4 {c''8 d'16 f'16 g'16 a'16} g'16 a'16 f'16 d''16~ \tuplet 6/4 {d''8 d'16 e'16 g'16 a'16~} 
      | \tuplet 5/4 {a'16 d'16 f'16 g'16 a'16~} \tuplet 6/4 {a'16 d'16 f'16 g'16 a'8~} \tuplet 5/4 {a'16 d'16 f'16 g'16 a'16} \tuplet 6/4 {g'16 a'16 f'8 cis''16\glissando  d''16~^\markup{\left-align \small vib}} 
      | d''8 r8 r4 \tuplet 5/4 {g''16 fis''16 e''16 dis''16 ais'16} g'16 dis'16 c''16 b'16 
      | ais'16 fis'16 gis'8 fis'16 a'16 f'16 e'16 dis'4 r8. gis'16 
      | f'16 g'16 a'16 f'16 \tuplet 6/4 {g'8 c''16 a'16 g'16 f'16} g'16 a'16 d'16 f'16 a'16 g'16 f'16 c''16 
      | \tuplet 6/4 {fis'16 g'16 a'16 f'8 c'16} \tuplet 6/4 {d'8 g'16 f'16 d'16 c''16} g'16 c'16 d'16 g'16 f'16 d'16 a'8 
      | r1 
      | r2. \tuplet 6/4 {r8 d'16 f'16 g'16 a'16} 
      | g'16 f'16 d'16 c''16 \tuplet 6/4 {c'16 d'16 a'16 g'8 f'16} d'16 cis''16 b'16 cis'16 \tuplet 6/4 {d'16 f'16 b'8 f'16 fis'16} 
      | ais'16 gis'16 fis'16 cis'16 d'16 a'16 gis'16 g'16 fis'16 a'8 a'16 \tuplet 3/2 {gis'8 g'8 c''8} 
      | r1 
      | r1 
      | e''16 f''16 fis''16 g''16\glissando  \tuplet 5/4 {a''16 fis''16 d''16 dis''16 e''16} \tuplet 5/4 {g''16 e''16 f''16 a'16 b'16} c''16 d''16 c''16 gis'16 
      | a'16 ais'16 cis''16 ais'16 cis'16. dis'16 e'16 g'32~ \tuplet 6/4 {g'16 e'16 ais8 b16 c'16} dis'16 c'16 gis16 a16 
      | ais16 b16 ais16 f16 fis8 r8 r2 
      | r1 
      | \tuplet 5/4 {g'16 gis'16 b'16 gis'16 g'16} \tuplet 6/4 {f'16 fis'16 gis'16 fis'16 f'16 dis'16} \tuplet 7/8 {e'32 fis'32 d'32 dis'32 f'32 dis'32 d'32} \tuplet 6/4 {cis'16 c'16 b16 d'16 b16 b16~} 
      | \tuplet 6/4 {b16 a16 gis16 b16 gis16 b16} \tuplet 6/4 {g16 fis16 a16 fis16 e16 f16} e32 f32 fis32 f32 dis32 f32 dis32 d32 \tuplet 6/4 {cis16 c16 b,16 ais,16 b,16 a,16} 
      | r1 
      | r2 g'16 gis'16 a'16 gis'16 g'16 fis'16 f'16 d'16 
      | b16 c'16 c'16 d'16~ d'16 e'8 fis'16~ fis'8 d'4 c'16 c'16~ 
      | c'16 d'8 e'16 fis'4 r8 d'16 e'16 fis'16 g'16 fis'16 e'16 
      | r4 r8 a'16\glissando  b'16~ b'2~ 
      | b'8. a'16 b'16 c''16 b'8~ b'8. a'32 b'32 \tuplet 6/4 {c''16 b'16 fis'16 b'16 a'16 b'16} 
      | r2 r16. b32 e'32 fis'32 a'32 b'32 c''32 b'32 fis'32 e'32 fis'32 b'32 a'16 
      | b'32 a'32 b'32 a'32 fis'32 b'16 b'32 \tuplet 7/8 {a'32 b'32 c''32 b'32 a'32 b'32 a'32} \tuplet 10/8 {b'32 a'16 c'16 e'16 a'32 b'32 cis''32} \tuplet 7/8 {b'32 cis''32 b'32 cis''32 b'32 a'32 b'32} 
      | \tuplet 10/8 {a'32 fis'16. e'32 a'32 fis'32 e'32 a32 fis32} b16 fis'32 e'32 fis'32 a'32 c''32 b'32 \tuplet 9/8 {cis''32 b'32 cis''32 b'32 cis''32 b'32 cis''32 b'32 cis''32} b'32 cis''32 b'32 cis''32 b'32 c''32 b'32 a'32 
      | \tuplet 3/2 {b'8 e''16 r8.} r4 r16 e''16 b'16 fis'16 e'16 d'16 b16 fis16 
      | e16 fis32 g32 fis32 b32 d'16 e'16 fis'16 b'16 d''16 \tuplet 3/2 {e''8 fis''8 e''8} fis''8 e''16 fis''16~ 
      | fis''16 e''16 fis''8 \tuplet 3/2 {e''8 fis''8 e''8} fis''8 fis''16 fis''16~ \tuplet 3/2 {fis''8 e''8 fis''8~} 
      | fis''4~ \tuplet 5/4 {fis''16 e16 fis16 b16 d'16} a16 b16 e'16 fis'16 a'16 b'16 d''16 e''16 
      | e''16 fis''16 e''16 e''16 fis''16 e''16 e''16 fis''16 e''16 fis''16 e''16 e''16 e''16 fis''16 e''16 e''16 
      | fis''16 e''16 fis''8~ fis''4~ \tuplet 6/4 {fis''8 e16 fis16 b16 d'16} a16 b16 e16 fis16 
      | a16 fis16 b16 a16 e'16 b16 a16 fis'16 \tuplet 5/4 {e'16 a'16 gis'16 a'16 e'16} b'16 e'16 fis'16 a'16 
      | \tuplet 5/4 {dis''16 f''16\glissando  fis''16 b''16 e''16} \tuplet 3/2 {fis''8 e''8 fis''8~} fis''16 e''16 fis''16 a''16 e''16 fis''16 e''16 fis''16~ 
      | fis''8 e''16 fis''16 a''16 e''16 fis''16 e''16 fis''8. e''16 fis''16 a''8 a''16\glissando  
      | b''8 fis''8 fis''4~ \tuplet 5/4 {fis''8 e''16 fis''16 a''16} e''16 fis''16 a''16 ais''16\glissando  
      | b''8 fis''8 fis''4~ \tuplet 5/4 {fis''8 e''16 fis''16 a''16~} \tuplet 6/4 {a''16 e''16 fis''8 a''16 b''16~} 
      | \tuplet 6/4 {b''8 e''16 f''16 fis''16 a''16} e''16 fis''16 a''16 b''16~ b''16 e''16 fis''16 a''16 e''16 fis''16 a''16 b''16~ 
      | b''8\bendAfter #-4  fis''8 fis''8 fis''8~ \tuplet 5/4 {fis''8 a''16 fis''16 e''16} a''16 fis''16 dis''16 cis''16~^\markup{\left-align \small vib} 
      | cis''8 b'8 b'4~^\markup{\left-align \small vib} b'16 ais''16 gis''16 fis''16 \tuplet 7/8 {a''32\glissando  b''32 gis''32 fis''32 f''32 e''32 cis''32~} 
      | cis''8 b'8 b'4~^\markup{\left-align \small vib} b'16 b'16 cis''16 e''16 \tuplet 6/4 {fis''8 a''16 fis''16 a''16 b''16~} 
      | b''8 a''8 fis''8. fis''16~^\markup{\left-align \small vib} fis''8 e''8 cis''8. cis''16~^\markup{\left-align \small vib} 
      | cis''8 b'8 a'4 b'16 a'16 fis'16 a'16 e'16 a'16 fis'16 d'16~^\markup{\left-align \small vib} 
      | d'4~ d'16 cis''16 c''16 a'16 gis'16 c''16 g'16 fis'16 a'16 f'16 d'16 g'16 
      | \tuplet 6/4 {fis'8 cis'16 gis16\glissando  a16 fis16} b16 cis'16 e'16 fis'16 gis'16 b'16 d''16 dis''16~ dis''32 d''16 e''16 dis''32 fis''32 dis''32 
      | \tuplet 6/4 {gis'8 e'16 fis'16 ais'16 dis''16} cis''16 gis'16 fis'16 b'16 dis'16 fis'16 ais'16 gis'16 \tuplet 6/4 {fis'8 cis'16 ais8 fis16} 
      | \tuplet 3/2 {gis8 ais16 r8.} r8. gis16 ais16 cis'16 fis'16 gis'16 ais'16 fis'16 gis'16 cis''16 
      | dis''16 e''16 f''16 e''16 \tuplet 5/4 {dis''16 cis''16 b'16 gis'16 ais'16} b'16 c''16 b'16 ais'16 fis'16 d'16 f'16 fis'16 
      | g'16 fis'16 f'16 d'16 a16 cis'16 d'16 dis'16 d'16 cis'16 ais16 f16 dis4 
      | r16 d16 cis16 fis16~ fis16 d16 cis16 g16 d16 cis16 gis8~ gis8~ gis32 d32 cis32 d32 
      | \tuplet 6/4 {f16 d16 f16 fis16 a16 f16} \tuplet 7/8 {fis32 ais32 f32 dis32 d'32 ais32 dis'32} c'32 cis'32 d'32 f'32 d'32 f'32 g'32 d''32 cis''16 c''16 f''8 
      | r4 \tuplet 6/4 {r16 d16 cis16 f16 cis16 d16} \tuplet 6/4 {f16 g16 c'16 d'16 fis'16 d''16} cis''16 c''16 f''8~ 
      | \tuplet 6/4 {f''4 cis16 d16} \tuplet 10/8 {g8.. cis32 d32 e32} \tuplet 9/8 {g32 f16. fis32 g32 gis32 ais32 d'32~} \tuplet 7/8 {d'32 b32 e'32 c'32 cis'32 d'32 g'32} 
      | \tuplet 7/8 {e'32 fis'32 ais'32 gis'32 ais'32 d''32 c''32~} c''16 f''8 cis'16 d'32 g'32 fis'32 d'32 f'32 d'32 cis'32 c'32 ais32 g32 a16 f32 d32 g32 e32 
      | fis16 ais8. \tuplet 6/4 {d16 g8 fis16 ais16 d'16~} \tuplet 6/4 {d'16 ais16 f16 ais16 d'16 c'16} \tuplet 6/4 {g'16 d''16 cis''16 c''16 f''8~} 
      | f''8. d'16 cis'32 g'32 fis'32 cis'16 fis'32 d'32 cis'32 \tuplet 7/8 {c'32 ais32 g32 f32 a32 cis'32 d'32} fis'32 a'32 fis'32 ais'32 fis'32 cis'32 fis'16 
      | \tuplet 9/8 {d'16 ais32 fis32 a32 b32 cis'32 d'32 g'32} a'16 ais'32 c''32 g'32 cis'32 ais32 fis32~ \tuplet 6/4 {fis16 ais16 cis'16 g'16 c''16 d''16} \tuplet 3/2 {c''8 fis''8 g''8~} 
      | g''4 gis''8 cis''4 fis''16 f''16 e''16 cis''16 c''16 b'16 
      | ais'16 a'16 gis'16 fis'16 f'16 fis'16 a'16 fis'16 f'16 e'16 dis'16 cis'16 a16 fis16 dis16 cis16 
      | d4 r8 c8 \tuplet 3/2 {d8 e16 r8.} r8 e8~ 
      | e8 fis8 e8 d8 c8 r8 r8 d8~ 
      | \tuplet 3/2 {d8 e8 fis8~} fis16 g8 a16~ a16 b8 c'16~ c'16 gis8 b16~ 
      | \tuplet 3/2 {b8 a8 gis8~} gis16 a8 g16~ g16 fis8 e16~ e8 d8~ 
      | d8. b'16 c''8 b'8~ b'8.\bendAfter #-4  b'16~^\markup{\left-align \small vib} b'8 a'8~ 
      | a'8.\bendAfter #-4  a'16~^\markup{\left-align \small vib} a'8 g'8~ g'8.\bendAfter #-4  g'16~^\markup{\left-align \small vib} g'8 r8 
      | r8. fis'16~ fis'8 g'16 e'16~ e'8.\bendAfter #-4  e'16~^\markup{\left-align \small vib} e'8 d'8~ 
      | d'16 d'16 e'16 g'16 fis'16 g'16 a'16 b'16 c''4 r4\bar  ".."
    }
    >>
>>    
}
