\version "2.13.2"

#(ly:set-option 'point-and-click #f)

\header {
  title = "Tears in Heaven"
  composer = "Joshua Redman"
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
      | s2 r2 
      | bes2 f2:/a | g2:min g2:min/f | es2:/g bes2:/f | f2. f4:7 | bes2 f2:/a | g2:min g2:min/f | es2:/g bes2:/f | f2 fis2:dim 
      | g1:min | d1:/fis | f1:min | g1:7 | c1:min | f1:sus4 | bes2 f2:/a | g2:min g2:min/f 
      | es2:/g f4:sus4 f4 | bes2 aes4:7sus4 aes4:7 | des2 c2:dim | bes2:min es2:/g | aes2 es4:/g c4 | f2:min aes2 | des2 c2:dim | bes2:min es2:/g 
      | aes2 g2:dim | f1:7 | bes2 f2:/a | g2:min g2:min/f | es2:/g f2:sus4 | f1 | bes2 f2:/a | g2:min g2:min/f 
      | es2:/g f2:sus4 | f2. fis4:dim | g1:min|
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

      \tempo 4 = 84
      \set Score.currentBarNumber = #0

      \bar "||" \mark \default r2 r8.. c'32~ c'16 d'16 es'16 f'16 
      \bar "||" \mark \default e'16 d'8.~ \tuplet 5/4 {d'8 g16 bes16 c'16~} c'16 d'16 d'16 bes16 e'16 f'16 f'16 g'16 
      | d'8 d'8~ d'8. c'16 bes16 c'16 f16 bes16 g16 d16 f32 g32 f32 d32 
      | es8 r8 r8 es'16 g'16 bes'16 c''16 d''16 es''16 d''16 c''16 bes'16 g'16 
      | \tuplet 6/4 {c''16 cis''16 d''8 bes'8~} \tuplet 10/8 {bes'32 c''8 a'16 f'32 c'32 a32~} a32 f32 es'16 d'32 bes32 g32 d32 \tuplet 6/4 {f16 d16 es16 d'16 des'16 aes16} 
      | \tuplet 7/8 {f32 c'32 a32 bes32 d'32 f'32 a'32} \tuplet 10/8 {c''16 bes'32 g'16 es'32 bes16 g32 d'32~} d'32 f'32 c'16 aes32 f32 bes32 g32~ \tuplet 10/8 {g32 es32 c16 ges16 d16 c32 bes,32~} 
      | bes,8 r8 r4 d'16\bendAfter #-4  des'32 c'32 bes32 g16.~ g8 bes8~ 
      | bes4 es'16\bendAfter #-4  d'16 des'16 g16~ g8 bes8~ \tuplet 5/4 {bes8 es'16 d'16 c'16} 
      | \tuplet 5/4 {bes16 a16 f16 a16 c'16} g16 ges16 f16 es16 d16 fis16 a16 c'16 es'16 fis'16 d'16 c'16 
      \bar "||" bes4.. d16 bes8 bes16 bes16 \tuplet 3/2 {bes8 bes8 c'8} 
      | \tuplet 10/8 {a8 a16. g16 a32~} \tuplet 3/2 {a8 a8 g8} \tuplet 3/2 {a8 a8 fis8} a8 a16 d16 
      | r4 r8. d16 \tuplet 3/2 {aes8 aes8 g8} aes8 aes16 bes16 
      | \tuplet 3/2 {g8 g8 fis8} g8 g16 f16 \tuplet 3/2 {g8 es8 g8} \tuplet 6/4 {c'8 cis'16 d'8 es'16~} 
      | es'2. \tuplet 7/8 {d'16 g'32 ges'32 des'32 c'32 bes32} 
      | c'8 a16 bes16 c'8 gis16\bendAfter #+4  a16~ a8 f16 ges16 f16 d16 es16 cis16 
      | \tuplet 6/4 {d8 bes8 a16 d16} es16 c'8.~ \tuplet 10/8 {c'8.. f16 g32~} g16 d'16 a16 bes16 
      | g'8 bes16 c'16 \tuplet 6/4 {a'16 aes'16 c'16 d'16 bes'16 a'16} d'16 g'16 d''8 a'16 c''16 bes'8~ 
      | bes'16. d''32 es''16. d''32~ d''16 bes'16 g'16 es'16~ es'32 c''32 cis''32 d''32 c''16 bes'32 b'32~ b'32 a'32 g'16 f'16 es'32 d'32~ 
      | d'16 bes16 f16 es32 d32~ \tuplet 6/4 {d16 c'16 cis'16 d'16 bes16 f16} \tuplet 10/8 {des'8 bes16 ges32 es16 c'32~} c'16 bes16 aes16 ges16 
      \bar "||" f4~ f16 e'16 f'16 f'16 es'4 des'16 c'16 bes8~ 
      | \tuplet 6/4 {bes4~ bes16 f16} des'8 des'16 bes16 \tuplet 6/4 {cis'16 d'16 es'4} bes8 bes16 f16 
      | c'4. r8 r8. g'16~ \tuplet 5/4 {g'16 bes'16 aes'16 g'16 f'16} 
      | e'16 f'16 g'16 aes'16 f'16 c'16 aes16 f16~ \tuplet 5/4 {f16 es'16 e'16 c'16 a16~} \tuplet 6/4 {a16 aes16 ges16 f16 aes16 g16} 
      | es16 des8. e'16 f'8 f'16 es'4 des'16 c'16 bes8~ 
      | bes4~ \tuplet 6/4 {bes8 des'8 bes16 d'16} es'8. cis'16 \tuplet 6/4 {d'16 es'16 des'8 bes16 c'16~} 
      | c'2. c'16 es'16 f'16 g'16 
      | gis'16 a'16 bes'16 c''16 \tuplet 6/4 {g'8. f'8 g'16\bendAfter #-4 } ges'16 f'8. g'16 bes'16 c''8 
      \bar "||" \mark \default \tuplet 3/2 {b'8\bendAfter #+4  c''8\bendAfter #+4  cis''8\bendAfter #+4 } \tuplet 3/2 {d''8 des''8 bes'8} es''16 e''16 f''8 \tuplet 6/4 {g''8. c''16 cis''16\bendAfter #+4  d''16~} 
      | d''4~ d''16. des''32 c''32 b'32 bes'32 c''32~ c''16 g'16 a'16 bes'16 \tuplet 5/4 {g'16 f'16 des'16 c'16 bes16} 
      | g8 bes4. cis''16\bendAfter #+4  d''16 es''8 d''16 c''16 bes'16 g'16 
      | c''16 d''16 es''16 c''16~ c''8~ c''32 b'32 a'32 g'32~ \tuplet 10/8 {g'32 f'16 e'16 es'16 d'16 c'32~} c'16 bes16 a16 g16 
      | \tuplet 11/8 {f16. es16 d16. f16 bes32~} bes16 d'16 bes16 g16 f'16 d'16 bes16 f16 c'16 d'16 bes16 d16 
      | g4 r4 r8 g16 bes16 \tuplet 3/2 {c'8 d'8 c'8} 
      | d'16 es'8. \tuplet 6/4 {d'16 es'8. d'16 es'16~} es'16 d'32 es'8 d'32~ d'16 c'16 bes16 g16 
      | d'16 es'16 c'8 c'2 a16 fis16 d16 c16 
      \bar "||" g4 r2.\bar  ".."
    }
    >>
>>    
}
