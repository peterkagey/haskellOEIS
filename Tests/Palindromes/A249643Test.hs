module Tests.Palindromes.A249643Test where
import Test.Hspec
import Palindromes.A249643 (a249643)

main :: IO ()
main = hspec $
  describe "A249643" $
    it "correctly computes the first 10 elements" $
      take 10 (map a249643 [0..]) `shouldBe` expectedValue where
        expectedValue = [0,0,10,190,1990,20710,207910,2087110,20879110,208870390]
