import { ScrollView, Text } from "react-native";
import React from "react";
import NotLogin from "@/presentation/components/saved/NotLogin";
import ArticlesSaved from "@/presentation/components/saved/ArticlesSaved";

const SavedScreen = () => {
  let IsAuth = true;

  return IsAuth ? (
    <>
      <Text className="text-2xl font-medium font-NotoSerif-medium ml-5">
        Mis articulos guardados
      </Text>
      <ScrollView className="m-5">
        <ArticlesSaved />
      </ScrollView>
    </>
  ) : (
    <NotLogin />
  );
};

export default SavedScreen;
