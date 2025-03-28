\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Alianca"
  composer = "Paul Desmond"
  tagline = ##f
}
global =
{

    \time 4/4
    \clef "treble_8"
    \key bes \major

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
      | bes1 | bes1 | a1:min7 | d1:7 | g1:min | s1 | g1:min7 | c1:7 
      | c1:min7 | f1:7 | d1:min | g1:min | e1:min7 | s1 | d1 | f1:7 
      | s1 | s1 | a1:min7 | d1:7 | g1:min | s1 | g1:min7 | c1:7 
      | c1:min | f1:7 | d1:min | g1:7 | c1:min7 | f1:7 | bes1 | c1:min7 
      | bes1 | s1 | a1:min7 | d1:7 | g1:min | s1 | g1:min7 | c1:7 
      | s1 | f1:7 | d1:min | g1:min | e1:min7 | a1:7 | d1 | f1:7 
      | bes1 | s1 | a1:min7 | d1:7 | g1:min | s1 | g1:min7 | c1:7 
      | c1:min | f1:7 | d1:min | g1:7 | c1:min7 | f1:7 | d1 | c2:min7 f2:7 
      | bes1|
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

      \tempo 4 = 233
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r4 r8 a'8 bes'8. c''16~ c''8 d''8~ 
      \bar "||" \mark \default d''8 c''4. bes'4. r8 
      | r4 r8 g'8 a'8. bes'16~ bes'8 c''8~ 
      | c''8 bes'4. a'4. d'8~ 
      | d'16 es'8 d'16~ d'4 cis'8 d'4. 
      | bes'8. a'16~ a'4 g'4. r8 
      | r2 r8 a8 bes4 
      | d'2 fis'8 g'4. 
      | bes'2 c''4 bes'4 
      | es'1 
      | r2 \tuplet 3/2 {c''4 b'8} bes'16 a'8. 
      | f'2.. r8 
      | r2 gis'8 a'4. 
      | g'2~ g'8 r8 r4 
      | r4 r8. a'16~ a'8 bes'4 g'8 
      | a'4.. fis'16~ fis'2 
      | g'2 gis'8\bendAfter #+4  a'4. 
      | f'2 c'8 d'4. 
      | a2~ a8 r8 r4 
      | r4 r8 a'8 c''8 c''8 a'8 a'8 
      | fis'8 fis'8 d'8 d'8 a8 a8 d'8 d'8 
      | bes2~ bes8 bes8 d'8 g'8 
      | bes'2 c''8 bes'8 g'8 d'8 
      | c'8 d'8~ d'2 r4 
      | r2 r8 d'16 es'16 d'4 
      | es'4 f'4 f'4 g'4 
      | g'4 a'4 a'4 c''4 
      | c''4 d''8. d''16~ d''4.. g'16~ 
      | g'8 gis'4 fis'4 g'4. 
      | bes'2 es'4 c'8. a'16~ 
      | a'2 \tuplet 3/2 {f'4 d'8~} d'8 bes8~ 
      | bes2 r2 
      | r2 \tuplet 3/2 {a'4 a'8~} a'8. a'16~ 
      \bar "||" \mark \default a'8 a'8 a'8 a'4 a'8 a'4 
      | a'4 a'4 \tuplet 3/2 {a'4 a'8~} a'8 a'8~ 
      | a'8 a'8 a'2. 
      | a'4. fis'8 d'8 c'8 bes8 b8 
      | c'4 r2. 
      | r4 bes8 d'8 g'8 a'8 bes'8 b'8 
      | c''8 bes'8 g'8 d'8 c'8 d'4. 
      | r1 
      | bes'4 es'4. g'4. 
      | es''8 r8 r8. a'16~ a'4 c''4~ 
      | c''8. d'16~ d'4 f'4. a'8~ 
      | a'8. c''16~ c''4. bes'4. 
      | b'4. g'4 e'4. 
      | cis'4 d'4 cis'4 e'4 
      | a'2 r2 
      | r1 
      \bar "||" c''4 d''4 d''4 d''4~ 
      | d''8 d''8 d''4 \tuplet 3/2 {d''4 c''8} bes'4 
      | d'4 d'4 d'2 
      | d'4. d'4 cis'8 d'4 
      | bes'4. c''4 c''4. 
      | c''4. bes'8~ bes'8. a'16 bes'4~ 
      | bes'8 c'8~ c'2 r4 
      | r2 r8 es'16 g'16~ g'8. bes'16~ 
      | bes'4. bes8 \tuplet 3/2 {b8 c'8 es'8~} es'8 g'8 
      | bes'4 \tuplet 3/2 {c''4 a'8~} a'8 g'4. 
      | f'2 g'4 aes'8 g'8~ 
      | g'2. r4 
      | r4 r8 d'8 f'8. ges'16~ ges'8 f'8~ 
      | f'4. es'8 c'4 f'4 
      | bes'1~ 
      | bes'4. g'4 cis'8 d'4 
      \bar "||" \mark \default bes2.. r8\bar  ".."
    }
    >>
>>    
}
