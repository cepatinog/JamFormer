\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Brother Hubbard"
  composer = "Kenny Garrett"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key d \minor
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
      | g1:min 
      | d1:min | g1:min | d1:min | g1:min | d1:min | g1:min | d1:min | g1:min 
      | aes1:maj | g1:min | aes1:maj | g2:min a2:7 | d1:min | g1:min | d1:min | g1:min 
      | d1:min | g1:min | d1:min | g1:min | d1:min | g1:min | d1:min | g1:min 
      | aes1:maj | g1:min | aes1:maj | g2:min a2:7 | d1:min | g1:min | d1:min | g1:min 
      | s2 a2:7 | d1:min | g2:min a2:7 | d1:min | g2:min a2:7 | d1:min | g1:min | a2:7 es2:7 
      | d1:min | a2:7 es2:7 | d1:min | g1:min | d1:min | g1:min | d1:min | bes1:min 
      | d1:min | g1:min | d1:min|
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


      \tempo 4 = 148
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r4 r8 a'8~ \tuplet 6/4 {a'16 bes'16 c''8. c''16~} c''8 c''8~ 
      \bar "||" \mark \default c''8 c''8 r2. 
      | r4 r8 f'8 \tuplet 3/2 {c''4 c''8~} c''8 c''8 
      | c''4. c''8 r2 
      | r4 r8 f'8~ \tuplet 6/4 {f'16 c''4 c''16~} c''8 c''8 
      | \tuplet 3/2 {b'8 c''8 des''8} \tuplet 3/2 {c''4 a'8~} a'4. r8 
      | r8 a'8 gis'8 a'8 bes'8 gis'8 a'8 g'16 gis'16~ 
      | gis'16 a'8 f'16 d'8 a8 d'2~ 
      | d'4. a'8~ a'16 c''16 cis''16 d''16~ d''8 a'8 
      | g'2.. f'8~ 
      | \tuplet 3/2 {f'8 b'8 c''8~} \tuplet 3/2 {c''8 bes'8 g'8} f'4. es'8 
      | \tuplet 3/2 {f'8 g'4} c'8 bes8 r2 
      | fis'16 g'16 gis'16 a'16 d''4 \tuplet 3/2 {aes'8 g'8 f'8} g'8 f'8 
      | d'8 d'4 d'4 d'4 d'8~ 
      | d'8 d'4 d'8 d'4 d'8 b8 
      | d'8 e'8 f'8 r8 r2 
      | r4 b8 d'4 d'4. 
      \bar "||" b8 d'8 r4 f'8 r8 r4 
      | b8 d'8 \tuplet 3/2 {d'4 b8~} b8 e'8 f'4 
      | b8 d'8 d'8 b8 d'8 d'8 \tuplet 3/2 {d'4 b8} 
      | \tuplet 3/2 {d'4 d'8} \tuplet 3/2 {d'4 b8~} \tuplet 6/4 {b8 f'16 g'16 a'8} g'8. f'16~ 
      | f'8 f'8 a8 d'4. b8 a8 
      | r2 g'16 a'16 d''8 d''8 es''16 c''16~ 
      | c''8 a'8 \tuplet 3/2 {g'4 f'8} e'4 r4 
      | r1 
      | c''8 c''8 c''8 f''8 r2 
      | bes'8 bes'8 bes'4 f''8 r8 r4 
      | a'8 gis'8 a'8 gis'8 \tuplet 6/4 {a'4 e''16 f''16} r4 
      | r8 e''8 f''16 e''16 d''8 cis''8 bes'8 a'8 g'8 
      | f'8 d''8 r4 aes'16 g'16 ges'4 d'8 
      | g'4 f'4 gis'16 a'16 g'4 d'8 
      | g'8 g'8 g'8 f'8 f'8 f'8 d'8 r8 
      | r4 \tuplet 3/2 {gis'8 a'8 c''8} d''8 f''8~ f''16 f''16 fis''16 g''16 
      \bar "||" g''4~ \tuplet 3/2 {g''8 f''8 d''8} c''4 d''8 aes'8 
      | \tuplet 3/2 {g'8 aes'8 f'8} g'8 f'8 d'4 f'4~ 
      | f'8 d'8 f'8 g'8 g'4 \tuplet 6/4 {f'4 aes'16 g'16~} 
      | g'8 d'8 g'8 f'8 d'8 c'8 d'8 cis'8~ 
      | cis'8 d'8 f'8 g'8 g'8 f'8 g'8 g'8 
      | f'8 g'8 g'8 f'8 g'8 f'8 \tuplet 3/2 {g'4 f'8} 
      | g'16 aes'16 g'8 d'8 f'4 r8 r4 
      | f'16 fis'16\bendAfter #+4  g'4. \tuplet 6/4 {f'4 fis'16 g'16} gis'4~ 
      | gis'4 a'2.\bendAfter #+4  
      | gis'8 a'8 \tuplet 3/2 {bes'8 a'8 gis'8} a'4 f'16 gis'8 a'16~ 
      \bar "||" a'16 bes'16 a'16 gis'16 a'4 gis'8 a'8 a'16 bes'16 a'16 gis'16 
      | a'8 aes'8 gis'8 a'8~ a'16 bes'16 a'16 d'16 a'8 d'8 
      | gis'8 a'8~ a'16 bes'16 a'16 d'16~ d'16 a'16 aes'8 d'4 
      | bes16 gis'8 a'16 \tuplet 3/2 {bes'8 a'8 a'8~} a'8 d'8 \tuplet 3/2 {g'8 gis'8 a'8~} 
      | \tuplet 6/4 {a'16 bes'16 a'16 bes'8 gis'16} a'8 d'8 gis'8 a'8 bes'16 a'16 bes'16 gis'16 
      | a'4 d'8 bes8 \tuplet 6/4 {aes'8 g'16 ges'16 f'16 d'16~} \tuplet 3/2 {d'8 des'8 c'8} 
      | g'16 ges'16 f'8 d'8 c'8 f'8. f'16~ f'8 f'8~ 
      | \tuplet 5/4 {f'8. aes16 g16} ges16 f16 e16 f16 g8 f8 \tuplet 5/4 {a16 c'16 d'16 c'16 d'16~} 
      \bar "||" \mark \default d'8 r8 r2.\bar  ".."
    }
    >>
>>    
}
