import Test.Hspec
import Miscellaneous.A272761 (a272761)

main :: IO ()
main = hspec $
  describe "A272761" $
    it "correctly computes the first 10 elements" $
      take 10 (map a272761 [1..]) `shouldBe` expectedValue where
        expectedValue = [23,27,37,41,46,53,54,57,69,71]
