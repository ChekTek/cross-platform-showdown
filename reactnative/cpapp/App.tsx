/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 *
 * @format
 */

import {SafeAreaView, Text, useColorScheme, View} from 'react-native';

import {Colors} from 'react-native/Libraries/NewAppScreen';
import {FlatList} from 'react-native/Libraries/Lists/FlatList';
import React, {useState} from 'react';

export default function App(): JSX.Element {
  const [actions] = useState([
    {
      name: 'dog',
      key: 1,
    },
    {
      name: 'cat',
      key: 2,
    },
    {
      name: 'bear',
      key: 3,
    },
    {
      name: 'lizard',
      key: 4,
    },
    {
      name: 'snake',
      key: 5,
    },
  ]);
  const isDarkMode = useColorScheme() === 'dark';

  const backgroundStyle = {
    backgroundColor: isDarkMode ? Colors.darker : Colors.lighter,
  };

  return (
    <SafeAreaView style={backgroundStyle}>
      <View>
        <FlatList
          data={actions}
          renderItem={({item}) => <Text>{item.name}</Text>}
        />
      </View>
    </SafeAreaView>
  );
}
