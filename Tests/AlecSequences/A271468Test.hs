module Tests.AlecSequences.A271468Test where
import Test.Hspec
import AlecSequences.A271468 (a271468)
main :: IO ()

main = hspec $ do
  describe "A271468" $ do
    it "correctly computes the first 20 elements" $ do
      take 20 (map a271468 [1..]) `shouldBe` expectedValue where
        expectedValue = [1,5,10,15,17,20,25,28,30,34,35,37,40,45,50,51,55,56,60,65]
