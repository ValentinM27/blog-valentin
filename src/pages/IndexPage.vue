<template>
  <div class="index-container">
    <ArticleCard
      v-for="article in articles"
      :key="article.id"
      :article="article"
    />
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { ArticlesStore } from 'src/stores/articlesStore';

// Import des ressources
import ArticleCard from 'src/components/ArticleCard.vue';

const useArticlesStore = ArticlesStore();
const articles = ref(useArticlesStore.getArticles);

console.log(articles);
</script>
