module Tests.Tables.A107435Test where
import Test.Hspec
import Tables.A107435 (a107435)
main :: IO ()

main = hspec $
  describe "A107435" $
    it "correctly computes the first 20 elements" $
      take 20 (map a107435 [1..]) `shouldBe` expectedValue where
        expectedValue = [1,1,1,1,2,1,1,1,2,1,1,2,3,2,1,1,1,1,2,2]
