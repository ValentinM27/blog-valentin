<template>
  <div>
    {{ articles }}
  </div>
</template>

<script setup lang="ts">
import { ref } from 'vue';
import { ArticlesStore } from 'src/stores/articlesStore';

const useArticlesStore = ArticlesStore();
const articles = ref(useArticlesStore.getArticles);

console.log(articles);
</script>
