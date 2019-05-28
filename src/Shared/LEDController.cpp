#import "LEDController.hpp"
#import <Arduino.h>

namespace Project
{
    LEDController::LEDController(int Pin)
    {
        mPin = Pin;
        mIsOn = false;
    }

    void LEDController::Setup()
    {
        pinMode(mPin, WRITE);
    }

    bool LEDController::Toggle() {
        if (mIsOn) {
            TurnOff();
        } else {
            TurnOn();
        }
        return mIsOn;
    }
    
    void LEDController::TurnOn() {
        mIsOn = true;
        digitalWrite(mPin, HIGH);
    }
    
    void LEDController::TurnOff() {
        mIsOn = false;
        digitalWrite(mPin, LOW);
    }
    
    bool LEDController::IsOn() {
        return mIsOn;
    }
}