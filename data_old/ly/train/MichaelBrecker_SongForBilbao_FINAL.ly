\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Song for Bilbao"
  composer = "Michael Brecker"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
    \key c \major
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
      | c1:7 | s1 | s1 | s1 | aes1:7 | s1 | c1:7 | s1 
      | s1 | s1 | s1 | s1 | aes1:7 | s1 | c1:7 | s1 
      | \time 3/4 a2:min7 bes4:maj | \time 3/4 g2:min7 aes4:maj | \time 3/4 f2:min7 g4:min7 | \time 3/4 a2:min7 b4:min7 | c1:7 | s1 | s1 | s1 
      | aes1:7 | s1 | c1:7 | s1 | s1 | s1 | s1 | s1 
      | aes1:7 | s1 | c1:7 | s1 | s1 | s1 | s1 | s1 
      | aes1:7 | s1 | c1:7 | s1 | \time 3/4 a2:min bes4:maj | \time 3/4 g2:min7 aes4:maj | \time 3/4 f2:min7 g4:min7 | \time 3/4 a2:min7 b4:min7 
      | c1:7 | s1 | s1 | s1 | aes1:7 | s1 | c1:7 | s1 
      | s1|
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


      \tempo 4 = 184
      \set Score.currentBarNumber = #0
     
      | r2. bes8 g8 
      \bar "||" \mark \default c'4. d'8 r2 
      | c'8. d'16~ d'4 \tuplet 3/2 {bes4 f8} d8 g8 
      | e8 c'8 r4 d'4. e'8 
      | f'4 e'8 d'8 des'8 b8 c'8 b8 
      | bes8 g8 ges8 e8 f8 es8 c8 bes,8 
      | es8 c8 f4 ges8 f8 es8 c8 
      | e8 c'4 d'4 e'4 f'8~ 
      | f'8 e'4 d'4 f'8 d'8 f'8 
      \bar "||" e'8 g'8 c''4 bes'4 c''8 r8 
      | r4 r8 d'16 f'16 e'8 g'8 bes'8 c''8 
      | cis''16\glissando  d''16 c''16 bes'16 g'4 r2 
      | ges'8 f'8 ges'8 f'8 \tuplet 3/2 {es'4 c'8} \tuplet 3/2 {f'4 es'8} 
      | f'8\glissando  ges'16 f'16 es'8. c'16 f'8 e'8~ \tuplet 6/4 {e'16 es'8. des'16 c'16} 
      | bes8 ges8 f8 es8 \tuplet 3/2 {f4 es8} \tuplet 3/2 {f4 dis8} 
      | e8 c'4 d'8 e'4 d'8 c'8 
      | d'8 e'8 c'8 r8 r2 
      \bar "||" \time 3/4 a'4 f'8 ais'4 f'8 
      | \time 3/4 g'8 g'8 es'8 g'16\bendAfter #+4  a'16 g'4 
      | \time 3/4 r8 f'8 des'8 g'4 es'8 
      | \time 3/4 a'4 f'8 b'4. 
      \bar "||" b'16 c''8.~ c''4. b'8 c''8 b'8 
      | bes'8 bes'8 c''8 bes'8 \tuplet 6/4 {a'8 b'8 c''16 cis''16~} \tuplet 6/4 {cis''16 d''16 c''8 b'16 bes'16~} 
      | bes'8 g'8 d'8 g'8 ges'8 d'8 bes8 g16 e'16~ 
      | e'8 g'8 \tuplet 3/2 {e'8 g'8 f'8~} f'16 e'8 es'16~ es'16 c'8 bes16~ 
      | bes8 ges4 r8 r2 
      | \tuplet 3/2 {ges8 bes8 d'8} \tuplet 6/4 {f'8 d'16 es'16 f'16 aes'16~} \tuplet 6/4 {aes'16 g'16 ges'8 d'16 f'16~} \tuplet 6/4 {f'16 e'16 es'16 g'8 d'16~} 
      | \tuplet 6/4 {d'16 e'16 f'8 d'16 e'16~} \tuplet 6/4 {e'16 d'16 cis'8 d'16 f'16} \tuplet 3/2 {d'8 bes8 g8} a16 g16 ges16 a16 
      | c'16 a16 bes16 c'16 \tuplet 6/4 {des'16 f'16 a'8 g'16 f'16~} \tuplet 6/4 {f'16 d'16 bes8 g16 e'16~} e'16 d'16 b16 bes16 
      \bar "||" \mark \default c'16 d'16 e'16 g'16 a'16 bes'16 c''8~ \tuplet 3/2 {c''8 c''8 bes'8~} bes'16 c''16 c''16 a'16 
      | \tuplet 3/2 {c''8 c''8 g'8} c''16 c''16 a'16 c''16 r2 
      | \tuplet 6/4 {c''8 c''8 c''16 bes'16~} \tuplet 6/4 {bes'8 c''8 d''16 a'16~} a'8 c''16 c''16 des''16 g'16 c''16 c''16 
      | \tuplet 3/2 {a'8 c''8 c''8} \tuplet 3/2 {bes'8 c''8 c''8} \tuplet 3/2 {a'8 c''8 c''8} \tuplet 6/4 {g'8. c''16 c''16 aes'16~} 
      | aes'8 c''16 c''16 \tuplet 3/2 {bes'8 c''8 c''8} aes'8 c''16 c''16 \tuplet 3/2 {es'8 c''8 c''8} 
      | cis'16\glissando  d'16 c''16 c''16 des'8 c''16 c''16 \tuplet 3/2 {aes'8 c''8 c''8} bes'8 c''16 c''16\glissando  
      | \tuplet 6/4 {gis'16 a'8 c''8 g'16~} g'8 r8 r4 a'16 c''8 e''16\glissando  
      | f''2.~ \tuplet 6/4 {f''4~ f''16 e''16~} 
      \bar "||" e''8.\glissando  e''16~ e''8 c''8 a'4 f''16\glissando  g''16 bes''16 a''16~ 
      | a''4 g''8 g''8 g''8 r8 r8. dis''16 
      | e''8 bes'8 r4 g'8 d'8 r4 
      | ges'16 d'16 b16 g16 f'16 d'16 bes16 g16 d'16 e'16 f'16 d'16 \tuplet 6/4 {es'16 d'8 des'16 f'16 es'16~} 
      | es'16 c'16 aes16 f16 \tuplet 6/4 {bes16 aes16 f8 es16 aes,16~} \tuplet 3/2 {aes,8 es8 aes,8} bes,4~ 
      | bes,8 aes'8 c''4. bes,8 f8. dis16 
      | e4. c'8 \tuplet 3/2 {d'4 c'8} e'8 d'8 
      | f'8 d'8 ges'8 d'16 f'16\glissando  g'8 r8 r4 
      \bar "||" \time 3/4 g'16\glissando  a'8. c''8 ais'8 g'4 
      | \time 3/4 es'8 f'16 g'16~ g'8 es'8 f'8 c'8~ 
      | \time 3/4 c'8 f'8 des'4 g'8 es'8~ 
      | \time 3/4 es'8 a'4 g'8 \tuplet 3/2 {a'8 ais'8 d''8} 
      \bar "||" \tuplet 3/2 {e''8 f''8 fis''8\glissando } g''8 gis''16 a''16 bes''2 
      | a''4 bes''4 a''4 a''16\glissando  bes''8 a''16~ 
      | a''8 g''8~ g''2 r4 
      | r16 e''16 f''16 e''16~ \tuplet 6/4 {e''8 e''16 c''8 a'16~} a'8 f'8 \tuplet 3/2 {bes'4 a'8} 
      | bes'4. r8 r4 \tuplet 3/2 {r8 bes'8 aes'8~} 
      | aes'16 f'8 es'16~ es'16 c'8 b16~ b8 bes16 aes16~ aes8 f8 
      | a8 c'4 f'4 a'4 c''8 
      | bes'8 g'8 d'8 bes8 d'8 e'8 f'8 d'16 e'16~ 
      \bar "||" \mark \default e'4~ e'16 d'8 c'16~ c'8 r8 r4\bar  ".."
    }
    >>
>>    
}
