\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Playin' in the Yard (Solo 2)"
  composer = "Sonny Rollins"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
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
      | s2 r2 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | s1 | s1 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 | g1:7 | c1:7 
      | g1:7 | c1:7 | g1:7 | c1:7|
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

      \tempo 4 = 159
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2. g'4~ 
      \bar "||" \mark \default g'2 f'16 d'8. c'8 b8 
      | r1 
      | r2 d'8. e'16~ e'8 d'8~ 
      | d'8 g4 c'4 d'8 b8 g8 
      | a4 r2 g8. e16 
      | g4 r4 \tuplet 6/4 {r16 c'4 d'16~} d'8 r8 
      | r4 \tuplet 3/2 {b4 g8~} g16 a8 g16~ g4 
      | e'8 d'8 \tuplet 3/2 {bes4 g8} a8 r8 r4 
      | r2 b8 d'8 g'4 
      | a'4.. g'16 e'16 d'16 r8 r4 
      | r4 \tuplet 3/2 {e'4 d'8} g'8 e'8 r4 
      | b16 c'8.~ c'4 bes16 c'8 bes16 r4 
      | r2 g8 f8 g4~ 
      | g8 bes8 r4 r16 c'8 d'16 f'8 g'8~ 
      | g'8 ais'8 ais'8 f'8 g'4 f'8 d'8 
      | c'8 d'8 d'4~ d'16 a'16 bes'8 a'8 bes'8 
      | g'4 r2. 
      | d'4 f'8. f'32 g'32~ g'8 f'4 d'8~ 
      | d'2~ d'8 fis8 ais4 
      | c'4 d'4 c'8 bes8 g8 f8 
      | g4 d8 f8 \tuplet 3/2 {c4 d8~} d8 f8~ 
      | f8 g4 bes4 c'8 d'8 f'8 
      | g'8 ais'8 c''8 g'8 ais'4 g'8 f'8 
      | \tuplet 3/2 {c'8 d'8 c'8} bes8 g8 bes4 c'8 r8 
      | r2 r8 g'4 g'8~ 
      | g'8 c''16 cis''16 d''4. c''4 g'8 
      | a'16 bes'8 a'16 c''8. ais'16 g'4. f'8\bendAfter #+4  
      | e'4 f'8 d'4 des'8 c'4 
      | r1 
      | r2 \tuplet 3/2 {f'8 a'8 g'8~} g'8 g'16 a'16~ 
      | a'2 \tuplet 3/2 {g'4 a'8} g'8 f'8 
      | d'8 des'8 c'8 bes8 \tuplet 3/2 {c'4 bes8} g8 f8 
      | g2 ais8 c'8 ais8 g8 
      | e'8 d'8 e'8 d'8 e'4 g'8 r8 
      | r2 g8 ais8 c'8 d'8 
      | e'8 d'8~ \tuplet 3/2 {d'8 a8 g8} a8 a8 g8 f8\bar  ".."
    }
    >>
>>    
}
