\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Savoy Blues"
  composer = "Kid Ory"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "bass"
    \key g \major

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | g1:7 | c2:7 cis2:dim | g1:7/d | s1 | c1:7 | s1 | g1:7 | s1 
      | d1:7 | s1 | g1:7 | s1 | s1|
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

      \tempo 4 = 130
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default g'8. d'16 b8 g8 r2 
      | g'16\glissando  fis'8 d'16 b8 g8 r2 
      | g'8\glissando  fis'16 d'16~ d'4 f'8. d'16 b4 
      | g'8\glissando  e'16 d'16 b8 g8 r2 
      | \tuplet 6/4 {r16 ais16\bendAfter #+4  b8 ais16\bendAfter #+4  b16~} \tuplet 3/2 {b8 bes8 g8~} g8 r8 r4 
      | ais16 b8\bendAfter #+4  bes16 \tuplet 3/2 {g4 d'8} b8\glissando  bes8~ \tuplet 6/4 {bes16 g4 g16~} 
      | g2 cis8\bendAfter #+4  d16 cis16\bendAfter #+4  \tuplet 3/2 {d4 cis8} 
      | g,8 r8 r4 r8 cis'8\bendAfter #+4  d'8 cis'16\bendAfter #+4  d'16 
      | \tuplet 3/2 {cis'8\bendAfter #+4  d'4\bendAfter #+4 } cis'8 d8 r2 
      | cis'16\bendAfter #+4  d'8 cis'16\bendAfter #+4  d'8 cis'16\bendAfter #+4  d'16~ d'8 cis'8 b8 r8 
      | r8 d'2..~ 
      | d'2..\bendAfter #+4  g'8~^\markup{\left-align \small vib} 
      \bar "||" g'2 r2\bar  ".."
    }
    >>
>>    
}
