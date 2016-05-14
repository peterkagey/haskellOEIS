module Tests.Miscellaneous.A272760Test where
import Test.Hspec
import Miscellaneous.A272760 (a272760)

main :: IO ()
main = hspec $
  describe "A272760" $
    it "correctly computes the first 30 elements" $
      take 30 (map a272760 [1..]) `shouldBe` expectedValue where
        expectedValue = [1,1,2,1,2,2,3,1,2,2,5,2,0,3,4,1,2,2,0,2,6,5,5,2,0,0,4,3,4,4]
