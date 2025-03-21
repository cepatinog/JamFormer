\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Juju"
  composer = "Wayne Shorter"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 3/4
    \clef "treble_8"
    \key b \major
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
      
      | bes2.:775+ | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | s2. | s2. | a2.:7 | s2. | aes2.:maj | s2. | e2.:min7 | s2. 
      | f2.:maj | s2. | b2.:min7 | s2. | f2.:maj | s2. | b2.:min7 | s2. 
      | b2.:775+ | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:775+ | s2. | a2.:7 | s2. | aes2.:maj | s2. | e2.:min7 | s2. 
      | f2.:maj | s2. | b2.:min7 | s2. | f2.:maj | s2. | b2.:min7 | s2. 
      | b2.:775+ | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:775+ | s2. | a2.:7 | s2. | aes2.:maj | s2. | e2.:min7 | s2. 
      | f2.:maj | s2. | b2.:min7 | s2. | f2.:maj | s2. | b2.:min7 | s2. 
      | b2.:775+ | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:775+ | s2. | a2.:7 | s2. | aes2.:maj | s2. | e2.:min7 | s2. 
      | f2.:maj | s2. | b2.:min7 | s2. | f2.:maj | s2. | b2.:min7 | s2. 
      | b2.:775+ | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:775+ | s2. | a2.:7 | s2. | aes2.:maj | s2. | e2.:min7 | s2. 
      | f2.:maj | s2. | b2.:min7 | s2. | f2.:maj | s2. | b2.:min7 | s2. 
      | b2.:775+ | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:775+ | s2. | a2.:7 | s2. | aes2.:maj | s2. | e2.:min7 | s2. 
      | f2.:maj | s2. | b2.:min7 | s2. | f2.:maj | s2. | b2.:min7 | s2. 
      | b2.:775+ | s2. | s2. | s2. | s2. | s2. | s2. | s2. 
      | bes2.:775+ | s2. | a2.:7 | s2. | aes2.:maj | s2. | e2.:min7 | s2. 
      | f2.:maj | s2. | b2.:min7 | s2. | f2.:maj | s2. | b2.:min7 | s2. 
      | b2.:775+|
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


      \tempo 4 = 178
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r8. g'16\glissando  a'2~ 
      | a'2.~ 
      | a'8. fis'16 \tuplet 3/2 {a'4 g'8} r4 
      | r2. 
      | gis'16 a'8.~ a'2~ 
      | a'2.~ 
      | a'16 a'8 fis'16 \tuplet 3/2 {a'4 g'8~} g'4~ 
      | g'4 dis'4 r4 
      | r8 d'4 fis'4 ais'8~ 
      | ais'4. r8 r4 
      | r8 gis'8\glissando  \tuplet 3/2 {a'4 g'8~} g'8 e'8~ 
      | e'4 r2 
      | r8 a'16 ais'16~ ais'8 gis'4 dis'8~ 
      | dis'8 f'4 ais'4 gis'16\glissando  a'16~ 
      | a'4 g'8 e'8 r4 
      | r4 r8. ais'16~ ais'8 a'8~ 
      | a'8 a'8 a'4 \tuplet 3/2 {a'4 a'8~} 
      | a'8 a'8 a'4 a'8 g'8~ 
      | \tuplet 3/2 {g'8 a'8 g'8} \tuplet 3/2 {e'8 d'8 b8~} b16 a16 g16 e16 
      | r2. 
      | r4 a16 b16 d'16 e'16~ \tuplet 5/4 {e'16 g'16 a'16 b'16 d''16~} 
      | d''4~ \tuplet 6/4 {d''4~ d''16 a'16~} a'16 f'16 e'16 d'16 
      | \tuplet 6/4 {b8 a8 fis16 e16} \tuplet 6/4 {d16 e8. g16 b16~} b16 e'16 a'16 fis'16 
      | g'16 a'16 r8 r2 
      \bar "||" \mark \default \tuplet 3/2 {r8 b'8 b'8} a'8 b'8 \tuplet 3/2 {b'8 a'8 b'8} 
      | a'16 g'16 f'16 dis'16~ dis'16 a'16 g'16 f'16~ f'16 dis'16 b16 a16 
      | r4 r8. b'16 a'8 r8 
      | r4 r8. a'16\glissando  b'8. a'16 
      | b'4 a'16 b'16 a'16 g'16~ \tuplet 6/4 {g'16 f'16 dis'8 gis'16\glissando  a'16} 
      | \tuplet 3/2 {g'8 f'8 dis'8} \tuplet 3/2 {b8 a8 b8} a16 g16 f16 dis16~ 
      | dis16 b16 a16 g16~ \tuplet 6/4 {g16 f8 dis8 a16~} a16 g16 f16 dis16 
      | c8 b,4. r4 
      | r8. d16 dis16 fis16 g16 ais16 d'16 g'16 a'16 b'16 
      | d''16 c''16 b'16 ais'16~ ais'4 r4 
      | r8. g'16 a'8. cis''16~ cis''8 dis''16\glissando  e''16~ 
      | e''2.~ 
      | e''4 f''2~^\markup{\left-align \small vib} 
      | f''2. 
      | e''4 \tuplet 3/2 {b'4 g'8} r4 
      | r2. 
      | a'8 g'8 f'8 a'8 e'8 g'8 
      | b'8 d''8 b'8 g'8 e'8 a'8 
      | g'8 e'8 \tuplet 3/2 {a'8 b'8 a'8} fis'8 d'8 
      | b4 a8 a16 fis16 e4 
      | r4 r8 a'4 g'8 
      | f'8 f'16 g'16 a'8 c''8 b'4 
      | a'4 \tuplet 3/2 {g'4 e'8} r4 
      | r4 r8 ais'16 b'16~ b'8 a'8 
      \bar "||" \mark \default ais'16\glissando  b'8. a'8. b16 b'8 ais'8 
      | b'4 \tuplet 3/2 {a'4 b'8~} b'8 a'8 
      | b'2~ b'8 dis''8 
      | r4 r8 ais'16\glissando  b'16~ b'8 a'8 
      | b'4 a'8 b'4 a'8 
      | b'4 a'8 b'4 a'8 
      | b'4 f'8 d''16\glissando  f''16~ f''8 g''8 
      | f''4 r2 
      | d''8\glissando  e''4 d''4 ais'8~ 
      | ais'4 r2 
      | dis''8 e''4 cis''4 g'8\bendAfter #-4  
      | r2. 
      | d''8\glissando  f''4 dis''8~ \tuplet 3/2 {dis''8 cis''8 c''8~} 
      | c''8 ais'4 gis'4 f'8 
      | a'4^\markup{\left-align \small vib} g'8 e'8 d'8 b8 
      | a8 r8 r2 
      | g'4 g'4 g'4 
      | g'4 e'4 a'4 
      | d'4 d'4 d'4 
      | \tuplet 3/2 {d'4 e'8} d'8 r8 r4 
      | r8 fis'8\glissando  g'4 g'4 
      | g'4 e'8 r8 r4 
      | d'16 e'16 d'16 e'16 d'16 e'16 d'16 e'16 \tuplet 5/4 {d'16 e'16 d'16 e'16 d'16} 
      | e'16 d'16 e'16 d'16 \tuplet 5/4 {e'16 d'16 e'16 d'16 e'16} \tuplet 6/4 {d'4 e'16 b16~} 
      \bar "||" \mark \default \tuplet 6/4 {b16 f'8 dis'16 f'16 dis'16} f'16 dis'16 f'16 dis'16 \tuplet 6/4 {f'16 dis'16 f'16 dis'16 f'8} 
      | \tuplet 6/4 {dis'16 f'16 dis'16 f'16 dis'16 f'16} \tuplet 6/4 {dis'8 f'16 dis'16 f'16 dis'16} \tuplet 6/4 {f'8 dis'16 f'16 dis'16 f'16~} 
      | \tuplet 6/4 {f'16 dis'16 f'16 dis'16 f'16 dis'16} f'16 dis'16 f'16 dis'16 \tuplet 5/4 {f'16 dis'16 f'16 dis'16 f'16} 
      | dis'8 r8 r4 r8 b8~ 
      | b16 f'16 dis'16 f'16 dis'16 f'16 dis'16 f'16 dis'16 f'16 dis'16 f'16 
      | \tuplet 6/4 {dis'16 f'16 dis'16 f'16 dis'16 f'16~} \tuplet 5/4 {f'16 dis'16 f'16 dis'16 f'16} \tuplet 5/4 {dis'16 f'16 dis'16 f'16 dis'16} 
      | \tuplet 5/4 {f'16 dis'16 f'16 dis'16 f'16} \tuplet 6/4 {dis'16 f'8 dis'16 f'16 dis'16} f'16 dis'16 f'16 dis'16 
      | \tuplet 6/4 {f'16 dis'16 f'16 dis'16 f'8} dis'16 f'16 dis'8 r4 
      | ais'8 c''8~ c''2~ 
      | c''2. 
      | c''16 cis''8. g'4 r4 
      | r8 b'8 cis''4. d''8 
      | dis''8 c''8 ais'2 
      | gis'16 g'8 dis'16 g'4. e'8 
      | a'8 e'8 b'4. a'8 
      | g'8 e'16 d'16 e'4. a'8 
      | f'8. dis''16 f''2 
      | e'8 f'8 a4 r4 
      | r16 g'8 b'16 e'8 r8 r8 a'8 
      | fis'8 d'8 b8 r8 r4 
      | b'4 b'4 b'4 
      | ais'16\glissando  b'8.~^\markup{\left-align \small vib} b'4~ b'16 a'16 g'16 e'16 
      | \tuplet 6/4 {d'8 b8 a16 g16} \tuplet 3/2 {e8 d8 b,8~} b,8 r8 
      | r4 r8 ais'16 b'16~ \tuplet 6/4 {b'8. a'8 b'16~} 
      \bar "||" \mark \default b'16 a'16 g'16 f'16 \tuplet 3/2 {dis'8 b8 a8} g16 f16 dis16 f16 
      | g16 a16 b8 \tuplet 5/4 {dis'16 f'16 g'16 a'16 b'16} a'16 g'16 f'16 dis'16~ 
      | \tuplet 6/4 {dis'16 f'16 g'16 a'16 b'8} \tuplet 3/2 {dis''8 cis''8 b'8} ais'16 a'16 g'16 f'16 
      | dis'16 b16 a16 g16 f16 dis16 r8 r4 
      | r16 dis16 f16 g16 \tuplet 6/4 {b4 f'16 g'16} \tuplet 3/2 {a'8 dis''8 cis''8} 
      | b'8\bendAfter #-4  f''8 dis''8 b'16 ais'16 a'16 g'16 f'16 dis'16~ 
      | \tuplet 5/4 {dis'16 a'16 f'16 dis'16 b16} \tuplet 3/2 {a8 g8 dis8} b16 a16 g16 dis16 
      | b16 a16 g16 dis16 c8 r8 r4 
      | \tuplet 6/4 {r16 ais,8 e16 f16 g16} \tuplet 6/4 {a16 ais8 c'16 e'16 g'16} \tuplet 6/4 {a'16 d''16 cis''16 c''16 b'16 ais'16~^\markup{\left-align \small vib}} 
      | ais'4~ ais'16 a'16 gis'16 g'16 f'16 e'16 d'16 c'16 
      | \tuplet 6/4 {a8. e16 d16 c16} a,2~ 
      | a,4 r2 
      | gis,2.~ 
      | gis,2.~ 
      | gis,8 a4 b4 d'8~ 
      | d'8 e'4 a'4 cis'8 
      | g'8\glissando  a'4 a'8 r4 
      | r8 g'8\glissando  a'4.^\markup{\left-align \small vib} e'8 
      | a'8 a'16 e'16~ e'8 a'8\bendAfter #-4  r4 
      | r8 gis'8\glissando  a'4. e'8 
      | a'8 e'8 a'4\bendAfter #-4  r4 
      | r8 gis'16\glissando  a'16~ a'4~ \tuplet 3/2 {a'8 e'8 a'8~} 
      | a'8 e'8 a'4\bendAfter #-4  r4 
      | r8 gis'16\glissando  a'16~^\markup{\left-align \small vib} a'2~ 
      \bar "||" \mark \default a'2.~ 
      | a'16 dis'16 f'16 g'16 a'4 r8. g16 
      | gis16 a16 b16 dis'16 \tuplet 6/4 {g'16 a'16 b'16 cis''16\glissando  d''8} r4 
      | \tuplet 3/2 {f8 g8 a8} \tuplet 5/4 {c'16 dis'16 f'16 g'16 a'16} \tuplet 6/4 {ais'16 b'16 d''16 dis''8.} 
      | r4 \tuplet 3/2 {dis8 g8 a8} \tuplet 6/4 {c'8 g'16 a'16 b'16 dis''16\glissando } 
      | f''4. r8 r8 d8 
      | \tuplet 5/4 {ais8 a'16 b'16 dis''16\glissando } f''4. f'8 
      | cis'16 c'16 r8 r2 
      | \tuplet 3/2 {dis''8\glissando  e''4~} e''2 
      | dis''16\glissando  e''8.~ e''2 
      | dis''16\glissando  e''8.~ e''2 
      | e''4. r8 r4 
      | e''8\glissando  f''8~ f''2 
      | e''8\glissando  f''8~ f''2~ 
      | f''8 g''8 b'8. f''16 \tuplet 3/2 {g''8 b'16 r8.} 
      | r2. 
      | e''8 f''8 g''8. g''16~ g''4~ 
      | g''4 e''4 g''8 b'8 
      | d''2.~^\markup{\left-align \small vib} 
      | \tuplet 3/2 {d''8 cis''8 d''8} cis''4 b'8 c''8~ 
      | c''4\bendAfter #-4  r2 
      | r16 b'16 c''4.^\markup{\left-align \small vib} b'8. c''16 
      | b'4\bendAfter #-4  r2 
      | r8 a'8\glissando  b'4~ \tuplet 3/2 {b'8 a'8 b'8~} 
      \bar "||" \mark \default b'8 c8~ c2~ 
      | c8 d4 d8 r4 
      | r8 a'8\glissando  b'8 b'8~ b'16 b'8 b'16~ 
      | b'8 b'8 b'8 b'8~ \tuplet 3/2 {b'8 b'8 b'8} 
      | b'8 b'8 \tuplet 3/2 {b'8 b'8 b'8~} b'16 b'16 b'16 b'16~ 
      | \tuplet 3/2 {b'8 b'8 b'8} b'8 b'8 b'8 b'16 b'16 
      | dis''8 a'8~ a'4. r8 
      | r8. ais'16\glissando  b'8 b'16 b'16 b'8 b'8 
      | \tuplet 3/2 {ais'8 e''8\glissando  f''8~} f''2~ 
      | f''4 r2 
      | \tuplet 3/2 {dis''8 e''8 a,8~} a,8 r8 r4 
      | r8 gis'8\glissando  a'2~^\markup{\left-align \small vib} 
      | a'16 gis'8 ais'16 gis'8 f'8 dis'8 gis'8 
      | f'8 dis'8 c'8 ais8 gis4~ 
      | gis8 a'8 g'8 e'8 \tuplet 3/2 {b4 g8} 
      | a4 r2 
      | ais'16 b'8.~ b'8 a'8~ \tuplet 6/4 {a'4 gis'16\glissando  a'16~} 
      | a'4 g'4 g'8 e'8 
      | g'4.^\markup{\left-align \small vib} e'4 e'8~^\markup{\left-align \small vib} 
      | e'4 d'4~ d'16 g'8 d'16 
      | e'4. d'4 cis'8\glissando  
      | d'4 b4 \tuplet 3/2 {b4 a8} 
      | b4.^\markup{\left-align \small vib} a4 gis8 
      | a4 g4 g8 e8 
      \bar "||" \mark \default d4. r8 r4\bar  ".."
    }
    >>
>>    
}
