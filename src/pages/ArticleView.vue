<template>{{ article }}</template>

<script setup lang="ts">
import { ref, onMounted } from 'vue';
import { ArticlesStore } from 'src/stores/articlesStore';
import { Article } from 'src/types';

// Ui const and store
const useArticlesStore = ArticlesStore();
const article = ref({} as Article);

const props = defineProps({
  idarticle: { type: String, required: true },
});

onMounted(() => {
  article.value = useArticlesStore.getArticlesById(parseInt(props.idarticle));
});
</script>
