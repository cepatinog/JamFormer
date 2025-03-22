\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Gut Bucket Blues"
  composer = "Kid Ory"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "bass"
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
      | c1 | f1 | c1 | s1 | f1 | s1 | c1 | s1 
      | g1:7 | f1 | c1|
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

      \tempo 4 = 150
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2. r8 d8 
      \bar "||" \mark \default e8 g8 a8 c'4^\markup{\left-align \small vib} r8 r4 
      | r4 d'16 e'8 dis'16\glissando  \tuplet 3/2 {e'4 c'8} a8 dis8\glissando  
      | e8 r8 r2. 
      | r2. \tuplet 6/4 {dis'16\glissando  e'8. dis'16 e'16~} 
      | e'8 e'4 e'8 c'4 r4 
      | \tuplet 6/4 {dis'16 e'8. dis'16\glissando  e'16~} e'8 e'4 c'8 a8 dis8\glissando  
      | e8 r8 r2. 
      | r2 r8 c'8 d'8. d'16~ 
      | d'4~ \tuplet 6/4 {d'16 b8.\bendAfter #+4  ais16 b16~} b8 g8~ \tuplet 6/4 {g4~ g16 c'16~} 
      | c'8. bes16~ bes8 a8 g8. d16~ d8 e8 
      | c8 r8 r2.\bar  ".."
    }
    >>
>>    
}
