namespace Project {
  class LEDController {
    public:
      LEDController(int Pin);
      void Setup();
      bool Toggle();
      void TurnOn();
      void TurnOff();
      bool IsOn();
    
    private:
      int mPin;
      bool mIsOn;
  };
}