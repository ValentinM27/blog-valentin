<template>
  <div class="article-container">
    <div class="article-title">{{ article.title }}</div>
    <div class="article-date">
      {{ article.date }} |
      <q-chip v-for="tag in article.tags" :key="tag" class="tag-ship">
        {{ tag }}
      </q-chip>
    </div>
    <div class="article-illustration">
      <img :src="article.pictureUrl" />
    </div>
    <div class="article-content-container">
      <div v-for="paragraph in article.paragraphs" :key="paragraph.id">
        <div class="paragraph-title" v-if="paragraph.subtitle">
          {{ paragraph.subtitle }}
        </div>
        <div class="paragraph-content">
          {{ paragraph.content }}
        </div>
      </div>
    </div>
  </div>
</template>

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
