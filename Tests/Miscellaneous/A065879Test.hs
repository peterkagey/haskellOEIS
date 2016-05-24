module Tests.Miscellaneous.A065879Test where
import Test.Hspec
import Miscellaneous.A065879 (a065879)
main :: IO ()

main = hspec $
  describe "A065879" $
    it "correctly computes the first 20 elements" $
      take 20 (map a065879 [1..]) `shouldBe` expectedValue where
        expectedValue = [1,2,6,4,10,12,21,8,18,20,55,24,0,42,60,16,34,36,0,40]