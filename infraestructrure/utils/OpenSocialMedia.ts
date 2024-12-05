import { Alert, Linking } from "react-native";

export const openSocialMedia = async (url: string) => {
  const supported = await Linking.canOpenURL(url);

  if (supported) {
    return await Linking.openURL(url);
  } else {
    Alert.alert("Error", "No se pudo abrir el enlace");
  }
};
