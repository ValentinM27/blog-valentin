import { defineStore } from 'pinia';
import { Article } from 'src/types';
import ArticlesData from 'src/data/articles';

export const ArticlesStore = defineStore('articles', {
  state: () => ({
    articles: ArticlesData as Article[],
  }),

  getters: {
    getArticles(state) {
      console.log('hello');
      return state.articles;
    },
    getArticlesById(state) {
      return (id: number) => {
        const index = state.articles.findIndex((a: Article) => a.id === id);

        if (index > -1) {
          return state.articles[index];
        }

        return {} as Article;
      };
    },
  },
});
