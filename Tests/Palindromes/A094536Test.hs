module Tests.Palindromes.A094536Test where
import Test.Hspec
import Palindromes.A094536 (a094536)

main :: IO ()
main = hspec $
  describe "A094536" $
    it "correctly computes the first 10 elements" $
      take 10 (map a094536 [0..]) `shouldBe` expectedValue where
        expectedValue = [0,0,2,4,10,20,44,88,182,364]
