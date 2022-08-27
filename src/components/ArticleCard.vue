<template>
  <div class="article-card-container">
    <div>
      <router-link
        :to="{
          name: 'article',
          params: {
            idarticle: props.article.id,
          },
        }"
      >
        <img :src="props.article.pictureUrl" />
      </router-link>
    </div>
    <div class="article-head">
      {{ props.article.date }} |
      <q-chip v-for="tag in props.article.tags" :key="tag" class="tag-ship">
        {{ tag }}
      </q-chip>
    </div>
    <div class="article-card-title">
      {{ props.article.title }}
    </div>
    <div>
      {{ props.article.summary }}
    </div>
  </div>
</template>

<script setup lang="ts">
import { Article } from 'src/types';

// Props const
interface propsInterface {
  article: Article;
}

const props = defineProps<propsInterface>();
</script>
