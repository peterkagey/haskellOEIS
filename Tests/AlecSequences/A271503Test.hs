module Tests.AlecSequences.A271503Test where
import Test.Hspec
import AlecSequences.A271503 (a271503)
main :: IO ()

main = hspec $
  describe "A271503" $
    it "correctly computes the first 10 elements" $
      take 10 (map a271503 [1..]) `shouldBe` expectedValue where
        expectedValue = [1,1,2,6,2,120,2,210,2,1890]
