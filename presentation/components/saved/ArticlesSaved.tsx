import { newsFakeData } from '@/core/data/news';
import React from 'react';
import ArticleSaved from './ArticleSaved';
import { News } from '@/infraestructrure/interfaces/news.interface';

export default function ArticlesSaved() {
  return (
    <>
      {newsFakeData.map((news: News) => (
        <ArticleSaved
          key={news.id}
          id={news.id}
          content={news.content}
          imageUrl={news.imageUrl}
          publishedDate={news.publishedDate}
          title={news.title}
        />
      ))}
    </>
  );
}
