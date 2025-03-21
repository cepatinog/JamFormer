\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Serenity"
  composer = "Kenny Dorham"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble"
    \key es \major
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
      | d2:min5-7 g2:775+ 
      | d1:min5-7 | g1:775+ | aes2:maj ges2:maj | e2:min7 a2:7 | f2:min7 bes2:7 | es2:maj d4:min5-7 g4:7 | c2:min7 c2:min7/bes | aes2:min7 des2:7 
      | g2:775+ ges2:7 | f1:7 | e1:maj | f2:min7 bes2:775+ | es1:maj | d2:min5-7 g2:775+ | d1:min5-7 | g1:775+ 
      | aes2:maj ges2:maj | e2:min7 a2:7 | f2:min7 bes2:7 | es2:maj d4:min5-7 g4:7 | c2:min7 c2:min7/bes | aes2:min7 des2:7 | g2:775+ ges2:7 | f1:7 
      | e1:maj | f2:min7 bes2:775+ | es1:maj | d2:min5-7 g2:775+|
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


      \tempo 4 = 155
      \set Score.currentBarNumber = #0
     
      \bar "||" \mark \default r8. c''16~ c''16 bes'8 aes'16~ aes'8 g'8~ \tuplet 3/2 {g'8 ges'8 f'8} 
      \bar "||" \mark \default g'4 g'2 bes'8. g'16 
      | aes'8 cis''8~ cis''16 b'8 aes'16~ aes'8 fis'8~ fis'16 aes'8 g'16~ 
      | g'4~ \tuplet 6/4 {g'16 d'4 c'16~} \tuplet 6/4 {c'16 f'4 es'16~^\markup{\left-align \small vib}} es'4~ 
      | es'4~ es'16 e'16 fis'16 g'16 a'16 b'16 aes'16 fis'16 e'16 a'16 fis'16 g'16 
      | \tuplet 3/2 {a'8 ges'4~} \tuplet 3/2 {ges'8 bes8 b8} \tuplet 6/4 {cis'16 d'16 f'16 d'8.} f'16 fis'16 g'16 bes'16 
      | \tuplet 6/4 {g'8. bes'16 a'16 c''16} es''16 d''16 c''16 bes'16 \tuplet 6/4 {a'16 aes'16 bes'16 aes'16 g'16 f'16} bes'16 aes'16 g'16 f'16 
      | \tuplet 3/2 {es'8 f'8 g'8~} g'32 d''16. b'32 c''32 a'32 b'32~ \tuplet 6/4 {b'16 c''16 b'16 g'8 f'16} \tuplet 3/2 {es'8 d'8 des'8} 
      | r2 r8. a'16 bes'4~ 
      | bes'8 r8 r2. 
      | \tuplet 6/4 {r16 c''16 des''16 c''16 a'8} \tuplet 6/4 {g'8 f'16 aes'16 a'16 c''16~} c''16 d''16 f''4 c''8~ 
      | \tuplet 6/4 {c''8 b'16 c''16 b'16 aes'16} fis'4 e'16 fis'8. aes'8. bes'16~ 
      | bes'4 f'4 bes'8\bendAfter #-4  r8 r4 
      | r4 r8 g''8~ g''16 aes''8 g''16~ g''16 f''8 e''16~ 
      | e''16 es''8 cis''16~ \tuplet 6/4 {cis''8 d''8. c''16~} c''8. a'16~ a'16 bes'8 b'16~ 
      \bar "||" \mark \default b'8 aes'8 g'8 f'8 \tuplet 6/4 {g'8 aes'8. g'16~} g'16 f'8 d'16 
      | es'2 d'4~ \tuplet 5/4 {d'8 b16\glissando  c'16 c'16~} 
      | c'4~ \tuplet 6/4 {c'4~ c'16 c'16} r2 
      | r4 fis'16 g'16 bes'16 g'16 aes'16 bes'16 a'16 es''16~ es''8. cis''16 
      | \tuplet 3/2 {d''4 c''8} \tuplet 3/2 {bes'4 a'8} \tuplet 3/2 {aes'4 bes'8} \tuplet 3/2 {g'4 f'8} 
      | bes'8. es'16~ es'2.~ 
      | \tuplet 6/4 {es'16 aes'8 bes'16 c''16\glissando  des''16} \tuplet 3/2 {es''4 b'8~} b'8 bes'8 aes'8 r8 
      | r2 bes'4 bes'4 
      | bes'4 bes'4 bes'8 bes'8~ \tuplet 6/4 {bes'16 cis''4 bes'16~} 
      | bes'8. bes'16~ bes'2 bes'8 g'8 
      | \tuplet 6/4 {f'8 g'8. g'16~^\markup{\left-align \small vib}} g'4. r8 r4 
      | r4 r8. f'16~ f'8. g'16~ g'16 aes'8 c''16~ 
      | c''8 bes'8 \tuplet 3/2 {g'4 f'8~^\markup{\left-align \small vib}} f'4.. es'16~ 
      | es'8 d'8 c'8 bes8~ bes4. aes8\bar  ".."
    }
    >>
>>    
}
