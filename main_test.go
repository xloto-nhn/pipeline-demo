package main

import (
    "testing"
)

func TestGreeting(t *testing.T) {
    expected := "Hello, World!"
    actual := greeting()
    
    if actual != expected {
        t.Errorf("Expected '%s', got '%s'", expected, actual)
    }
}