\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Insensatez"
  composer = "Stan Getz"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key a \minor
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
      | r1 
      | a1:min9 | a1:min9 | gis1:dim7 | s1 | g1:min6 | s1 | d1:7/fis | s1 
      | f1:maj | s1 | bes1:maj | s1 | b1:min5-7 | e1:9- | a1:min7 | aes1:13.9 
      | g1:min7 | s1 | fis1:dim7 | s1 | f1:maj | b2:min5-7 e2:7 | a1:min7 | s2 aes2:7 
      | g1:min9 | c1:7 | fis1:min7 | b1:9- | f1:maj | e1:7 | a1:min7 | s1 
      | r1|
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


      \tempo 4 = 128
      \set Score.currentBarNumber = #0
     
      | r2. r8 e8 
      \bar "||" \mark \default a4. e'8 r2 
      | r4 r8. e16 \tuplet 3/2 {a8 c'8 e8} a8 c'8~ 
      | c'8 gis4 e'8~^\markup{\left-align \small vib} e'2~ 
      | e'2~ e'8 e8~ e16 gis16 b16 e'16~ 
      | e'8 g8 bes16 e'8 e'16~^\markup{\left-align \small vib} e'4. r8 
      | r4 e8 g16 bes16 e'4 \tuplet 3/2 {e'4 e'8~} 
      | e'8 fis8~ fis4. r8 r4 
      | b16 c'8 e'16~ e'8 e'8 e'4.^\markup{\left-align \small vib} r8 
      \bar "||" r4 r8 cis'16\glissando  d'16~ d'8 e'8 d'8 cis'16 d'16~ 
      | d'8 e'8\glissando  f'2~^\markup{\left-align \small vib} \tuplet 6/4 {f'8. e'8 d'16~} 
      | d'8 d'8~^\markup{\left-align \small vib} d'4~ \tuplet 3/2 {d'8 bes8 c'8} d'4~^\markup{\left-align \small vib} 
      | d'8 bes8~ \tuplet 3/2 {bes8 c'8 d'8} g'4.^\markup{\left-align \small vib} f'8 
      | e'2^\markup{\left-align \small vib} r2 
      | r2 r8 cis'16\glissando  d'16~ d'8 b8 
      | \tuplet 3/2 {cis'8 d'4} c'8 a8~ a2~ 
      | a2.. c8 
      \bar "||" a4^\markup{\left-align \small vib} c'4^\markup{\left-align \small vib} e'4^\markup{\left-align \small vib} g'4^\markup{\left-align \small vib} 
      | a'4^\markup{\left-align \small vib} c''4^\markup{\left-align \small vib} r2 
      | r8 ais'16\glissando  c''16~ c''8 b'16 a'16~ a'16 d''8 c''16~ \tuplet 3/2 {c''8 b'8 a'8~} 
      | \tuplet 3/2 {a'8 ais'8 c''8~} c''8 dis'8~^\markup{\left-align \small vib} dis'4. r8 
      | r2 r8 e16 fis16 \tuplet 6/4 {g16 a8 c'16 cis'16 d'16} 
      | e'4 d'8 c'8~^\markup{\left-align \small vib} c'4. d'8 
      | \tuplet 3/2 {e'8 c'8 a8~^\markup{\left-align \small vib}} a4 r2 
      | r2 \tuplet 3/2 {r8 d''8 c''8} \tuplet 3/2 {d''8 c''8 d''8} 
      \bar "||" \tuplet 5/4 {c''16 d''8 c''16 d''16~} \tuplet 3/2 {d''8 c''8 d''8} \tuplet 6/4 {c''16 d''8. c''16 d''16~} d''16 c''16 d''16. es''32\bendAfter #+4  
      | \tuplet 3/2 {d''8 es''8 d''8} des''16\glissando  c''16 a'16 c''16~^\markup{\left-align \small vib} c''8 r8 r4 
      | r8 dis''8 cis''8 b'8 gis'8 b'8 dis''8 cis''8 
      | b'16 gis'16 b'16. gis'32~ gis'16 b'16 gis'16 b'16 \tuplet 3/2 {cis''8 dis''8 cis''8} b'4^\markup{\left-align \small vib} 
      | r2 r16 ais'16 b'16 c''16 \tuplet 5/4 {b'16 ais'8. b'16~} 
      | b'16\glissando  cis''16 d''8~^\markup{\left-align \small vib} d''2~ d''8 b'8 
      | \tuplet 3/2 {c''4 b'8~} b'8 a'8 e'4^\markup{\left-align \small vib} d'8 c'8~ 
      | c'8 b8 a4~^\markup{\left-align \small vib} a16 e16 f8 a8 c'8 
      \bar "||" e'2^\markup{\left-align \small vib} r2\bar  ".."
    }
    >>
>>    
}
