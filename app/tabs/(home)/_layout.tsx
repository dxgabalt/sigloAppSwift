import { Stack } from "expo-router";
import React from "react";

export default function HomeStack() {
  return (
    <Stack
      screenOptions={{
        contentStyle: {
          backgroundColor: "white",
        },
      }}
    >
      <Stack.Screen
        name="index"
        options={{
          headerShown: false,
        }}
      />
    </Stack>
  );
}
