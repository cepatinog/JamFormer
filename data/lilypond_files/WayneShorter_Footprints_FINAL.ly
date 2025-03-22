\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Footprints"
  composer = "Wayne Shorter"
  tagline = ##f
}
global =
{

    \time 6/4
    \clef "treble_8"
    \key c \minor

}
\score
{
  \midi { }

<<
    \transpose c' c'

    \new ChordNames { \chords {
      \set majorSevenSymbol = \markup { "maj7" }
      \set minorChordModifier = \markup { \char ##x2013 }

      | c1:min7 s2 | s1 s2 | s1 s2 | s1 s2 | f1:min7 s2 | s1 s2 | c1:min7 s2 | s1 s2 
      | fis2.:min5-7 f2.:13.9 | e2.:min5-7 a2.:13-.9+11+ | c1:min7 s2 | s1 s2 | s1 s2 | s1 s2 | s1 s2 | s1 s2 
      | f1:min7 s2 | s1 s2 | c1:min7 s2 | s1 s2 | fis2.:min5-7 f2.:13.9 | e2.:min5-7 a2.:13-.9+11+ | c1:min7 s2 | s1 s2 
      | s1 s2 | s1 s2 | s1 s2 | s1 s2 | f1:min7 s2 | s1 s2 | c1:min7 s2 | s1 s2 
      | fis2.:min5-7 f2.:13.9 | e2.:min5-7 a2.:13-.9+11+ | c1:min7 s2 | s1 s2 | s1 s2 | s1 s2 | s1 s2 | s1 s2 
      | f1:min7 s2 | s1 s2 | c1:min7 s2 | s1 s2 | f2.:min5-7 f2.:13.9 | e2.:min5-7 a2.:13-.9+11+ | c1:min7 s2|
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

      \tempo 4 = 136
      \set Score.currentBarNumber = #1

      \bar "||" \mark \default r4 \tuplet 3/2 {c'8 d'8 es'8} \tuplet 3/2 {f'8 g'8 a'8} \tuplet 3/2 {bes'8 c''8 g'8} bes'4. g'16 f'16 
      | es'8 f'8 c'4 r2. c'8 g8 
      | c'4. r8 r2 c'8 g8 \tuplet 3/2 {c'4 g8} 
      | b16 c'8 g16 \tuplet 3/2 {f4 g8} r1 
      | r8 aes4 bes8~ bes16 c'8 es'16~ es'8 f'8 \tuplet 3/2 {g'4 aes'8~} aes'8 bes'8 
      | \tuplet 3/2 {c''4 d''8~} d''8 d''16 es''16~ es''16 d''16 c''16 bes'16 g'4. f'8 r4 
      | r4 \tuplet 3/2 {r8 bes'8 a'8} \tuplet 6/4 {g'16 f'8. d'16 es'16~} es'8 d'8~ d'4~ d'8~ d'32 c'16 g'32~ 
      | g'16 f'16 es'16 aes16 g8. bes16 \tuplet 3/2 {c'8 es'16 r8.} r2. 
      \bar "||" b'2~ \tuplet 3/2 {b'8 b'8 a'8} b'8 d''8~ d''4. g'8 
      | \tuplet 3/2 {aes'8 bes'4~} bes'4. bes'16 g'16 \tuplet 3/2 {bes'4 es''8~} es''2~ 
      | \tuplet 6/4 {es''4 b'16 f''16~} f''2.. g''8 r4 
      | r2 \tuplet 6/4 {r4 d''16 es''16~} es''8 d''8~ \tuplet 6/4 {d''8. c''8 bes'16~} bes'16 g'16 f'16 es'16 
      \bar "||" \mark \default c'4 es'8 r8 r4 r8 c'8 es'16 f'4. es'16 
      | fis'16 g'8. \tuplet 3/2 {es'4 c'8} r2 g'16 aes'8 f'16 \tuplet 3/2 {es'8 bes8 aes8} 
      | g2 es'4 r2 r8. g16~ 
      | \tuplet 3/2 {g8 c'8 a8} d'16 a8.~ a8 es'8 \tuplet 3/2 {c'8 f'8 d'8} \tuplet 3/2 {g'8 es'8 a'8} \tuplet 3/2 {f'8 bes'8 g'8} 
      | c''8 r8 r8 aes8 g16 bes8.~ \tuplet 6/4 {bes8. aes8 g16~} \tuplet 6/4 {g16 aes16 c'16 es'16 g'8~} g'8 d'8 
      | f'4 r4 r8. es'16 \tuplet 6/4 {d'8. es'16 g'16 bes'16} cis''16 d''8.~ \tuplet 6/4 {d''8. c''16 bes'16 aes'16} 
      | g'4. bes'8~ bes'16 g'8 d'16 es'32 d'32 es'32 d'32 es'32 d'32 es'32 d'32 es'32 d'32 es'32 d'32 es'32 d'16 c'32 r4 
      | r1 r2 
      \bar "||" \tuplet 3/2 {bes8 b4~} b4. a8 b8. d'16 r4 r8 f'8~ 
      | f'8. ges'16 aes'4. b'4 des''8 \tuplet 10/8 {c''32 bes'32 a'32 g'32 ges'32 e'32 es'32 des'16 b32} \tuplet 6/4 {bes16 a16 aes16 es16 des16 c16} 
      | r4 r8 c'8 \tuplet 3/2 {es'8 f'4~} f'8 c'8 es'8 f'8 r8. c'16 
      | \tuplet 3/2 {es'8 f'8 c'8} \tuplet 3/2 {es'8 f'8 c'8} \tuplet 3/2 {es'8 f'4~} f'8 c'8 es'8 f'4 g'8 
      \bar "||" \mark \default bes'16 c''8 g'16 \tuplet 3/2 {bes'8 c''8 g'8} bes'8 c''4 es'8 f'8 g'8~ g'8. c'16~ 
      | c'16 es'16 f'8~ f'16 f'8 es'16 f'8 g'4 r8 r4 r8 g'16 a'16 
      | \tuplet 3/2 {bes'8 c''8 g'8} \tuplet 3/2 {bes'8 c''16 r8.} r8. c'16 \tuplet 3/2 {es'8 f'4~} f'8 ges'8 \tuplet 3/2 {aes'8 b'4~} 
      | b'8 e'8 g'16 a'8.~ a'8 ges'8~ ges'4. es'16 des'16 \tuplet 3/2 {bes8 aes16 r8.} 
      | r4 c'8 es'8 d'8 f'8 \tuplet 3/2 {es'8 g'4} \tuplet 3/2 {f'8 aes'8 g'8} \tuplet 3/2 {bes'8 aes'8 c''8} 
      | \tuplet 3/2 {bes'8 d''8 c''8} \tuplet 3/2 {es''8 c''8 d''8~} d''8 c''8 d''4 c''8 d''4 c''8 
      | d''2~ d''8 r8 r2. 
      | \tuplet 6/4 {r4 d''16 c''16~} c''16 bes'16 g'16 f'16 \tuplet 3/2 {es'8 d'8 c'8~} c'4 \tuplet 3/2 {bes8 g8 f8} \tuplet 3/2 {d8 c8 a,8} 
      \bar "||" r4 r8 b,8 f8 aes8 b8 d'16 e'16~ e'8 g'4 r8 
      | r8. bes'16~ bes'4~ \tuplet 3/2 {bes'8 g'8 bes'8} g'4. c''8~ c''16 g'16 ges'16 f'16~ 
      | f'2~ f'8 ges'8 \tuplet 5/4 {f'16 ges'16 f'16 g'16 f'16} \tuplet 6/4 {g'16 f'16 g'16 f'8 es'16} f'16 es'16 f'16 es'16 
      | \tuplet 3/2 {f'8 es'8 d'8} c'8 r8 r1 
      \bar "||" \mark \default c'8 c'8 es'8 f'8 r4 es'8 es'8 f'8 g'4. 
      | \tuplet 3/2 {es'4 es'8} g'8 c''8~ \tuplet 6/4 {c''8. es'16 g'16 c''16} bes'4~ bes'16. f'32 es'16 bes32 g32 r4 
      | r4 r16 c'16 es'16 g'16 \tuplet 3/2 {c''4 bes'8~} \tuplet 6/4 {bes'4 g'16 f'16~} \tuplet 6/4 {f'16 es'16 bes16 g8 f16} g4 
      | r4 aes16 ges16 a16 g16 \tuplet 7/8 {aes16 a16 bes32 b32 c'32} d'16 es'16 f'16 g'16 aes'16 g'16 fis'16 g'16 f'16 e'16 es'16 f'16 
      | es'16 f'16 g'16 bes'16 es''1~ es''16 c''16 aes'16 es'16 
      | r4 r8. es''16~ es''16 c''16 aes'16 f'16~ f'8 f''8~ f''16 d''16 bes'16 g'16 \tuplet 6/4 {f'4 es''16 g''16~} 
      | g''2. f''8 g''8 g''16 f''16 ges''16 es''16~ \tuplet 6/4 {es''4~ es''16 d''16~} 
      | d''4. c''16 bes'16 a'8 r8 \tuplet 5/4 {r8 g'16 f'16 es'16} \tuplet 3/2 {d'8 c'8 bes8~} \tuplet 6/4 {bes4 c'16 ges'16} 
      \bar "||" aes'16 b'8.~ b'8 b'4 a'8 \tuplet 3/2 {b'8 d''4~} d''8 r8 r4 
      | \tuplet 6/4 {r8 g'8. bes'16~} bes'16 g'8 bes'16~ bes'16 g'16. b'32 d''32 f''32~ f''4. es''16 c''16~ c''16 bes'16 aes'16 g'16~ 
      | \tuplet 5/4 {g'16 f'16 es'16 f'16 g'16} f'16 es'16 c'16 bes16~ bes4. d'16 es'16~ es'4. bes8 
      | d'8 c'4 r8 r2 c'8 d'8 es'8 f'8 
      | c'16 d'8.~ d'4 r1\bar  ".."
    }
    >>
>>    
}
