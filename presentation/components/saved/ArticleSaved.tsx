import { News } from "@/infraestructrure/interfaces/news.interface";
import React from "react";
import { View, Text, Image } from "react-native";

export default function ArticleSaved({ content, imageUrl, publishedDate }: News) {
  const MAX_TEXT_LENGTH = 70; // Cambia este valor según el límite deseado

  const truncatedContent =
    content.length > MAX_TEXT_LENGTH
      ? content.slice(0, MAX_TEXT_LENGTH) + "..."
      : content;

  return (
    <View className="mt-3 border-b border-b-[#ECE8EF]">
      <Text className="font-NotoSerif-light text-[#4b4b4b]">
        {new Date(publishedDate).toDateString()}
      </Text>
      <View className="py-4 flex flex-row w-full items-center">
        <Text className="w-3/4 text-lg pr-3 font-NotoSerif-light text-[#000000]">
          {truncatedContent}
        </Text>
        <Image
          source={{ uri: imageUrl }}
          className="h-20 w-20 rounded-3xl"
        />
      </View>
    </View>
  );
}
