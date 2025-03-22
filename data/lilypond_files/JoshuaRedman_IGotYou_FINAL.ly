\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "I Got You"
  composer = "Joshua Redman"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key g \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }
      | s4 r2. 
      | d1:9+ | s1 | s1 | s1 | g1:9+ | s1 | d1:9+ | s1 
      | a1:9+ | g1:9+ | d1:7 | a1:9+5+ | d1:9+ | s1 | s1 | s1 
      | g1:9+ | s1 | d1:9+ | s1 | a1:9+ | g1:9+ | d1:7 | a1:9+5+ 
      | d1:9+ | s1 | s1 | s1 | g1:9+ | s1 | d1:9+ | s1 
      | a1:9+ | g1:9+ | d1:7 | a1:9+5+ | d1:9+|
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

      \tempo 4 = 145
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r4 r8 ges16 aes16 g8 f8 d8 c8 
      \bar "||" \mark \default d4 r8.. e32\bendAfter #+4  f8 r8 r8 d8 
      | r4 r8 aes8 g8 f8 d8. c16 
      | d8 r8 r4 \tuplet 3/2 {r8 f8\glissando  fis8~} fis8. d16~ 
      | d8 r8 r8 c'8~ \tuplet 3/2 {c'8 b8 bes8} \tuplet 3/2 {g4 f8} 
      | g2 bes8 r8 r4 
      | r8 g8 bes16 b16 d'16 f'16~ \tuplet 3/2 {f'8 g'8 f'8} \tuplet 3/2 {g'8 aes'8 g'8} 
      | \tuplet 3/2 {f'8 d'8 c'8} \tuplet 3/2 {aes8 g8 d8~} d16 f8 d16 \tuplet 3/2 {f8 g8 f8} 
      | fis16 d8. r4 \tuplet 6/4 {r4 a16 c'16~} c'16 cis'16 e'16 fis'16~ 
      | fis'16. a'8 b'32 c''8 a'4. g'16\glissando  aes'8. 
      | g'8 f'8 d'8 c'8 \tuplet 3/2 {f'4 d'8} f'4 
      | d'4..^\markup{\left-align \small vib} c'16 \tuplet 3/2 {e'8\glissando  fis'8 a'8} b'8 d''8 
      | r4 es''16 f''16 es''16 e''16~ e''8 c''16 a'16 f'4 
      \bar "||" \mark \default d'4. d'4. d'8 r8 
      | r8 e''16 f''16~ \tuplet 3/2 {f''8 e''8 f''8} \tuplet 6/4 {e''16 f''8 b'16 a'16 g'16} f'4 
      | d'8\bendAfter #-4  r8 r8 cis'16 d'16~ d'4 d'8 r8 
      | r8. e''16 f''4 bes'16 b'16 d''16 des''16 \tuplet 6/4 {c''8 a'16 b'16 a'16 g'16~} 
      | g'16 ges'16 f'16 a'16 e'16 d'16 g'16 ges'16 f'16 cis'16 e'16 d'16 a16 f16 c'16 a16 
      | b16 g16 a16 f16 \tuplet 3/2 {e8 d4~} \tuplet 3/2 {d8 e''8\glissando  f''8~} f''16 a'16 g'16 f'16 
      | d'4~ \tuplet 3/2 {d'8 bes'8 b'8} d''16 b'16 cis''16 b'16 \tuplet 5/4 {a'8 aes'16 g'16 b'16} 
      | \tuplet 6/4 {fis'16 e'8 a'16 aes'16 g'16} fis'16 d'16 bes16 g16 e'16 d'16 cis'16 a16 b16 g16 e16 cis16 
      | fis16 e16 b,16 a,16 r4 r16 es16 e16 g16 e16. g32 gis32 bes32 c'32 e'32~ 
      | \tuplet 6/4 {e'16 d'8 a16 f16 c'16~} \tuplet 5/4 {c'16 a16 b16 d'16 f'16~} f'16 a'16 es'16 e'16 g'16 ges'16 f'16 d'16 
      | es'16 e'16 g'16 ges'16 f'16 d'16 es'16 e'16 g'16 ges'16 f'16 d'16 es'16 e'16 g'16 ges'16 
      | f'16 d'16 es'16 e'16 g'16 ges'16 f'16 d'16 \tuplet 5/4 {g'16 f'16 d'16 a16 fis16} d'16 c'16 a8 
      \bar "||" \mark \default r8. c''16 d''2~ \tuplet 3/2 {d''8 d''8 c''8} 
      | d''16 c''16 d''16 c''16~ c''16 d''16 c''16 f''16~ f''16 g''8 gis''16 bes''4 
      | r8 c''16 d''16~ d''8 d''16 c''16 \tuplet 3/2 {d''8 c''8 d''8} c''16 d''16 c''16 d''16 
      | \tuplet 3/2 {c''8 d''8 c''8} \tuplet 6/4 {d''8 c''8 d''16 c''16} b'16 f''16 g''8 d''8 r8 
      | r8. b''16~ b''16\bendAfter #+4  es'''16 b''16 gis''16 r4 r8 f''8 
      | f''8 d''8 c''8 g'4 f'8 \tuplet 3/2 {d'4 c'8} 
      | f'8\glissando  fis'8~ \tuplet 3/2 {fis'8 g'8 a'8~} a'16 f'16\glissando  fis'8 d'8 c'8~ 
      | c'8 c'4 r8 r4 \tuplet 3/2 {r8 a8 a8} 
      | c'16 cis'8 d'16~ d'8 e'8 r4 \tuplet 3/2 {r8 a'8 g'8~} 
      | g'16 e'16 f'8 d'8 a8 r4 r8 d8~ 
      | d8 fis4 a4 c'4 e'8 
      | d'8 c'8 a8 g8 f8 c8 d8 f8 
      \bar "||" \mark \default d4 r2.\bar  ".."
    }
    >>
>>    
}
