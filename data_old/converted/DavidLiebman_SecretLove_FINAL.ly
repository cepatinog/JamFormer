\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Secret Love"
  composer = "David Liebman"
  tagline = ##f
}
global =
{
    \override Staff.TimeSignature #'style = #'()
    \time 4/4
    \clef "treble_8"
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
      | f1:min7/bes 
      | es1:maj | f1:min7/bes | es1:maj | f1:min7/bes | es2:7 aes2:7 | g2:min7 c2:7 | f1:min7 | bes1:7 
      | f1:min7 | bes1:7 | f1:min7 | bes1:7 | f1:min7 | bes1:7 | es1:maj | f2:min7 bes2:7 
      | es1:maj | f1:min7/bes | es1:maj | f1:min7/bes | es2:7 aes2:7 | g2:min7 c2:7 | f1:min7 | bes1:7 
      | f1:min7 | bes1:7 | f1:min7 | bes1:7 | f1:min7 | bes1:7 | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:7 | aes1:maj | aes2:min7 des2:7 
      | es1:maj | f1:min7/bes | f1:min5-7 | c1:9+ | f1:min7 | bes1:7 | es1:maj | s1 
      | s1 | f1:min7/bes | es1:maj | f1:min7/bes | es2:7 aes2:7 | g2:min7 c2:7 | f1:min7 | bes1:7 
      | f1:min7 | bes1:7 | f1:min7 | bes1:7 | f1:min7 | bes1:7 | es1:maj | f2:min7 bes2:7 
      | es1:maj | f1:min7/bes | es1:maj | f1:min7/bes | es2:7 aes2:7 | g2:min7 c2:7 | f1:min7 | bes1:7 
      | f1:min7 | bes1:7 | f1:min7 | bes1:7 | f1:min7 | bes1:7 | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:7 | aes1:maj | aes2:min7 des2:7 
      | es1:maj | f1:min7/bes | g1:min5-7 | c1:9+ | f1:min7 | bes1:7 | es1:maj | s1 
      | s1 | f1:min7/bes | es1:maj | f1:min7/bes | es2:7 aes2:7 | g2:min7 c2:7 | f1:min7 | bes1:7 
      | f1:min7 | bes1:7 | f1:min7 | bes1:7 | f1:min7 | bes1:7 | es1:maj | f2:min7 bes2:7 
      | es1:maj | f1:min7/bes | es1:maj | f1:min7/bes | es2:7 aes2:7 | g2:min7 c2:7 | f1:min7 | bes1:7 
      | f1:min7 | bes1:7 | f1:min7 | bes1:7 | f1:min7 | bes1:7 | es1:maj | d2:min5-7 g2:7 
      | c1:min7 | f1:7 | bes1:maj | s1 | bes1:min7 | es1:7 | aes1:maj | aes2:min7 des2:7 
      | es1:maj | f1:min7/bes | g1:min5-7 | c1:9+ | f1:min7 | bes1:7 | es1:maj | s1 
      | s1 | f1:min7/bes|
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


      \tempo 4 = 273
      \set Score.currentBarNumber = #0
     
      | aes'8. ges'16 e'16 es'8.~ \tuplet 3/2 {es'8 des'8 bes8~} \tuplet 3/2 {bes8 aes8 g8} 
      \bar "||" \mark \default bes4.^\markup{\left-align \small vib} es'4 r8 r4 
      | r8 f'8~ f'8. d'16~ d'2~ 
      | d'8 bes8~ bes8. g'16~ g'2~ 
      | g'4. r8 r2 
      | aes4. f'4. r4 
      | r1 
      | r4 r8 g4 c'4 es8~ 
      | es4 cis8 d4 bes4.^\markup{\left-align \small vib} 
      | r2 aes8 c'8 es'4~^\markup{\left-align \small vib} 
      | es'4 r2. 
      | r4 ges4. des'8 e'4~ 
      | e'4. r8 r4 r8. g16~ 
      | g4 aes4 c'4 es'4~ 
      | es'8 f'8\glissando  g'8. des'16 ges'4 d'4 
      | es'2^\markup{\left-align \small vib} r2 
      | c'8 des'4 aes8 ges4 des4 
      \bar "||" c4 f4. bes4 c'8~ 
      | c'8 f'4. bes'4 f'4~ 
      | f'8 g'8~ g'8. c'16~ c'4 f'4~^\markup{\left-align \small vib} 
      | f'4 r2. 
      | \tuplet 3/2 {c8 e8 bes8} \tuplet 3/2 {c'8 f'8 bes'8} f'16 d'16 c'16 d'16 \tuplet 3/2 {c'8 bes8 f8} 
      | c4. f4. \tuplet 3/2 {bes8 d8 ges,8} 
      | \tuplet 3/2 {bes,8 f8 bes8} b16 f'16 g'16 bes'16~ bes'4 aes'8 g'8 
      | c'16 es'16 g'8 es'16 f'16 c'16 bes16 g8 es8 c16 es8 bes16 
      | g8 aes8 bes16 c'16 es'8 \tuplet 3/2 {g'8 es'8 f'8} \tuplet 3/2 {g'8 aes'8 bes'8} 
      | c''8 d''4. r2 
      | r4 r8 g8 \tuplet 3/2 {aes8 bes8 des'8} es'16 e'16 a'16 b'16 
      | des''2^\markup{\left-align \small vib} r2 
      | r8. ges'16 bes'8 aes'4 c'16 es'16 g'8 f'8~ 
      | f'8 ges'8~ ges'8. e'16 \tuplet 3/2 {d'8 des'8 b8} a8 bes8~ 
      | bes2 r2 
      | r1 
      \bar "||" r1 
      | r8. g'16~ g'4 g'4 ges'4 
      | f'4 r2. 
      | r1 
      | r4 \tuplet 3/2 {r8 des'8 es'8} f'8 des'8 \tuplet 3/2 {es'4 des'8} 
      | \tuplet 3/2 {bes4 ges8} \tuplet 3/2 {f8 e8 es8~} es8 f8 g8 bes8 
      | es'8. g'16~ g'8 es'16 f'16~ f'8 es'8 b8. g16 
      | des'8 es'16 f'16~ f'4 es'8. bes16 ges8 es8 
      \bar "||" \tuplet 3/2 {g4 bes8} d'8 f'8 es'8 f'16 g'16~ g'16 bes'8 c''16~ 
      | c''8 d''4 bes'8 a'16 bes'8 es'16~ es'8 d'8 
      | des'4.^\markup{\left-align \small vib} aes'8 e'8 des'8 b8 a8~ 
      | a8 r8 r2. 
      | r8. a16~ \tuplet 3/2 {a8 b8 des'8} e'8 a'8 ges'8 e'8 
      | \tuplet 3/2 {des'8 b8 a8} \tuplet 3/2 {ges8 f8 des8} c16 b,16 bes,8 \tuplet 3/2 {a,4 bes,8~} 
      | bes,4. r8 r2 
      | r2. bes,8 a,8~ 
      \bar "||" \mark \default a,16 c8 des16 \tuplet 3/2 {e8 a8 bes8} des'16 es'16 e'16 a'16 b'16 des''8.~ 
      | des''16 a'16 e'16 des'16~ \tuplet 5/4 {des'16 b16 a16 es16 des16} b,8 bes,8 a,4~ 
      | a,4 \tuplet 6/4 {bes,16 c8 des16 es16 g16} \tuplet 3/2 {bes8 des'8 ges'8} \tuplet 3/2 {a'8 b'8 des''8~} 
      | des''4 a'16 e'16 des'8 b16 a16 es16 des16 c8 bes,8 
      | b,4. c8 \tuplet 3/2 {des8 g8 b8} d'16 g'16 bes'16 cis''16 
      | d''4~ \tuplet 6/4 {d''8 des''16 b'16 f'16 e'16} d'8 b16 a16 f16 d16 es16 bes16~^\markup{\left-align \small vib} 
      | bes4 r2. 
      | r2. r8 g'8 
      | bes'8. aes'16~ aes'8 g'8 g''4. ges''8~^\markup{\left-align \small vib} 
      | ges''4 f''2 r4 
      | r8 bes'8 a'8 aes'8 g'4 \tuplet 3/2 {fis''8\glissando  g''4\glissando } 
      | \tuplet 3/2 {f''4 bes'8} f''2~^\markup{\left-align \small vib} f''8 r8 
      | r4 \tuplet 3/2 {es'4 g'8~} g'8 aes'8 bes'8. b'16 
      | des''4 b'16 a'8 ges'16 \tuplet 3/2 {e'8 des'4} b8 e'8~ 
      | e'8 ges'8 e'4 des'8 b8 \tuplet 3/2 {a8 ges8 e8~} 
      | e8 bes4 r8 r2 
      \bar "||" r4 \tuplet 3/2 {aes'8 a'8 bes'8~} bes'8 bes'8~ bes'8. bes16 
      | bes16 es'16 f'8 \tuplet 3/2 {g'4 g'8~} g'8 g'4 bes8 
      | c'16 d'16 es'4 es'8 es'8. es'16~ es'8 es'8 
      | es'4 f'8 g'8 f'4 es'4 
      | d''4 es''2~^\markup{\left-align \small vib} es''8 r8 
      | r4 \tuplet 3/2 {es'8 f'8 g'8} es'8 f'16 ges'16~ ges'4~ 
      | \tuplet 6/4 {ges'8 aes'8 a'16 b'16~} \tuplet 3/2 {b'8 ges'8 des'8} e'8 b16 ges16 \tuplet 3/2 {e8 aes8 bes8} 
      | r2. r8 ges'8\glissando  
      | aes'4 g'8. es'16~ es'8 f'8 g'4 
      | ges'4 \tuplet 3/2 {e'8 d'8 des'8} b4 e'4 
      | des'8 a16 ges16 e8 b8 \tuplet 3/2 {ges8 des8 e8} d8 b,8 
      | b8 e8 g16 a16 bes16 des'16~ des'16 e'16 a'16 bes'16 b'16 des''8 g'16 
      | e'8 es'8 b16 ges16 es8 aes16 a16 bes16 es'16 \tuplet 3/2 {c'8 bes8 g8~} 
      | g16 es16 f16 e16 es8 bes,4 r8 r4 
      | r1 
      | r1 
      \bar "||" r1 
      | es'8 f'16 g'16~ g'8 f'8~^\markup{\left-align \small vib} f'4. r8 
      | r1 
      | d'16 es'16 f'16 g'16~ g'8 f'4. r4 
      | r2 \tuplet 3/2 {des'8 es'8 f'8~} f'8 es'8~ 
      | es'4. r8 r2 
      | ges'8 aes'8 bes'8. es'16~ es'8 ges'8 aes'8 r8 
      | r4 b8 des'16 es'16 r2 
      \bar "||" g'8 bes'8 r4 r8 a8 es'8 f'8 
      | r2. g'8 bes'8~ 
      | bes'8 d''8~ d''8. des''16~ des''4 c''4~ 
      | c''8 b'4. aes'4 ges'4 
      | e'4. d'4 des'4 b8~ 
      | b4 aes4 ges4.. des16~^\markup{\left-align \small vib} 
      | des2 r2 
      | r2. r8 c8 
      \bar "||" \mark \default ges8 bes16 des'16~ \tuplet 3/2 {des'8 ges'8 bes'8} ges'8 des'8~ \tuplet 3/2 {des'8 bes8 es8~^\markup{\left-align \small vib}} 
      | es2 r4 r8 f'8 
      | bes'8 c''8 es'8 f'8 c'8 es'8 bes8 f8 
      | c4. r8 r2 
      | r8 c'8 f'8 bes'8 \tuplet 3/2 {c''8 c'8 bes8~} bes16 f8 c16~ 
      | c16 f8 bes,16~ bes,4 b,4 b,8 b8 
      | e4 r4 \tuplet 5/4 {e'8. ges'16 a'16~} a'8 b'8 
      | \tuplet 3/2 {des''4 des'8} b4 e'8 b8 ges8 f8 
      | aes4 aes'4 g'4 r4 
      | f'8 es'4 f'8 g'4 r4 
      | r1 
      | r1 
      | r16 aes'8 aes'16~ aes'16 g'8 g'16 f'8 f'8 es'8 es'8 
      | d'8 d'8 des'8 des'8 b8 b16 bes16~ bes8 bes8 
      | \tuplet 3/2 {aes8\glissando  a4} bes8. c'16 r2 
      | r1 
      \bar "||" es'8. g'16~ g'8 bes'8 ges8. a16 des'8 e'8 
      | c'8 d'8 e'8 g'8 f'8 g'8 a'4 
      | \tuplet 3/2 {bes'8 ges'8 des'8~} des'4 e'8 b8 ges4 
      | a8 d'8 b8 g8 a8 ges8 \tuplet 3/2 {des4 ges8} 
      | e8 ges8 aes8 bes8 e'8 ges'16 aes'16~ aes'8 c''8 
      | es''8 c''16 es''16~ \tuplet 3/2 {es''8 b'8 bes'8~} bes'8 ges'8 f'8 e'8 
      | es'8 g'16 d'16~ d'8 bes'16 aes'16~ aes'8 ges'8 es'4 
      | e'8 des'16 a16~ a8 e8 b8 ges8 c4~ 
      | c8 r8 r2. 
      | r4 r8. aes'16~ aes'8 g'4 g''8\glissando  
      | aes''4. g''8~ g''4. r8 
      | r1 
      | r8 d'8 e'8 a'16 des''16~ des''8 cis''4 d''16 des'16~ 
      | des'4 \tuplet 6/4 {bes16 aes16 f16 d8 des16~} des4 \tuplet 3/2 {c8 b,8 bes,8~} 
      | bes,4. r8 r2 
      | r2. r8. d'16\glissando  
      \bar "||" es'2. d'4 
      | des'4 b8. bes16~ bes8. ges16~ ges8 e8~ 
      | e4. r8 r2 
      | r2. r8 c'8\glissando  
      | des'2. c'4 
      | b8. aes16~ aes8. e16~ e4 es4 
      | d4. r8 r2 
      | r1 
      \bar "||" bes'4. aes'8 r4 r8 g'8 
      | r4 r8 es'8 f'8. g'16~ g'4 
      | des''8. cis''16~ cis''4 d''4 e'8. b16~ 
      | b8 ges8~ ges8. e16~ e8 des4 aes8~^\markup{\left-align \small vib} 
      | aes4. r8 r8 g8 \tuplet 3/2 {bes8 c'8 es'8~} 
      | es'16 g'16 es'16 f'16~ f'8.\glissando  ges'16~ ges'8 d'8 b8. g16 
      | bes8 r8 r8. g'16 r4 r8. f'16 
      | r2 es'8 r8 r4 
      \bar "||" \mark \default es'8 es'16 es'16~ es'8 es'8 es'8. es'16~ es'8. es'16~ 
      | es'8 f'16 g'16~ g'8 f'4. r4\bar  ".."
    }
    >>
>>    
}
