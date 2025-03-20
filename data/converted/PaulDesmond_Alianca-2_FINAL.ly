\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Alianca (Solo 2)"
  composer = "Paul Desmond"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key bes \major
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
      
      | bes1 | bes1 | a1:min7 | d1:7 | g1:min | s1 | g1:min7 | c1:7 
      | c1:min7 | f1:7 | d1:min | g1:min | e1:min7 | a1:7 | d1 | f1:7 
      | bes1 | s1 | a1:min7 | d1:7 | g1:min | s1 | g1:min7 | c1:7 
      | c1:min | f1:7 | d1:min | g1:7 | c1:min7 | f1:7 | bes1 | c2:min7 f2:7|
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


      \tempo 4 = 236
      \set Score.currentBarNumber = #1
     
      \bar "||" \mark \default r2. f'8 g'8 
      | a'8. bes'16~ bes'8 c''4 bes'4 c''8 
      | a'2~ a'8 g'8 a'4 
      | fis'4. r8 r4 fis'4 
      | d'4 r2. 
      | r4 r16 bes8 d'16 \tuplet 3/2 {g'4 a'8} bes'8 b'8 
      | \tuplet 3/2 {c''4 bes'8} g'8 f'8 c'8 d'4. 
      | r2. c''8 bes'8 
      | \tuplet 3/2 {g'4 es'8} c'8 g4 bes8 g4 
      | d'4.. c'16~ c'8 gis8 a4 
      | g'4. f'8~ f'2 
      | a'4 fis'8 g'8~ g'2~ 
      | g'8 b'8 g'4 a'2 
      | cis''4 a'8. b'16~ b'8 g'8 a'4 
      | fis'4.. a'16~ a'8 r8 r4 
      | r1 
      \bar "||" r8. f'16~ f'4 f'4 ges'4~ 
      | ges'8 fis'8 g'8. g'16~ g'4 g'4 
      | g'4 gis'4 gis'4 a'8 r8 
      | r8 a'4 bes'8 c''4 a'4 
      | bes'8. bes'16 g'4 \tuplet 3/2 {a'4 bes'8~} bes'8 a'8~ 
      | a'8. g'16~ g'8 d'4 a8 bes4 
      | d'4. r8 r2 
      | r2 r8 c'4 g'8 
      | bes'2 c''8 bes'8 g'8 es'8 
      | \tuplet 3/2 {d'4 c'8~} c'8. b16~ b8 c'4. 
      | gis'8\glissando  a'4. f'2 
      | d'4 r2. 
      | r8 bes'4. g'4 bes4~ 
      | bes8 cis'8\glissando  d'4.. d'16~ d'4 
      | bes4. r8 r8 d'4. 
      | f'4 r2.\bar  ".."
    }
    >>
>>    
}
