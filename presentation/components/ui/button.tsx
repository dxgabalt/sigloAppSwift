import React from "react";
import { Text, Pressable } from "react-native";

interface customButtonProps {
  onPress?: () => void;
  className?: string;
  text: string;
}

export default function CustomButton({
  onPress,
  className,
  text,
}: customButtonProps) {
  return (
    <Pressable
      onPress={onPress}
      className={`bg-[#000000] mt-4 px-4 py-3 rounded-xl ${className}`}
    >
      <Text className="text-white text-lg text-center w-2/3 py-1">
        {text}
      </Text>
    </Pressable>
  );
}
